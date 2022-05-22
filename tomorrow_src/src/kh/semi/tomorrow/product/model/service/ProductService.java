package kh.semi.tomorrow.product.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import kh.semi.tomorrow.product.model.dao.ProductDao;
import kh.semi.tomorrow.product.model.vo.ProductVo;
import kh.semi.tomorrow.storyboard.model.vo.StoryBoardVo;

import static kh.semi.tomorrow.common.JdbcTemp.*;

public class ProductService {
	private ProductDao dao = new ProductDao();
	
	public List<ProductVo> selectAllProduct() {
		List<ProductVo> productVo = dao.selectAllProduct();
		return productVo;
	}
	
	public List<ProductVo> selectAllProduct(int pNo){
		List<ProductVo> productVo = dao.selectAllProduct(pNo);
		return productVo;
	}
	

	public List<ProductVo> selectAllProduct(int currentPage, int pageSize,  int pageCateId, int pNo){
		List<ProductVo> result = dao.selectAllProduct(currentPage, pageSize, pageCateId, pNo);
		return result;
	}
	
	public ProductVo selectProduct(int pNo) {
		ProductVo result = dao.selectProduct(pNo);
		return result;
	}
	
	
	public int countProduct(int pageCateId) {
		Connection conn=null;
		conn = getConnection();
		int result = dao.countProduct(conn, pageCateId);
		close(conn);
		return result;
	}



	
	
//	public ArrayList<StoryBoardVo> listStoryBoard(int pNo) {
//		Connection conn = null;
//		ArrayList<StoryBoardVo> result = null;
//		
//		conn = getConnection();
//		result = dao.listStoryBoard(conn, pNo);
//		
//		close(conn);
//		
//		return result;
//	}
	

	

}
