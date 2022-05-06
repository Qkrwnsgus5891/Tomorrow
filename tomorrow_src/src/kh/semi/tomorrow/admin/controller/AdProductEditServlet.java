package kh.semi.tomorrow.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.tomorrow.admin.model.service.AdminService;
import kh.semi.tomorrow.product.model.vo.ProductDetailVo;
import kh.semi.tomorrow.product.model.vo.ProductVo;

/**
 * Servlet implementation class AdProductEditServlet
 */
@WebServlet("/adProductEdit")
public class AdProductEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AdProductEditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AdProductEditServlet - doGet");
		request.getRequestDispatcher("WEB-INF/view/admin/productEdit.jsp").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AdProductEditServlet - doPost");
		PrintWriter out = response.getWriter();
		int result = -1;
/*
		pNo : $("#pno").val(),
		pContent : '상품상세 이미지 경로',
		cateId : $("#category").val(),
		pBrand : $("#prod_brand").val(),
		pName : $("#prod_name").val(),
		pPrice : $("#prod_price").val(),
		optNo : $("#opt_no").val(),
		optVal : $("#opt_val").val(),
		optPrice : $("#opt_price").val()
*/		
		String pNo_param = request.getParameter("pNo");
		String pContent = request.getParameter("pContent");
		String cateId_param = request.getParameter("cateId");
		String pBrand = request.getParameter("pBrand");
		String pName = request.getParameter("pName");
		String pPrice_param = request.getParameter("pPrice");
		String optNo_param = request.getParameter("optNo");
		String optVal = request.getParameter("optVal");
		String optPrice_param = request.getParameter("optPrice");
		
		int pNo=0; int cateId=0; int pPrice=0; int optNo=0; int optPrice=0;
		try {
			pNo = Integer.parseInt(pNo_param);
			cateId = Integer.parseInt(cateId_param);
			pPrice = Integer.parseInt(pPrice_param);
			optNo = Integer.parseInt(optNo_param);
			optPrice = Integer.parseInt(optPrice_param);
		}catch (Exception e) {
			System.out.println("*** 정수로 변환 도중 오류 발생 ***");
		}
		System.out.println("페이지로부터 전달받은 데이터값");
		System.out.println("========================================================");
		System.out.println("pNo:\t\t\t" + pNo);
		System.out.println("pContent:\t\t\t" + pContent);
		System.out.println("cateId:\t\t\t" + cateId);
		System.out.println("pBrand:\t\t\t" + pBrand);
		System.out.println("pName:\t\t\t" + pName);
		System.out.println("pPrice:\t\t\t" + pPrice);
		System.out.println("optNo:\t\t\t" + optNo);
		System.out.println("optVal:\t\t\t" + optVal);
		System.out.println("optPrice:\t\t\t" + optPrice);
		System.out.println("========================================================\n");
//		P_CONTENT=? CATEGORY_ID = ?, P_NAME= ?, P_PRICE= ? where p_no= ?
		ProductVo product= new ProductVo();
		product.setpContent(pContent);
		product.setCateId(cateId);
		product.setpBrand(pBrand);
		product.setpName(pName);
		product.setpPrice(pPrice);		
				
//		opt_no=?, opt_val=?, opt_price=?  where p_no=?
		ProductDetailVo detail = new ProductDetailVo();
		detail.setOptNo(optNo);
		detail.setOptVal(optVal);
		detail.setOptPrice(optPrice);
		
		result = new AdminService().updateProduct(product, detail, pNo);
		System.out.println("AdProductEditServlet - result:\t" + result + "\n");
		out.print(result);
		out.flush();
		out.close();
	}

}
