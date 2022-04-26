package kh.semi.tomorrow.storyboard.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import static kh.semi.tomorrow.common.JdbcTemp.close;

import kh.semi.tomorrow.storyboard.model.vo.StoryBoardVo;

public class StoryboardDao {
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

//		B_NO      NOT NULL NUMBER         
//		B_TITLE   NOT NULL VARCHAR2(50)   
//		B_CONTENT NOT NULL VARCHAR2(3000) 
//		B_WRITER  NOT NULL VARCHAR2(20)   
//		M_ID      NOT NULL VARCHAR2(20)   
//		B_CNT     NOT NULL NUMBER         
//		B_DATE    NOT NULL TIMESTAMP(6)   
//		P_NO      NOT NULL NUMBER         
//		B_NY      NOT NULL VARCHAR2(1)  
	
	public int writeStoryBoard(Connection conn, StoryBoardVo vo) {
		System.out.println("StoryboardDao vo : " + vo);
		int result = 0;
		
		String sql = "INSERT INTO story VALUES (SEQUENCE_STORY_B_NO.nextval, ?, ?, (SELECT m_nickname FROM member WHERE m_id = ?), ?, default, default, ?, default)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getbTitle());
			pstmt.setString(2, vo.getbContent());
			pstmt.setString(3, vo.getmId());
			pstmt.setString(4, vo.getmId());
			pstmt.setInt(5, vo.getpNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		System.out.println("StoryboardDao vo : " + result);
		
		return result;
	}
	
	public int updateStoryBoard(Connection conn, StoryBoardVo vo) {
		System.out.println("StoryboardDao vo : " + vo);
		int result = 0;
		
		String sql = "";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		System.out.println("StoryboardDao vo : " + result);
		
		return result;
	}

	public ArrayList<StoryBoardVo> listStoryBoard(Connection conn) {
		ArrayList<StoryBoardVo> volist = null;
		String sql = "SELECT * FROM story ORDER BY b_date DESC, b_no DESC";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				volist = new ArrayList<StoryBoardVo>();
				do {
					StoryBoardVo vo = new StoryBoardVo();

//					B_NO      NOT NULL NUMBER         
//					B_TITLE   NOT NULL VARCHAR2(50)   
//					B_CONTENT NOT NULL VARCHAR2(3000) 
//					B_WRITER  NOT NULL VARCHAR2(20)   
//					M_ID      NOT NULL VARCHAR2(20)   
//					B_CNT     NOT NULL NUMBER         
//					B_DATE    NOT NULL TIMESTAMP(6)   
//					P_NO      NOT NULL NUMBER         
//					B_NY      NOT NULL VARCHAR2(1)  
					vo.setbNo(rs.getInt("B_NO"));
					vo.setbTitle(rs.getString("B_TITLE"));
					vo.setbContent(rs.getString("B_CONTENT"));
					vo.setbWriter(rs.getString("B_WRITER"));
					vo.setmId(rs.getString("M_ID"));
					vo.setbCnt(rs.getInt("B_CNT"));
					vo.setbDate(rs.getTimestamp("B_DATE"));
					vo.setpNo(rs.getInt("P_NO"));
					vo.setbNy(rs.getString("B_NY"));

					volist.add(vo);
				} while (rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		System.out.println("StoryboardDao vo : " + volist);

		return volist;
	}
	
	public int countStoryboard(Connection conn) {
		int result = 0;
		String sql = "SELECT count(*) cnt FROM story";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
	}
}
