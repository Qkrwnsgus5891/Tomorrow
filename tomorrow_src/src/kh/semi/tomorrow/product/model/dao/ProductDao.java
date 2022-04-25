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
	
	
	public ArrayList<ProductVo> selectAllProduct(Connection conn) {
		ArrayList<ProductVo> volist = null;
		String sql = "select p_content, p_name, p_brand, p_price from product order by p_no desc";
		
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
					vo.setpPrice(rs.getInt("p_price"));
		
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
	
	public ArrayList<ProductVo> selectAllProduct(Connection conn, int startRnum, int endRnum){
		ArrayList<ProductVo> volist = null;
		
		String sql ="select p_content, p_name, p_brand, p_price from "
				+ "(select rownum r, t1.* from (select p1.* from product p1 order by p_no desc) t1) "
				+ "where r between ? and ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRnum);
			pstmt.setInt(2, endRnum);
			rs = pstmt.executeQuery();
			
			if(rs!=null) {
				volist=new ArrayList<ProductVo>();
				while(rs.next()) {
					ProductVo vo = new ProductVo();
					vo.setpContent(rs.getString("p_content"));
					vo.setpName(rs.getString("p_name"));
					vo.setpBrand(rs.getString("p_brand"));
					vo.setpPrice(rs.getInt("p_price"));
					
					volist.add(vo);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return volist;
	}
	
	public int countProduct(Connection conn) {
		int result=0;
		String sql = "select count(*) cnt from product";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
	}
	
//	public ProductVo selectProduct(Connection conn, int pNo) {
//		ProductVo vo = null;
//		
//		return vo;
//	}

}
