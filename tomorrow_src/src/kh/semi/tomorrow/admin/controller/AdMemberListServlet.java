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

/**
 * Servlet implementation class AdMemberListServlet
 */
@WebServlet("/adMemberList")
public class AdMemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminService service = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdMemberListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		ArrayList<MemberVo> volist = service.selectAllMember();
//		System.out.println("AdminServlet->volist: " + volist);
		
		
		
		request.getRequestDispatcher("WEB-INF/view/admin/memberList.jsp").forward(request, response);
	}

	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
