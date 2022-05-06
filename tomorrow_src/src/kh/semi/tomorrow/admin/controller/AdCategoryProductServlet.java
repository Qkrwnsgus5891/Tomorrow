package kh.semi.tomorrow.admin.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class AdCategoryProductServlet
 */
@WebServlet("/adProductCtgry")
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
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {			
//
//	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AdCategoryProductServlet - doPost");		
		
		String ctgry = request.getParameter("ctgry");
		System.out.println("선택한 카테고리: " + ctgry + "\n");
		ArrayList<ProductVo> productList = new AdminService().ctgryProduct(ctgry);
		System.out.println("AdCategoryProductServlet- doPost\n[productList]\n" + productList + "\n");
		
	}

}
