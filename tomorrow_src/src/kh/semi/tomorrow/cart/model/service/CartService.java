package kh.semi.tomorrow.cart.model.service;

import java.sql.Connection;

import kh.semi.tomorrow.cart.model.dao.CartDao;
import kh.semi.tomorrow.cart.model.vo.CartVo;


import static kh.semi.tomorrow.common.JdbcTemp.*;

public class CartService {
	public int order(CartVo vo) {


		int result = 0;
		Connection conn = getConnection();
		result = new CartDao().Cart(conn, vo);
		
		close(conn);
		return result;
	}
}
