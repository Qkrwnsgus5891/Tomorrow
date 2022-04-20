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
	
	public ArrayList<ProductVo> productList(){
		Connection conn = null;
		conn = getConnection();
		ArrayList<ProductVo> result = dao.productList(conn);
		close(conn);
		return result;
	}
//	public ArrayList<ProductVo> productList(int startRnum, int endRnum){
//		Connection conn=null;
//		conn = getConnection();
//		ArrayList<ProductVo> result = dao.productList(conn, startRnum, endRnum);
//		close(conn);
//		return result;
//	}

}
