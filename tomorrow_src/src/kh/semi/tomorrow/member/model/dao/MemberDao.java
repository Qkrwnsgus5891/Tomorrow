package kh.semi.tomorrow.member.model.dao;

import static kh.semi.tomorrow.common.JdbcTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kh.semi.tomorrow.common.JdbcTemp;
import kh.semi.tomorrow.member.model.vo.MemberVo;
import kh.semi.tomorrow.product.model.vo.ProductDetailVo;
import kh.semi.tomorrow.product.model.vo.ProductVo;
import kh.semi.tomorrow.storyboard.model.vo.StoryBoardVo;



public class MemberDao {
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	
	//로그인
	public MemberVo login(Connection conn, String mId, String mPw) { 
		MemberVo vo= null;
		String sql = "select * from member where m_id= ? and m_pw=?";
		
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			pstmt.setString(2, mPw);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				vo = new MemberVo(
					rs.getString("M_ID"),
					rs.getString("M_PW"),
					rs.getString("M_NAME"),
					rs.getString("M_NICKNAME"),
					rs.getString("M_PHONE"),
					rs.getInt("M_GRADE"),
					rs.getString("M_NY"),
					rs.getTimestamp("M_DATE"),
					rs.getString("M_BIRTH"),
					rs.getString("M_INTRO")
				);	
			}							
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}			
		return vo;
	}
	
	

	
	
	//내가쓴 게시글 조회
	public ArrayList<StoryBoardVo> myBoardList(Connection conn, int startNum, int endNum, String mId) {
		ArrayList<StoryBoardVo> boardlist = null;
		
		String sql = "select *"
				+ "    from (select rownum r, t1.*"
				+ "            from (select s1.b_no, s1.b_title, s1.b_date, s1.b_cnt"
				+ "                    from story s1 where m_Id=?  order by b_date desc, b_no desc) t1"
				+ "    		)"
				+ "	where r between ? and ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			pstmt.setInt(2, startNum);
			pstmt.setInt(3, endNum);			
			rs = pstmt.executeQuery();
			
			boardlist = new ArrayList<StoryBoardVo>();
			
			while(rs.next()) {
				StoryBoardVo vo = new StoryBoardVo();
				vo.setbNo(rs.getInt("b_no"));
				vo.setbTitle(rs.getString("b_title"));
				vo.setbDate(rs.getTimestamp("b_date"));
				vo.setbCnt(rs.getInt("b_cnt"));
				
				boardlist.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}
		
		if(boardlist == null) {
			System.out.println(boardlist);
		} else {
			System.out.println(boardlist);		
		}		
		return boardlist;
	}
	
	
	
	public int countMyBoard(Connection conn, String mId) {
		int result = 0;
		String sql = "select count(*) from story";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			if(rs.next()) {					
				result= rs.getInt(1);			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}
		
		if(result == 0) {
			System.out.println("게시글이 없습니다.");
		} else {
			System.out.println(result);
		}
		return result;
	}
	
	//구매목록보기
	public ArrayList<ProductVo> myProduct(Connection conn, String mId) {
		ArrayList<ProductVo> productVo = null;
		
		String sql = "select p_no,p_name,p_brand,p_price,cate_id,"
				+ "cate_name,opt_no,opt_val,opt_price,p_seq "
				+ "from (select * from orders where m_id=?) t1 "
				+ "join order_detail t2 using(o_no) "
				+ "join product t3 using (p_no);";
	

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);			
			rs = pstmt.executeQuery();
			
			productVo = new ArrayList<ProductVo>();
		
			while(rs.next()) {
				ProductVo vo = new ProductVo();
				vo.setpNo(rs.getInt("p_no"));
				vo.setpName(rs.getString("p_name"));
				vo.setpBrand(rs.getString("p_brand"));
				vo.setpPrice(rs.getInt("p_price"));
				vo.setCateId(rs.getInt("cate_id"));
				vo.setCateName(rs.getString("cate_name"));
				vo.setOptNo(rs.getInt("opt_no"));
				vo.setOptVal(rs.getString("opt_val"));
				vo.setOptPrice(rs.getInt("opt_price"));
				vo.setpSeq(rs.getInt("p_seq"));
		
				productVo.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}
				
		return productVo;
	}

	

	//회원정보
	public MemberVo myName(Connection conn, String mId) {
		MemberVo vo= null;
		String sql = "select * from member where m_Id = ?";
		
			try {
				pstmt= conn.prepareStatement(sql);
				pstmt.setString(1, mId);
				rs = pstmt.executeQuery();

				if(rs.next()) {
					vo = new MemberVo(
						rs.getString("M_ID"),
						rs.getString("M_PW"),
						rs.getString("M_NAME"),
						rs.getString("M_NICKNAME"),
						rs.getString("M_PHONE"),
						rs.getInt("M_GRADE"),
						rs.getString("M_NY"),
						rs.getTimestamp("M_DATE"),
						rs.getString("M_BIRTH"),
						rs.getString("M_INTRO")
					);	
				}					
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}

		return vo;
	}
	
	
	
	//회원탈퇴
	public int deleteAccount(Connection conn, String mId) {
		int result = 0;
		String sql = "update member set m_ny= 'Y' where m_id =? "; 
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(pstmt);
		}
		
		System.out.println("탈퇴되었습니다.");
		return result;
	}
	
	
	
	
}
