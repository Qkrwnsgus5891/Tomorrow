package kh.semi.tomorrow.cart.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kh.semi.tomorrow.cart.model.dao.CartDao;
import kh.semi.tomorrow.cart.model.vo.CartVo;
import kh.semi.tomorrow.common.JdbcTemp;


import static kh.semi.tomorrow.common.JdbcTemp.*;

public class CartService {
	private CartDao dao = null;
	
	public CartService() {
		dao = new CartDao();
	}
	
	public ArrayList<CartVo> myCart(String mId) {
		Connection conn = JdbcTemp.getConnection();
		ArrayList<CartVo> cartVo = dao.myCart(conn, mId);
		JdbcTemp.close(conn);
		return cartVo;
	}
	
	public int myCartList(CartVo vo) {
		Connection conn = JdbcTemp.getConnection();
		int result = dao.insertmyCart(conn, vo);
		JdbcTemp.close(conn);
		return result;
	}
	
	

}
