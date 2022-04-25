package kh.semi.tomorrow.admin.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kh.semi.tomorrow.admin.model.dao.AdminDao;
import kh.semi.tomorrow.common.JdbcTemp;
import kh.semi.tomorrow.member.model.vo.MemberVo;

public class AdminService {
	private AdminDao dao = null;
	
	public ArrayList<MemberVo> selectAllMember() {
		Connection conn = JdbcTemp.getConnection();
		ArrayList<MemberVo> volist = dao.selectAllMember(conn);
		JdbcTemp.close(conn);
		return volist;
	}
	
	
	
}
