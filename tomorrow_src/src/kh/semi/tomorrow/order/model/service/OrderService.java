package kh.semi.tomorrow.order.model.service;

import java.sql.Connection;
import java.sql.Timestamp;
import java.util.ArrayList;

import kh.semi.tomorrow.common.JdbcTemp;
import kh.semi.tomorrow.order.model.dao.OrderDao;
import kh.semi.tomorrow.order.model.vo.OrderVo;
import static kh.semi.tomorrow.common.JdbcTemp.*;

public class OrderService {

	//구매 목록
	public ArrayList<OrderVo> myOrder(String mId) {
		Connection conn = JdbcTemp.getConnection();
		ArrayList<OrderVo> orderVoList = new OrderDao().myOrder(conn, mId);
		JdbcTemp.close(conn);
		return orderVoList;
	}
	//구매 목록2
	public ArrayList<OrderVo> myOrder2(String mId) {
		Connection conn = JdbcTemp.getConnection();
		ArrayList<OrderVo> orderVoList = new OrderDao().myOrder2(conn, mId);
		JdbcTemp.close(conn);
		return orderVoList;
	}
	
	//구매하기
	public int orderfianl (String mId, Timestamp date,String name,String email,String phone ,String reciever,String recAddress,String recPhone,int priceStr2) {
		Connection conn = JdbcTemp.getConnection();
		int result = 0;
		result = new OrderDao().OrderFianl(conn, mId, date, name,email,phone,reciever,recAddress,recPhone,priceStr2);
		JdbcTemp.close(conn);
		return result;
	
	}
}
