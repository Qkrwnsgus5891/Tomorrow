package kh.semi.tomorrow.member.model.controller;

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
@WebServlet("/login")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
          
    public MemberLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet - login");
		request.getRequestDispatcher("WEB-INF/view/member/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mId = request.getParameter("id");
		String pw = request.getParameter("pwd");
		
		System.out.println("doPost - login");
		System.out.println("id: " + mId);
		System.out.println("pw: "+ pw);
		
		MemberVo vo = new MemberService().login(mId, pw);
		if(vo == null) {
			System.out.println("로그인 실패");
			response.sendRedirect("login");
		} else {
			System.out.println("로그인 성공");
			request.getSession().setAttribute("ssMV", vo);
			response.sendRedirect(request.getContextPath()+ "/main");
		}
	}

}
