package kh.semi.tomorrow.cart.model.dao;

import static kh.semi.tomorrow.common.JdbcTemp.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kh.semi.tomorrow.cart.model.vo.CartVo;


public class CartDao {
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
public int Cart(Connection conn, CartVo vo) {
		

		
		int result = 0;
		
		String sql = "insert into board () "
				+ " values (  )";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
//			pstmt.setString(1, vo.get());
//			pstmt.setString(2, vo.get());
//			pstmt.setString(3, vo.get());


			result = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}		
		
		return result;
	}
}