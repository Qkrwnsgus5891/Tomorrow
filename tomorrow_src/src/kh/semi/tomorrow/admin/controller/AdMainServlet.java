package kh.semi.tomorrow.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.tomorrow.admin.model.service.AdminService;
import kh.semi.tomorrow.member.model.vo.MemberVo;
import kh.semi.tomorrow.product.model.vo.ProductVo;

/**
 * Servlet implementation class AdMainServlet
 */
@WebServlet("/admain")
public class AdMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdMainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("관리자 메인 페이지로 이동합니다.");
		// 로그인 상태 확인
		MemberVo member = (MemberVo)request.getSession().getAttribute("ssMV");		
		if(member == null) {
			response.sendRedirect("login");
		} else {		
			request.getRequestDispatcher("WEB-INF/view/admin/main.jsp").forward(request, response);					
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
