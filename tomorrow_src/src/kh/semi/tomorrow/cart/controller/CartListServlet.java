package kh.semi.tomorrow.cart.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.tomorrow.cart.model.service.CartService;
import kh.semi.tomorrow.member.model.vo.MemberVo;
import kh.semi.tomorrow.order.model.service.OrderService;
import kh.semi.tomorrow.order.model.vo.OrderVo;
import kh.semi.tomorrow.product.model.vo.ProductVo;

/**
 * Servlet implementation class CartListServlet
 */
@WebServlet("/cartlist")
public class CartListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 로그인 상태 확인
		MemberVo ssvo = (MemberVo)request.getSession().getAttribute("ssMV");
		String mId = "";
		if(ssvo == null) {	// 로그아웃 상태라면 login page 진입
			response.sendRedirect("login");
			return;	// DB저장 안하고 밖으로 빠지게
		} else {	// 로그인한 상태라면 write page 진입
			mId = ssvo.getmId();
		}

		ArrayList<OrderVo> orderVoList = new OrderService().myOrder(mId);
		System.out.println("orderVoList:"+orderVoList);
		request.setAttribute("orderVoList", orderVoList);
		request.getRequestDispatcher("WEB-INF/view/orderpage/cartList.jsp").forward(request, response);
		
	}

//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
