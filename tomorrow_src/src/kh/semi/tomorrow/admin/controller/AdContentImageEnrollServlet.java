package kh.semi.tomorrow.admin.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kh.semi.tomorrow.admin.model.service.AdminService;
import kh.semi.tomorrow.product.model.vo.ProductVo;

/**
 * Servlet implementation class AdContentImageEnrollServlet
 */
@WebServlet("/adImageEnroll.do")
public class AdContentImageEnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdContentImageEnrollServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("AdContentImageEnrollServlet - doPost");
		int result = -1;
		String fileSavePath = "upload/storyContentImg";
		String uploadPath = getServletContext().getRealPath(fileSavePath);
		String rootPath = getServletContext().getRealPath("/");
		System.out.println("uploadPath:\t" + uploadPath);
		System.out.println("rootPath:\t" + rootPath);
		
		File path = new File(uploadPath);
		if(!path.exists()) {
			path.mkdirs();
		}
		int maxFileSize = 10 * 1024 * 1024; // 10MG
		MultipartRequest multi = new MultipartRequest(request, uploadPath, 
				maxFileSize, 
				"UTF-8",
				new DefaultFileRenamePolicy()); 
		
		String pNo_param = multi.getParameter("pdNo");
		// TODO 파일 사이즈 ?? 
		int imgSize = 0;		
		
		int pNo = 0;
		try {
			pNo = Integer.parseInt(pNo_param);
		} catch(Exception e) {
			System.out.println("*** 정수 변환 실패 ***");
		}
		String pFilePathParm = multi.getParameter("pFilePath");
		
		String productName = multi.getParameter("pContent");
		String orgFileName = multi.getOriginalFileName("upload");  // 전송되기 전 client에서 파일이름		
		String uploadName = multi.getFilesystemName("upload");  // 서버에 저장된 파일이름
		System.out.println("upload : " + uploadName + "\n");
		
		if (uploadName == null && orgFileName != null && pNo == 0) {	// 글쓰기 + orgFileName은 있는데 + 파일업로드가 없는 경우
			// 파일 저장 실패
			System.out.println("upload 가 null");
			response.sendRedirect("liststory");
			return;
		}
		String bImgPath = "";
		if (uploadName != null && pNo == 0) {	// 글쓰기 + 파일이 있는 경우
			bImgPath = fileSavePath + "/" + uploadName;	// 새파일을 db에 저장
		} else if (uploadName != null && pFilePathParm != null && pNo > 0) {	// 글수정/ + 기존파일 있음 + 새파일이 있는 경우
			// 기존파일 서버에서 파일 삭제
			File file = new File(rootPath + pFilePathParm);
			if (file.exists()) {	// 파일 존재여부확인 - 있다면
				file.delete();
				System.out.println("파일 삭제");
			}	// 파일 없다면.. 아무 행동하지 않고 db 저장하러 감.
			// 새파일을 db에 저장
			bImgPath = fileSavePath + "/" + uploadName;	// 새파일을 db에 저장
		} else if (uploadName == null && pFilePathParm != null && pNo > 0) {	// 글수정 + 기존파일 있음 + 새파일없음.
			// 기존파일 유지 - db에 기존파일로 저장
			bImgPath = pFilePathParm;	// 기존파일로 저장.
		}
		
		System.out.println("페이지로부터 전달받은 데이터값");
		System.out.println("=======================================");
		System.out.println("pNo:\t\t" + pNo);
		System.out.println("productImgName:\t" + productName);
		System.out.println("imgSize:\t" + imgSize);
		System.out.println("=======================================\n");
				
		ProductVo vo = new ProductVo();
		vo.setpNo(pNo);
		vo.setProductImgName(productName);
		vo.setProductImgSize(imgSize);
		result = new AdminService().insertProductContent(vo);
		System.out.println("AdContentImageEnrollServlet result:\t" + result);
		
		if(result == 0) {
			request.setAttribute("msg", "이미지 등록에 실패했습니다.");
			request.getRequestDispatcher("WEB-INF/view/admin/confirm/msg.jsp").forward(request, response);
		} else {			
			request.setAttribute("msg", "이미지 등록에 성공했습니다.");
			request.getRequestDispatcher("WEB-INF/view/admin/confirm/msg.jsp").forward(request, response);
		}
		
	}

}
