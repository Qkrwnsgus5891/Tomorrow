package kh.semi.tomorrow.product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kh.semi.tomorrow.product.model.dao.ProductDao;
import kh.semi.tomorrow.product.model.vo.ProductVo;

import static kh.semi.tomorrow.common.JdbcTemp.*;

public class ProductService {
	private ProductDao dao = null;
	
	public ProductService() {
		dao=new ProductDao();
	}
	
	public ArrayList<ProductVo> selectAllProduct(){
		Connection conn=null;
		conn = getConnection();
		ArrayList<ProductVo> result = dao.selectAllProduct(conn);
		close(conn);
		return result;
	}
	

	public ArrayList<ProductVo> selectAllProduct(int startRnum, int endRnum, int cateId){
		Connection conn=null;
		conn = getConnection();
		ArrayList<ProductVo> result = dao.selectAllProduct(conn, startRnum, endRnum, cateId);
		close(conn);
		return result;
	}
	
	public int countProduct() {
		Connection conn=null;
		conn = getConnection();
		int result = dao.countProduct(conn);
		close(conn);
		return result;
	}
	
	public ProductVo selectProduct(int pNo) {
		Connection conn=null;
		conn = getConnection();
		ProductVo result = dao.selectProduct(conn, pNo);
		close(conn);
		return result;
	}
	

}
