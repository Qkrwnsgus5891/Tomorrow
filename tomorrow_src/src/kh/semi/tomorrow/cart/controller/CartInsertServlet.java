package kh.semi.tomorrow.cart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.tomorrow.product.model.service.ProductService;
import kh.semi.tomorrow.product.model.vo.ProductVo;

/**
 * Servlet implementation class CartInsertServlet
 */
@WebServlet("/cart/enroll")
public class CartInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pNoStr = request.getParameter("p_no");
		int pNo = 0;
		try {
			pNo = Integer.parseInt(pNoStr);
		}catch(NumberFormatException e) {
			e.printStackTrace();
		}
		
		if(pNo < 1 ) {
			return;
		} else {
			
		ProductVo result = new ProductService().selectProduct(pNo);
		System.out.println(result);
		
		request.setAttribute("selectProduct", result);
		
		request.getRequestDispatcher("WEB-INF/view/orderpage/cartList.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
