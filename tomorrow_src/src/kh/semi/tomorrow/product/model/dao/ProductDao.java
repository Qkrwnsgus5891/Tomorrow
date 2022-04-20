package kh.semi.tomorrow.product.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import kh.semi.tomorrow.product.model.vo.ProductVo;
import static kh.semi.tomorrow.common.JdbcTemp.*;


public class ProductDao {
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public ArrayList<ProductVo> productList(Connection conn) {
		ArrayList<ProductVo> volist = null;
		String sql = "select i.product_img_name, p.p_brand, p.p_name, p.p_price from product p join product_img i using (p_no)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				volist=new ArrayList<ProductVo>();
				do {
					ProductVo vo = new ProductVo();
					vo.setpContent(rs.getString("pContent"));
					vo.setpName(rs.getString("p_name"));
					vo.setpBrand(rs.getString("p_brand"));
		
					volist.add(vo);
					
				}while(rs.next());
				
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return volist;
	}

}
