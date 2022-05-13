package kh.semi.tomorrow.order.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kh.semi.tomorrow.common.JdbcTemp;
import kh.semi.tomorrow.order.model.dao.OrderDao;
import kh.semi.tomorrow.order.model.vo.OrderVo;
import static kh.semi.tomorrow.common.JdbcTemp.*;

public class OrderService {
	public int order(OrderVo vo) {

		int result = 0;
		Connection conn = getConnection();
		result = new OrderDao().order(conn, vo);
		
		close(conn);
		return result;
	}
	
	//구매 목록
	public ArrayList<OrderVo> myOrder(String mId) {
		Connection conn = JdbcTemp.getConnection();
		ArrayList<OrderVo> orderVoList = new OrderDao().myOrder(conn, mId);
		JdbcTemp.close(conn);
		return orderVoList;
	}
}
