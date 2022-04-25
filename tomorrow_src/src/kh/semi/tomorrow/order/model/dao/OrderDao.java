package kh.semi.tomorrow.order.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import kh.semi.tomorrow.order.model.vo.OrderVo;
import static kh.semi.tomorrow.common.JdbcTemp.close;

public class OrderDao {
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;


	public int order(Connection conn, OrderVo vo) {
		
//		private int oNo;
//		private String mId;
//		private int pSeq;
//		private int pCnt;
//		private int pPrice;
//		private Timestamp oDate;
//		private int oTotalPrice;
		
//		private String oName;
//		private String eMail;
//		private String oPhone;
		
//		private String reName;
//		private String reAddress;
//		private String rePhone;
//		private String optVal;
		
		int result = 0;
		
		String sql = "insert into board () "
				+ " values (  )";
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.get());
			pstmt.setString(2, vo.get());
			pstmt.setString(3, vo.get());
			pstmt.setString(4, vo.get());
			pstmt.setString(5, vo.get());
			pstmt.setString(6, vo.get());
			pstmt.setString(7, vo.get());
			pstmt.setString(8, vo.get());
			pstmt.setString(9, vo.get());
			pstmt.setString(10, vo.get());
			pstmt.setString(11, vo.get());

			result = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}		
		
		return result;
	}
}
