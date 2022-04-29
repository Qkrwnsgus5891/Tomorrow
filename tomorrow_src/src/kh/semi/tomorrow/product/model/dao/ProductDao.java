package kh.semi.tomorrow.product.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kh.semi.tomorrow.product.model.vo.ProductDetailVo;
import kh.semi.tomorrow.product.model.vo.ProductVo;

import static kh.semi.tomorrow.common.JdbcTemp.*;

public class ProductDao {
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public ArrayList<ProductVo> selectAllProduct(Connection conn) {
		ArrayList<ProductVo> volist = null;
		String sql = "select p_content, p_name, p_brand, p_price from product order by p_no desc";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				volist = new ArrayList<ProductVo>();
				do {
					ProductVo vo = new ProductVo();
					vo.setpContent(rs.getString("pContent"));
					vo.setpName(rs.getString("p_name"));
					vo.setpBrand(rs.getString("p_brand"));
					vo.setpPrice(rs.getInt("p_price"));

					volist.add(vo);

				} while (rs.next());

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return volist;
	}

	public ArrayList<ProductVo> selectAllProduct(Connection conn, int startRnum, int endRnum, int cateId, int pNo) {
		ArrayList<ProductVo> volist = null;

		String sql = "select p_no, category_id, p_content, p_name, p_brand, p_price from "
				+ " (select rownum r, t1.* from (select p1.* from product p1 ";
		if (cateId > 0) {
			sql += " where category_id=?";
		}
		sql += " order by p_no desc) t1) " + " where r between ? and ?";

		try {
			pstmt = conn.prepareStatement(sql);
			if (cateId > 0) {
				pstmt.setInt(2, startRnum);
				pstmt.setInt(3, endRnum);
				pstmt.setInt(1, cateId);
			} else {
				pstmt.setInt(1, startRnum);
				pstmt.setInt(2, endRnum);
			}

			rs = pstmt.executeQuery();

			if (rs != null) {
				volist = new ArrayList<ProductVo>();
				while (rs.next()) {
					ProductVo vo = new ProductVo();
					vo.setpContent(rs.getString("p_content"));
					vo.setpName(rs.getString("p_name"));
					vo.setpBrand(rs.getString("p_brand"));
					vo.setpPrice(rs.getInt("p_price"));
					vo.setCateId(rs.getInt("category_id"));
					vo.setpNo(rs.getInt("p_no"));
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
		int result = 0;
		String sql = "select count(*) cnt from product";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
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

	public ProductVo selectProduct(Connection conn, int pNo) {
		ProductVo vo = null;
		ArrayList<ProductDetailVo> pdvolist = null;
		String sql1 = "select p_no, p_content, p_name, p_brand, p_price from product where p_no=?";
		String sql2 = "select opt_no, opt_name, opt_val,opt_price from product_detail join option_parent using(opt_no) where p_no=?";
		
		try {
			pstmt = conn.prepareStatement(sql1);
			pstmt.setInt(1, pNo);
			rs = pstmt.executeQuery();
			vo = new ProductVo();
			
			if(rs.next()) {
				vo.setpContent(rs.getString("p_content"));
				vo.setpName(rs.getString("p_name"));
				vo.setpBrand(rs.getString("p_brand"));
				vo.setpPrice(rs.getInt("p_price"));
				
				close(rs);
				close(pstmt);
				pstmt = conn.prepareStatement(sql2);
				pstmt.setInt(1, pNo);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					pdvolist = new ArrayList<ProductDetailVo>();
					
					do {
						ProductDetailVo pdvo = new ProductDetailVo();
						pdvo.setOptNo(rs.getInt("opt_no"));
						pdvo.setOptName(rs.getString("opt_name"));
						pdvo.setOptPrice(rs.getInt("opt_price"));
						pdvo.setOptVal(rs.getString("opt_val"));
						pdvolist.add(pdvo);
					}while(rs.next());
					vo.setPdvo(pdvolist);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return vo;
		
		
	}

}
