package kh.semi.tomorrow.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.tomorrow.member.model.vo.MemberVo;

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
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그인 상태 확인
				MemberVo member = (MemberVo)request.getSession().getAttribute("ssMV");
				//TODO - yjk 작업 동안은 잠시 로그인 필터 주석 처리
//				if(member == null) {
//					response.sendRedirect("login");
//				} else {
					System.out.println("AdMainServlet-> admain...\n");
					request.getRequestDispatcher("WEB-INF/view/admin/main.jsp").forward(request, response);			
//				}
	}
	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
