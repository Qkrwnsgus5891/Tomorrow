package kh.semi.tomorrow.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.tomorrow.member.model.vo.MemberVo;



/**
 * Servlet implementation class AdCategoryProductServlet
 */
@WebServlet("/admain")
public class AdCategoryProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdCategoryProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인 상태 확인
		MemberVo member = (MemberVo)request.getSession().getAttribute("ssMV");
		if(member == null) {
			response.sendRedirect("login");
		} else {
			System.out.println("AdCategoryProductServlet-> admain...\n");
			request.getRequestDispatcher("WEB-INF/view/admin/main.jsp").forward(request, response);			
		}
	}
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
