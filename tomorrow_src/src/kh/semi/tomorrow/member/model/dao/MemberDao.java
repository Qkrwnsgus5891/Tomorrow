package kh.semi.tomorrow.member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

import kh.semi.tomorrow.common.JdbcTemp;
import kh.semi.tomorrow.member.model.vo.MemberVo;



public class MemberDao {
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public MemberVo login(Connection conn, String mId, String mPw) { // select문의 단일 행 결과값 반환
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
	
	
	
	
	
	
	
	
	
	
}
