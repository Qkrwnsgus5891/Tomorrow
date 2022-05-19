package kh.semi.tomorrow.order.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import kh.semi.tomorrow.cart.model.dao.CartDao;
import kh.semi.tomorrow.common.JdbcTemp;
import kh.semi.tomorrow.order.model.dao.OrderDao;
import kh.semi.tomorrow.order.model.vo.OrderVo;
import static kh.semi.tomorrow.common.JdbcTemp.*;

public class OrderService {
	private OrderDao dao = new OrderDao();
	/*
	 * //구매 목록 public ArrayList<OrderVo> myOrder(String mId) { ArrayList<OrderVo>
	 * orderVoList = new OrderDao().myOrder(conn, mId); return orderVoList; }
	 */
	//구매 목록2
	public List<OrderVo> myOrder2(String mId) {
		List<OrderVo> orderVoList = dao.myOrder2(mId);
		return orderVoList;
	}
}
