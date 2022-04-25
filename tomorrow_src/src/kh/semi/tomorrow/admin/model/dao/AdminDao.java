package kh.semi.tomorrow.admin.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import kh.semi.tomorrow.common.JdbcTemp;
import kh.semi.tomorrow.member.model.vo.MemberVo;
import kh.semi.tomorrow.order.model.vo.OrderVo;

public class AdminDao {
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public ArrayList<MemberVo> selectAllMember(Connection conn) {
		ArrayList<MemberVo> volist = null;
		String sql = "select M_ID, M_NAME, M_NICKNAME, "
				+ " M_BIRTH, M_PHONE, M_DATE from member";		

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			volist = new ArrayList<MemberVo>();
			while(rs.next()) {
				MemberVo vo = new MemberVo();
				vo.setmId(rs.getString("M_ID"));
				vo.setmName(rs.getString("M_NAME"));
				vo.setmNickname(rs.getString("M_NICKNAME"));
				vo.setmBrith(rs.getString("M_BIRTH"));
				vo.setmPhone(rs.getString("M_PHONE"));
				vo.setmDate(rs.getTimestamp("M_DATE"));
				
				volist.add(vo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(pstmt);
			JdbcTemp.close(rs);
		}
		System.out.println("AdminDao-> volist : "+ volist);
		return volist;
	}
}
