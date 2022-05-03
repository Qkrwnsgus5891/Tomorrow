package kh.semi.tomorrow.admin.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import kh.semi.tomorrow.admin.model.service.AdminService;
import kh.semi.tomorrow.product.model.vo.ProductDetailVo;
import kh.semi.tomorrow.product.model.vo.ProductVo;

/**
 * Servlet implementation class AdProductInsertServlet
 */
@WebServlet("/adProductEnroll.aj")
public class AdProductInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdProductInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AdProductEnrollServlet - doPost");		
		PrintWriter out = response.getWriter();
		int result = -1;
/*
		pContent : '상품상세 이미지 경로',
		cateId : $("#category").val(),
		pBrand : $("#prod_brand").val(),
		pName : $("#prod_name").val(),
		pPrice : $("#prod_price").val(),
		optNo : $("#opt_no").val(),
		optVal : $("#opt_val").val(),
		optPrice : $("#opt_price").val()
*/	
		
//		String pContent = request.getParameter("pContent");
		String pContent = "상품상세 이미지 경로";
		String cateId_param = request.getParameter("cateId");
		String pBrand = request.getParameter("pBrand");
		String pName = request.getParameter("pName");		
		String pPrice_param = request.getParameter("pPrice");	
		String optNo_param = request.getParameter("optNo");
		String optVal = request.getParameter("optVal");
		String optPrice_param = request.getParameter("optPrice");
		
		int cateId = 0; int pPrice = 0; int optNo= 0; int optPrice =0;   
		
		try {
			cateId = Integer.parseInt(cateId_param);
			pPrice = Integer.parseInt(pPrice_param);
			optNo = Integer.parseInt(optNo_param);
			optPrice = Integer.parseInt(optPrice_param);
		}catch (Exception e) {
			System.out.println("*** 정수로 변환 도중 오류 발생 ***");
		}
		
		System.out.println("pContent:\t " +  pContent);
		System.out.println("cateId:\t " + cateId);
		System.out.println("pBrand:\t " +  pBrand);
		System.out.println("pName:\t " +  pName);
		System.out.println("pPrice:\t " +  pPrice);
		System.out.println("optNo:\t " + optNo);
		System.out.println("optVal:\t " + optVal);
		System.out.println("optPrice:\t " + optPrice);
		
		// product 객체에 값 저장
		ProductVo product = new ProductVo(); 
		product.setpBrand(pBrand);
		product.setpName(pName);
		product.setpContent(pContent);
		product.setCateId(cateId);
		product.setpPrice(pPrice);		
		
		// product_detail 객체에 값 저장
		ProductDetailVo detail = new ProductDetailVo();
		detail.setOptNo(optNo);
		detail.setOptVal(optVal);
		detail.setOptPrice(optPrice);
		
		result = new AdminService().insertProduct(product, detail);
		System.out.println("AdProductEnrollServlet - [reuslt]=>\t" + result + "\n");
		
		out.print(result);
		out.flush();
		out.close();
	}

}
