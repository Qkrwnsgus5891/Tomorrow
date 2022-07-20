package kh.semi.tomorrow.order.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.tomorrow.cart.model.service.CartService;
import kh.semi.tomorrow.member.model.vo.MemberVo;
import kh.semi.tomorrow.order.model.service.OrderService;

/**
 * Servlet implementation class OrderEnrollServlet
 */
@WebServlet("/OrderFinal")
public class OrderEnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OrderEnrollServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("/orderFianl post 진입");

		// 로그인 상태 확인
		MemberVo ssvo = (MemberVo) request.getSession().getAttribute("ssMV");
		String mId = "";
		if (ssvo == null) { // 로그아웃 상태라면 login page 진입
			response.sendRedirect("login");
			return;
		} else { // 로그인한 상태라면 write page 진입
			mId = ssvo.getmId();
		}

		String name = request.getParameter("oName");
		String email = request.getParameter("oEmail");
		String phone = request.getParameter("oPhone");
		String reciever = request.getParameter("oReciever");
		String recPhone = request.getParameter("oRecieverPhone");
		String recAddress = request.getParameter("oRecieverAddress");
		String priceStr = request.getParameter("price");
		Timestamp date = new Timestamp(System.currentTimeMillis());
		
		int priceStr2 = Integer.parseInt(priceStr);

		int result = new OrderService().orderfianl(mId, date, name, email, phone, reciever, recAddress, recPhone, priceStr2);
		System.out.println("구매완료");

		request.getRequestDispatcher("WEB-INF/view/memberinfo/mypage.jsp").forward(request, response);
		
	}

}
