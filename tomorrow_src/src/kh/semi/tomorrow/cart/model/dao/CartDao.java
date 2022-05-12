package kh.semi.tomorrow.cart.model.dao;

import static kh.semi.tomorrow.common.JdbcTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import kh.semi.tomorrow.cart.model.vo.CartVo;
import kh.semi.tomorrow.common.JdbcTemp;
import kh.semi.tomorrow.storyboard.model.vo.StoryBoardVo;

public class CartDao {
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private Statement stmt = null;

	// 장바구니 넣기
	public int insertmyCart(Connection conn, CartVo vo) {
			
			int result = 0;
			String sql = "insert into cart values ?, ?, ?, ?, ?, ?";
		
			try {
				pstmt = conn.prepareStatement(sql);			
				rs = pstmt.executeQuery();
			
		
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, vo.getcNo());
				pstmt.setString(2, vo.getmId());
				pstmt.setInt(3, vo.getpNo());
				pstmt.setString(4, vo.getpSeq());
				pstmt.setString(5, vo.getcNy());
				
				result = pstmt.executeUpdate();
					
			
				}catch (SQLException e) {
					e.printStackTrace();
				} finally {
					JdbcTemp.close(rs);
					JdbcTemp.close(pstmt);
				}

				return result;
			}
			
	// 장바구니 목록보기
	public ArrayList<CartVo> myCart(Connection conn, String mId) {
		ArrayList<CartVo> cartVoList = null;

		String sql = "select c_no,m_id,p_no,p_seq,c_cnt,c_ny from cart where m_id = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			rs = pstmt.executeQuery();

			cartVoList = new ArrayList<CartVo>();

			while (rs.next()) {
				CartVo vo = new CartVo();

				vo.setcNo(rs.getInt("c_no"));
				vo.setmId(rs.getString("m_id"));
				vo.setpNo(rs.getInt("p_no"));
				vo.setpSeq(rs.getString("p_seq"));
				vo.setcCnt(rs.getInt("c_cnt"));
				vo.setcNy(rs.getString("c_ny"));

				cartVoList.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}

		return cartVoList;
	}
}
