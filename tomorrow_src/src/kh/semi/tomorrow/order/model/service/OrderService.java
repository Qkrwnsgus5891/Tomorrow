package kh.semi.tomorrow.order.model.service;

import java.sql.Connection;

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
}
