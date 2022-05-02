package kh.semi.tomorrow.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kh.semi.tomorrow.member.model.service.MemberService;
import kh.semi.tomorrow.member.model.vo.MemberVo;


/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/join")
public class MemberJoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
          
    public MemberJoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet - login");
		request.getRequestDispatcher("WEB-INF/view/member/join.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
