package kh.semi.tomorrow.member.model.service;

import java.sql.Connection;

import kh.semi.tomorrow.common.JdbcTemp;
import kh.semi.tomorrow.member.model.dao.MemberDao;
import kh.semi.tomorrow.member.model.vo.MemberVo;


public class MemberService {
	private MemberDao dao= new MemberDao();
	
	public MemberVo login(String mId, String pw) {
		Connection conn = null;
		conn = JdbcTemp.getConnection();
		MemberVo vo = dao.login(conn, mId, pw);
		JdbcTemp.close(conn);	
		return vo;
	}
	
	
	
}
