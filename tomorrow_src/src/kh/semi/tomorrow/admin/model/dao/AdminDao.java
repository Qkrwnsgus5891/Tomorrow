package kh.semi.tomorrow.admin.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import kh.semi.tomorrow.common.JdbcTemp;
import kh.semi.tomorrow.member.model.vo.MemberVo;
import kh.semi.tomorrow.order.model.vo.OrderVo;
import kh.semi.tomorrow.product.model.vo.ProductDetailVo;
import kh.semi.tomorrow.product.model.vo.ProductVo;
import kh.semi.tomorrow.storyboard.model.vo.StoryBoardVo;

public class AdminDao {
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	// 상품 관리
	public ArrayList<ProductVo> ctgryProduct(Connection conn, String ctgry) {
		ArrayList<ProductVo> productList = null;
		String sql = "select C.CATEGORY_ID, C.CATEGORY_NAME, P.P_NO,"
				+ "	P.P_BRAND, P.P_NAME, P.P_CONTENT, P.P_PRICE"
				+ "	from PRODUCT P JOIN PRODUCT_CATEGORY C"
				+ "	ON P.CATEGORY_ID = C.CATEGORY_ID"
				+ "	WHERE C.CATEGORY_NAME = ? "; 
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ctgry);
			rs = pstmt.executeQuery();
			
			productList = new ArrayList<ProductVo>();
			while(rs.next()) {
				ProductVo product = new ProductVo();
				product.setCateId(rs.getInt("CATEGORY_ID"));
				product.setCateName(rs.getString("CATEGORY_NAME"));
				product.setpNo(rs.getInt("P_NO"));
				product.setpBrand(rs.getString("P_BRAND"));
				product.setpName(rs.getString("P_NAME"));
				product.setpContent(rs.getString("P_CONTENT"));
				product.setpPrice(rs.getInt("P_PRICE"));
				
				productList.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		} 
		
		if(productList == null) {
			System.out.println("AdminDao-ctgryProduct()의 상품 목록 조회에 실패하였습니다.\n[productlist]\t" + productList + "\n");
		} else {
			System.out.println("AdminDao-ctgryProduct()에 의해 상품 목록이 조회되었습니다.\n[productlist]\t" + productList + "\n");		
		}
		return productList;
	}
	
	
	// 상품 등록	
	// 상품 등록시 필요한 상품번호 구하기
	public int insertProduct(Connection conn, ProductVo product, int pNo) {
		int result = 0;
		String sql = "insert into product(P_NO, P_BRAND, P_NAME, P_CONTENT, P_PRICE, CATEGORY_ID) "
				+ " values(?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(2, product.getpBrand());
			pstmt.setString(3, product.getpName());
			pstmt.setString(4, product.getpContent());
			pstmt.setInt(5, product.getpPrice());
			pstmt.setInt(6, product.getCateId());
			pstmt.setInt(1, pNo);
			
			result = pstmt.executeUpdate();			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(pstmt);
		}
		
		if(result == 0) {
			System.out.println("AdminDao-insertProduct()에 의한 상품 등록에 실패하였습니다.\n");
		} else {
			System.out.println("AdminDao-insertProduct()에 의해 상품 등록에 성공했습니다.\n[결과]\t" + result + "\n");		
		}
		return result;
	}	 
	
	public int insertProductDetail(Connection conn, ProductDetailVo detail, int pNo) {
		int result = 0;
		String sql = "insert into product_detail(P_SEQ, P_NO, OPT_NO, OPT_VAL, OPT_PRICE) "
				+ "values (SEQUENCE_PROD_DETAIL_P_SEQ.nextval, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);			
			pstmt.setInt(1, pNo);
			pstmt.setInt(2, detail.getOptNo());
			pstmt.setString(3, detail.getOptVal());
			pstmt.setInt(4, detail.getOptPrice());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(pstmt);
		}
		
		if(result == 0) {
			System.out.println("AdminDao-insertProductDetail()에 의한 상품 옵션 등록에 실패하였습니다.\n[결과]\t"+ result + "\n");
		} else {
			System.out.println("AdminDao-insertProductDetail()에 의해 상품 옵션 등록에 성공했습니다.\n[결과]\t" + result + "\n");		
		}
		return result;	
	}
	
	public int getProductPNo(Connection conn) {
		int result = 0;
		String sql = "select SEQUENCE_PRODUCT_P_NO.nextval from dual";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}
		System.out.println("getProductPNo:\t "+ result + "\n");
		return result;
	}
	
	// 상품 수정/삭제
	public ProductVo searchProduct(Connection conn, int pNo) {
		ProductVo product = null;
		String sql = "select p_no, p_brand, p_name, p_content, p_price, category_id"
				+ " from product where p_no = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pNo);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				product = new ProductVo();
				
				product.setpNo(rs.getInt("p_no"));
				product.setpBrand(rs.getString("p_brand"));
				product.setpName(rs.getString("p_name"));
				product.setpContent(rs.getString("p_content"));
				product.setpPrice(rs.getInt("p_price"));
				product.setCateId(rs.getInt("category_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}
		if(product == null) {
			System.out.println("AdminDao-searchProduct()에 의해 상품 조회가 실패했습니다.\nproduct:\t" + product + "\n");
		} else {
			System.out.println("AdaminDao-searchProduct()에 의해 상품을 조회합니다.\nproduct:\n" + product + "\n");
		}
		return product;
	}	
	
	public int updateProduct(Connection conn, ProductVo product, int pNo) {
		int result= 0;
		String sql = "update product set P_CONTENT=?, CATEGORY_ID =?, P_BRAND=?, P_NAME=?, P_PRICE=? where p_no= ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getpContent());
			pstmt.setInt(2, product.getCateId());
			pstmt.setString(3, product.getpBrand());
			pstmt.setString(4, product.getpName());
			pstmt.setInt(5, product.getpPrice());
			pstmt.setInt(6, pNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(result == 0) {
			System.out.println("AdminDao-updateProduct()에 의한 상품 업데이트에 실패하였습니다.\n[결과]\t"+ result + "\n");
		} else {
			System.out.println("AdminDao-updateProduct()에 의해 상품 업데이트에 성공했습니다.\n[결과]\t" + result + "\n");		
		}
		return result;	
	}
	
	public int updateProductDetail(Connection conn, ProductDetailVo detail, int pNo) {
		int result= 0;
		String sql = "update product_detail set opt_no=?, opt_val=?, opt_price=? where p_no=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, detail.getOptNo());
			pstmt.setString(2, detail.getOptVal());
			pstmt.setInt(3, detail.getOptPrice());
			pstmt.setInt(4, pNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(result == 0) {
			System.out.println("AdminDao-updateProductDetail()에 의한 상품 상세옵션의 업데이트에 실패하였습니다.\n[결과]\t"+ result + "\n");
		} else {
			System.out.println("AdminDao-updateProductDetail()에 의해 상품 상세옵션의 업데이트에 성공했습니다.\n[결과]\t" + result + "\n");		
		}
		return result;	
	}
	
	public int deleteProduct(Connection conn, int pNo) {
		int result = 0;
		String sql = "delete from product where p_no=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(result == 0) {
			System.out.println("AdminDao-deleteProduct()에 의한 상품 삭제에 실패하였습니다.\n");
		} else {
			System.out.println("AdminDao-deleteProduct()에 의해 상품 삭제에 성공했습니다.\n[결과]\t" + result + "\n");		
		}
		return result;
	}
	
	// 주문 내역 조회	
	public ArrayList<OrderVo> selectOrderList() {
		ArrayList<OrderVo> orderlist = null;
		String sql = "";	
		
		return orderlist;
	}
	// 회원 관리
	public ArrayList<MemberVo> selectAllMember(Connection conn) {
		ArrayList<MemberVo> memberlist = null;
		String sql = "select M_ID, M_NAME, M_NICKNAME, "
				+ " M_BIRTH, M_PHONE, M_DATE, M_NY from member "
				+ " where m_name != '관리자' ";		

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			memberlist = new ArrayList<MemberVo>();
			while(rs.next()) {
				MemberVo vo = new MemberVo();
				
				vo.setmId(rs.getString("M_ID"));
				vo.setmName(rs.getString("M_NAME"));
				vo.setmNickname(rs.getString("M_NICKNAME"));
				vo.setmBrith(rs.getString("M_BIRTH"));
				vo.setmPhone(rs.getString("M_PHONE"));
				vo.setmDate(rs.getTimestamp("M_DATE"));
				vo.setmNy(rs.getString("M_NY"));
				
				memberlist.add(vo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}
		if(memberlist == null) {
			System.out.println("AdminDao-selectAllMember()의 회원 목록 조회에 실패하였습니다.\n");
		} else {
			System.out.println("AdaminDao-boardList()에 의해 목록이 조회되었습니다.\n[boardlist]\t" + memberlist + "\n");		
		}
		return memberlist;
	}
	
	public ArrayList<MemberVo> selectAllMember(Connection conn, int startNum, int endNum) {
		ArrayList<MemberVo> memberlist = null;				
		String sql = "select *"
				+ "    from (select rownum r, t1.*"
				+ "            from (select s1.m_id, s1.m_name, s1.m_nickname, s1.m_birth, s1.m_phone, s1.m_date, s1.m_ny"
				+ "                    from member s1 where s1.m_name != '관리자' ) t1"
				+ "    		)"
				+ "	where r between ? and ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startNum);
			pstmt.setInt(2, endNum);			
			rs = pstmt.executeQuery();			
			
			memberlist = new ArrayList<MemberVo>();
			while(rs.next()) {
				MemberVo vo = new MemberVo();
				
				vo.setmId(rs.getString("M_ID"));
				vo.setmName(rs.getString("M_NAME"));
				vo.setmNickname(rs.getString("M_NICKNAME"));
				vo.setmBrith(rs.getString("M_BIRTH"));
				vo.setmPhone(rs.getString("M_PHONE"));
				vo.setmDate(rs.getTimestamp("M_DATE"));
				vo.setmNy(rs.getString("M_NY"));
				
				memberlist.add(vo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}
		if(memberlist == null) {
			System.out.println("AdminDao-selectAllMember()의 회원 목록 조회에 실패하였습니다.\n");
		} else {
			System.out.println("AdaminDao-boardList()에 의해 목록이 조회되었습니다.\n[memberlist]\t" + memberlist + "\n");		
		}
		return memberlist;
	}	
	
	public ArrayList<MemberVo> leaveMember(Connection conn) {
		ArrayList<MemberVo> memberlist = null;
		String sql = "select M_ID, M_NAME, M_NICKNAME, "
				+ " M_BIRTH, M_PHONE, M_DATE from member "
				+ " where M_NY = 'Y';";		

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			memberlist = new ArrayList<MemberVo>();
			while(rs.next()) {
				MemberVo vo = new MemberVo();
				
				vo.setmId(rs.getString("M_ID"));
				vo.setmName(rs.getString("M_NAME"));
				vo.setmNickname(rs.getString("M_NICKNAME"));
				vo.setmBrith(rs.getString("M_BIRTH"));
				vo.setmPhone(rs.getString("M_PHONE"));
				vo.setmDate(rs.getTimestamp("M_DATE"));
				vo.setmNy(rs.getString("M_NY"));
				
				memberlist.add(vo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}
		System.out.println("AdminDao-leaveMember()에 의해 목록이 조회되었습니다.\n[leaveMember]\t"+ memberlist + "\n");
		return memberlist;
	}
	
	public int updateWithDraw(Connection conn, String mId) {
		int result = 0;
		String sql = "update member set m_ny= 'Y' where m_id =? "; 
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(pstmt);
		}
		if(result < 1) {
			System.out.println("AdaminDao-updateWithDraw()의 실행에 실패했습니다.\n");
		} else {
			System.out.println("AdaminDao-updateWithDraw()에 의해 1행이 업데이트 되었습니다.\n");			
		}
		System.out.println("aaa");
		return result;
	}
	
	public int deleteMember(Connection conn, String mId) {
		int result = 0;
		String sql = "delete from member where m_id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			
			result=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(pstmt);
		}
		if(result < 1) {
			System.out.println("AdaminDao-deleteMember()의 실행에 실패했습니다.\n");
		} else {
			System.out.println("AdminDao-deleteMember()에 의해 1행이 삭제되었습니다.\n");			
		} 
		return result;
	}
	
	public int countMember(Connection conn) {
		int result = 0;
		String sql = "select count(*)-1 from member";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			} 
			
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}
		
		if(result < 1) {
			System.out.println("AdaminDao-countMember()의 실행에 실패했습니다.\n");
		} else {
			System.out.println("AdaminDao-countMember()로 인해 1행이 수행되었습니다.\n");			
		} 
		return result;
	}
	
	// 게시물 관리
	public ArrayList<StoryBoardVo> boardList(Connection conn) {
		ArrayList<StoryBoardVo> boardlist = null;
		String sql = "select b_no, b_title, b_writer, b_date, b_cnt from story";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			boardlist = new ArrayList<StoryBoardVo>();
			
			while(rs.next()) {
				StoryBoardVo vo = new StoryBoardVo();
				vo.setbNo(rs.getInt("b_no"));
				vo.setbTitle(rs.getString("b_title"));
				vo.setbWriter(rs.getString("b_writer"));
				vo.setbDate(rs.getTimestamp("b_date"));
				vo.setbCnt(rs.getInt("b_cnt"));
				
				boardlist.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}
		
		if(boardlist == null) {
			System.out.println("AdaminDao-boardList()의 게시글 목록 조회에 실패하였습니다.\n[boardlist]\n" + boardlist + "\n");
		} else {
			System.out.println("AdaminDao-boardList()로 인해 목록이 조회되었습니다.\n[boardlist]\t" + boardlist + "\n");		
		}		
		return boardlist;
	}
	
	public ArrayList<StoryBoardVo> boardList(Connection conn, int startNum, int endNum) {
		ArrayList<StoryBoardVo> boardlist = null;
		String sql = "select *"
				+ "    from (select rownum r, t1.*"
				+ "            from (select s1.b_no, s1.b_title, s1.b_writer, s1.b_date, s1.b_cnt"
				+ "                    from story s1 order by b_date desc, b_no desc) t1"
				+ "    		)"
				+ "	where r between ? and ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startNum);
			pstmt.setInt(2, endNum);			
			rs = pstmt.executeQuery();
			
			boardlist = new ArrayList<StoryBoardVo>();
			
			while(rs.next()) {
				StoryBoardVo vo = new StoryBoardVo();
				vo.setbNo(rs.getInt("b_no"));
				vo.setbTitle(rs.getString("b_title"));
				vo.setbWriter(rs.getString("b_writer"));
				vo.setbDate(rs.getTimestamp("b_date"));
				vo.setbCnt(rs.getInt("b_cnt"));
				
				boardlist.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}
		
		if(boardlist == null) {
			System.out.println("AdaminDao-boardList()의 게시글 목록 조회에 실패하였습니다.\n[boardlist]\n" + boardlist + "\n");
		} else {
			System.out.println("AdaminDao-boardList()로 인해 목록이 조회되었습니다.\n[boardlist]\t" + boardlist + "\n");		
		}		
		return boardlist;
	}
	
	public int countBoard(Connection conn) {
		int result = 0;
		String sql = "select count(*) from story";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			if(rs.next()) {					
				result= rs.getInt(1);			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(rs);
			JdbcTemp.close(pstmt);
		}
		
		if(result == 0) {
			System.out.println("AdminDao-countBoard()의 게시글 개수 조회에 실패하였습니다.\n");
		} else {
			System.out.println("AdminDao-countBoard()의 게시글 개수 조회를 수행합니다. \n[bresult]\t" + result + "\n");
		}
		return result;
	}
	
	public int deleteBoard(Connection conn, int bNo) {
		int result= 0;
		String sql = "delete from story where b_no= ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemp.close(pstmt);
		}
		
		if(result < 1) {
			System.out.println("AdaminDao-deleteBoard()의 실행에 실패했습니다.\n");
		} else {
			System.out.println("AdaminDao-deleteBoard()에 의해 1행이 삭제되었습니다.\n");			
		} 
		return result;
	}
}
