package kh.semi.tomorrow.member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kh.semi.tomorrow.common.JdbcTemp;
import kh.semi.tomorrow.member.model.dao.MemberDao;
import kh.semi.tomorrow.member.model.vo.MemberVo;
import kh.semi.tomorrow.product.model.vo.ProductVo;
import kh.semi.tomorrow.product.model.vo.ProductDetailVo;
import kh.semi.tomorrow.storyboard.model.vo.StoryBoardVo;


public class MemberService {
	private MemberDao dao= new MemberDao();
	
	
	//로그인
	public MemberVo login(String mId, String pw) {
		Connection conn = null;
		conn = JdbcTemp.getConnection();
		MemberVo vo = dao.login(conn, mId, pw);
		JdbcTemp.close(conn);	
		return vo;
	}
	

	//보드리스트
	public ArrayList<StoryBoardVo> myBoardList(int startNum, int endNum, String mId) {
		Connection conn = JdbcTemp.getConnection();
		ArrayList<StoryBoardVo> boardlist = dao.myBoardList(conn, startNum, endNum, mId);
		JdbcTemp.close(conn);
		return boardlist;
	}
	
	public int countMyBoard(String mId) {
		int result = 0;
		Connection conn= JdbcTemp.getConnection();
		result=dao.countMyBoard(conn, mId);
		JdbcTemp.close(conn);
		return result;
	}	

	
	//장바구니 목록
	public ArrayList<ProductVo> myProduct(String mId) {
		Connection conn = JdbcTemp.getConnection();
		ArrayList<ProductVo> ProductVo = dao.myProduct(conn, mId);
		JdbcTemp.close(conn);
		return ProductVo;
	}
	
	
	
	
}
