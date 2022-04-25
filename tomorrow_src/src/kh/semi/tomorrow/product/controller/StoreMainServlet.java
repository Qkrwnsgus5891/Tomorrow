package kh.semi.tomorrow.product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.tomorrow.product.model.service.ProductService;
import kh.semi.tomorrow.product.model.vo.ProductVo;


/**
 * Servlet implementation class ProductListServlet
 */
@WebServlet("/store")
public class StoreMainServlet extends HttpServlet {
	private ProductService service = new ProductService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StoreMainServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/view/product/store.jsp").forward(request, response);


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
//	
//	private int countBoard() {
//		int result = service.countBoard();
//		return result;
//	}

}
