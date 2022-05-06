package kh.semi.tomorrow.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.tomorrow.admin.model.service.AdminService;
import kh.semi.tomorrow.product.model.vo.ProductVo;

/**
 * Servlet implementation class AdProductSearchServlet
 */
@WebServlet("/adPdSearch.aj")
public class AdProductSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdProductSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AdProductSearchServlet - doGet");
		PrintWriter out = response.getWriter();
		String pNo_param = request.getParameter("pNo");
		int pNo = 0;
		try {
			pNo = Integer.parseInt(pNo_param);
		} catch(Exception e) {
			System.out.println("*********** 정수로 변환 중 오류가 발생했습니다. ***********");
		}
		System.out.println("조회한 상품 번호:\t" + pNo);
		ProductVo result = new ProductVo();
		
		result = new AdminService().searchProduct(pNo);
		
		System.out.println("AdProductSearchServlet - 상품번호:\t" + pNo);
		System.out.println("[상품정보]\n" + result+ "\n");		
		
		request.setAttribute("product", result);
		request.getRequestDispatcher("WEB-INF/view/admin/productEdit.jsp").forward(request, response);
		
		out.print(result);
		out.flush();
		out.close();
	}

}
