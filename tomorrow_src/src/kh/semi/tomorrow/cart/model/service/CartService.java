package kh.semi.tomorrow.cart.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kh.semi.tomorrow.cart.model.dao.CartDao;
import kh.semi.tomorrow.cart.model.vo.CartVo;
import kh.semi.tomorrow.common.JdbcTemp;


import static kh.semi.tomorrow.common.JdbcTemp.*;

public class CartService {
	private CartDao dao = new CartDao();
	
	public ArrayList<CartVo> myCart(String mId) {
		Connection conn = JdbcTemp.getConnection();
		ArrayList<CartVo> cartVo = dao.myCart(conn, mId);
		JdbcTemp.close(conn);
		return cartVo;
	}
	
	public int insertmyCart(String mId, int pNo, String option1) {
		Connection conn = JdbcTemp.getConnection();
		
		int cnt = dao.checkCntCart(conn, mId, pNo);
		int result = 0;
		if(cnt == 0)
			result = dao.insertmyCart(conn, mId, pNo, option1);
		else 
			result = dao.updatemyCart(conn, mId, pNo, ++cnt, option1);
		
		
		
		JdbcTemp.close(conn);
		return result;
	}
	
	

}
