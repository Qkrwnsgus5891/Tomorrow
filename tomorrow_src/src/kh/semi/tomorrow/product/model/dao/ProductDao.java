package kh.semi.tomorrow.product.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.websocket.Session;

import org.apache.ibatis.session.RowBounds;

import kh.semi.tomorrow.cart.model.vo.CartVo;
import kh.semi.tomorrow.product.model.vo.ProductDetailVo;
import kh.semi.tomorrow.product.model.vo.ProductVo;
import kh.semi.tomorrow.storyboard.model.vo.StoryBoardVo;
import static kh.semi.tomorrow.common.JdbcUtil.getSqlSession;

import static kh.semi.tomorrow.common.JdbcTemp.*;

public class ProductDao {
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public List<ProductVo> selectAllProduct() {
		return getSqlSession().selectList("productMapper.selectAllProduct");
	}
	
	public List<ProductVo> selectAllProduct(int pNo) {
		return getSqlSession().selectList("productMapper.selectPopularProduct", pNo);
	}

	public List<ProductVo> selectAllProduct(int currentPage, int pageSize,  int pageCateId, int pNo) {

		int offset= (currentPage-1)*pageSize;
		RowBounds rowBounds = new RowBounds(offset, pageSize);
		return getSqlSession().selectList("productMapper.selectAllProduct", pageCateId, rowBounds);
	}

	public ProductVo selectProduct(int pNo) {
		return getSqlSession().selectOne("productMapper.selectProduct1",pNo);	
	}

	public int countProduct(Connection conn, int pageCateId) {
		int result = 0;
		String sql = "select count(*) cnt from (select p_no, category_id, p_content, p_name, p_brand, p_price, product_img_name "
				+ "from (select rownum r, t1.* from (select p1.* from product p1";
				
				if (pageCateId > 0) {
					sql += " where category_id=?";
				}
				sql += " order by p_no desc) t1) join product_img using (p_no))";

		try {
			
			pstmt = conn.prepareStatement(sql);
			if(pageCateId == 0) {
				System.out.println("전체상품");
			} else {
				pstmt.setInt(1, pageCateId);
			}
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		System.out.println("countProuct result: "+ result);
		return result;
	}



	
//	public ArrayList<StoryBoardVo> listStoryBoard(Connection conn, int pNo) {
//		ArrayList<StoryBoardVo> volist = null;
//		String sql = "select * from story where p_no=? order by b_no desc, b_date desc";
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, pNo);
//			rs = pstmt.executeQuery();
//
//			if (rs.next()) {
//				volist = new ArrayList<StoryBoardVo>();
//				do {
//					StoryBoardVo vo = new StoryBoardVo();
//
//					vo.setbNo(rs.getInt("B_NO"));
//					vo.setbTitle(rs.getString("B_TITLE"));
//					vo.setbContent(rs.getString("B_CONTENT"));
//					vo.setbWriter(rs.getString("B_WRITER"));
//					vo.setmId(rs.getString("M_ID"));
//					vo.setbCnt(rs.getInt("B_CNT"));
//					vo.setbDate(rs.getTimestamp("B_DATE"));
//					vo.setpNo(rs.getInt("P_NO"));
//					vo.setbNy(rs.getString("B_NY"));
//					vo.setbImgPath(rs.getString("B_IMG_PATH"));
//
//					volist.add(vo);
//				} while (rs.next());
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close(rs);
//			close(pstmt);
//		}
//		System.out.println("StoryboardDao vo : " + volist);
//
//		return volist;
//	}
	

	


}
