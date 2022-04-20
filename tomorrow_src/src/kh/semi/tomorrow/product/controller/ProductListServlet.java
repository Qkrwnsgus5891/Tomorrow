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
@WebServlet("/funiture")
public class ProductListServlet extends HttpServlet {
	private ProductService service = new ProductService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/view/product/productList.jsp").forward(request, response);

//		int currentPage = 1;
//
//		String currentPageStr = request.getParameter("page");
//		try {
//			if (currentPageStr != null && !currentPageStr.equals(""))
//				currentPage = Integer.parseInt(currentPageStr);
//		} catch (NumberFormatException e) {
//			e.printStackTrace();
//		}

//		final int pageSize = 9; // ���������� ������ ��
//		final int pageBlock = 3; // ����¡�� ��Ÿ�� ��������
//		int startPage = 0;
//		int endPage = 0;
//		int startRnum = 0;
//		int entRnum = 0;
//
//		int totalCnt = 0; // �� �� ��
//		totalCnt = countBoard();
//
//		System.out.println("��" + totalCnt);
//		
//		
//		int totalPageCnt = (totalCnt / pageSize) + (totalCnt % pageSize == 0 ? 0 : 1);
//		if (currentPage % pageBlock == 0) {
//			startPage = ((currentPage / pageBlock) - 1) * pageBlock + 1;
//		} else {
//			startPage = (currentPage / pageBlock) * pageBlock + 1;
//		}
//		endPage = startPage + pageBlock - 1;
//		if (endPage > totalPageCnt) {
//			endPage = totalPageCnt;
//		}
//		System.out.println("page:" + startPage + "~" + endPage);
//
//
//		startRnum = (currentPage - 1) * pageSize + 1;
//		entRnum = startRnum + pageSize - 1;
//		if (entRnum > totalCnt) {
//			entRnum = totalCnt;
//		}
//		System.out.println("rnum:" + startRnum + "~" + entRnum);
//
//		ArrayList<ProductVo> result = service.productList(startRnum, entRnum);
//		System.out.println(result);

//		request.setAttribute("productList", result);
//		request.setAttribute("startPage", startPage);
//		request.setAttribute("endPage", endPage);
//		request.setAttribute("currentPage", currentPage);
//		request.setAttribute("totalPageCnt", totalPageCnt);

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
