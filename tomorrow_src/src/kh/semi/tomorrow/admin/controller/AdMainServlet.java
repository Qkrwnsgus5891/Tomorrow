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
		// 로그인 상태 확인
		MemberVo member = (MemberVo)request.getSession().getAttribute("ssMV");
		//TODO - yjk 작업 동안은 잠시 로그인 필터 주석 처리
//		if(member == null) {
//			response.sendRedirect("login");
//		} else {
			System.out.println("AdMainServlet-> admain...\n");
			System.out.println("상품 목록 페이지로 이동합니다...");				
			int currentPage = 1;		
			String currentPageStr = request.getParameter("page");
//			String ctgry_param = request.getParameter("ctgry");
			try {
				if(currentPageStr !=null && !currentPageStr.equals(""))
					currentPage = Integer.parseInt(currentPageStr);
			}catch (NumberFormatException e) {
				e.printStackTrace();
			}
			
			final int pageSize = 9;  // 한페이지에 보여줄 행
			final int pageBlock = 3;  // 페이징에 나타날 페이지수
			int startPage=0;
			int endPage=0;
			int startNum=0;
			int endNum=0;
			
			// 카테고리별 상품 조회를 위해 ctgry파라미터를 구하기
//			String ctgry = request.getParameter("ctgry");
			
			// 총 주문 수
			int totalCnt = 0; 
			totalCnt = new AdminService().countAllProduct();
			
//			System.out.println(ctgry +" 상품 개수:\t"+totalCnt + "\n");
			System.out.println("상품 개수:\t" + totalCnt + "\n");
			
			/* Paging 처리 */
			int totalPageCnt = (totalCnt/pageSize) + (totalCnt%pageSize==0 ? 0 : 1);
			if(currentPage%pageBlock == 0) {
				startPage = ((currentPage/pageBlock)-1)*pageBlock + 1;
			} else {
				startPage = (currentPage/pageBlock)*pageBlock + 1;
			}
			endPage = startPage + pageBlock - 1;
			if(endPage>totalPageCnt) {
				endPage = totalPageCnt;
			}
			System.out.println("page:"+ startPage +"~"+endPage);
			
			/* rownum 처리 */
			startNum = (currentPage-1)*pageSize + 1;
			endNum = startNum + pageSize -1;
			if(endNum>totalCnt) {
				endNum = totalCnt;
			}
			System.out.println("rnum:"+ startNum +"~"+endNum+"\n");			
			
			
//			System.out.println("선택한 카테고리: " + ctgry + "\n");
//			ArrayList<ProductVo> productList = new AdminService().ctgryProduct(ctgry, startNum, endNum);
			ArrayList<ProductVo> productList = new AdminService().seachAllProduct(startNum, endNum);
			System.out.println("AdCategoryProductServlet- doPost\n[productList]\n" + productList + "\n");
					
			request.setAttribute("productList", productList);
//			request.setAttribute("category", ctgry_param);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("totalPageCnt", totalPageCnt);
			request.setAttribute("productCnt", totalCnt);
			request.getRequestDispatcher("WEB-INF/view/admin/main.jsp").forward(request, response);					
//		}
	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
