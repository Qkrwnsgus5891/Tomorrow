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
import kh.semi.tomorrow.product.model.vo.ProductVo;
import kh.semi.tomorrow.storyboard.model.vo.StoryBoardVo;

public class AdminDao {
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	// ��ǰ ����
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
			System.out.println("AdminDao-ctgryProduct()�� ��ǰ ��� ��ȸ�� �����Ͽ����ϴ�.\n");
		} else {
			System.out.println("AdminDao-ctgryProduct()�� ���� ��ǰ ����� ��ȸ�Ǿ����ϴ�.\n[productlist]\n" + productList + "\n");		
		}
		return productList;
	}
	// ��ǰ ���
	public int insertProduct(Connection conn) {
		int result = 0;
		String sql = "insert into product(P_NO, P_BRAND, P_NAME, P_CONTENT_, P_PRICE, CATEGORY_ID) "
				+ " values(SEQUENCE_PRODUCT_P_NO.nextval, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	// ��ǰ ����/����
	// �ֹ� ���� ��ȸ	
	public ArrayList<OrderVo> selectOrderList() {
		ArrayList<OrderVo> orderlist = null;
		String sql = "";
		
		
		return orderlist;
	}
	// ȸ�� ����
	public ArrayList<MemberVo> selectAllMember(Connection conn) {
		ArrayList<MemberVo> memberlist = null;
		String sql = "select M_ID, M_NAME, M_NICKNAME, "
				+ " M_BIRTH, M_PHONE, M_DATE, M_NY from member "
				+ " where m_name != '������' ";		

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
			System.out.println("AdminDao-selectAllMember()�� ȸ�� ��� ��ȸ�� �����Ͽ����ϴ�.\n");
		} else {
			System.out.println("AdaminDao-boardList()�� ���� ����� ��ȸ�Ǿ����ϴ�.\n[boardlist]\n" + memberlist + "\n");		
		}
		return memberlist;
	}
	
	public ArrayList<MemberVo> selectAllMember(Connection conn, int startNum, int endNum) {
		ArrayList<MemberVo> memberlist = null;				
		String sql = "select *"
				+ "    from (select rownum r, t1.*"
				+ "            from (select s1.m_id, s1.m_name, s1.m_nickname, s1.m_birth, s1.m_phone, s1.m_date, s1.m_ny"
				+ "                    from member s1 where s1.m_name != '������' ) t1"
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
			System.out.println("AdminDao-selectAllMember()�� ȸ�� ��� ��ȸ�� �����Ͽ����ϴ�.\n");
		} else {
			System.out.println("AdaminDao-boardList()�� ���� ����� ��ȸ�Ǿ����ϴ�.\n[memberlist]\n" + memberlist + "\n");		
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
		System.out.println("AdminDao-leaveMember()�� ���� ����� ��ȸ�Ǿ����ϴ�.\n[leaveMember]\n"+ memberlist + "\n");
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
			System.out.println("AdaminDao-updateWithDraw()�� ���࿡ �����߽��ϴ�.\n");
		} else {
			System.out.println("AdaminDao-updateWithDraw()�� ���� 1���� ������Ʈ �Ǿ����ϴ�.\n");			
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
			System.out.println("AdaminDao-deleteMember()�� ���࿡ �����߽��ϴ�.\n");
		} else {
			System.out.println("AdminDao-deleteMember()�� ���� 1���� �����Ǿ����ϴ�.\n");			
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
			System.out.println("AdaminDao-countMember()�� ���࿡ �����߽��ϴ�.\n");
		} else {
			System.out.println("AdaminDao-countMember()�� ���� 1���� ����Ǿ����ϴ�.\n");			
		} 
		return result;
	}
	
	// �Խù� ����
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
			System.out.println("AdaminDao-boardList()�� �Խñ� ��� ��ȸ�� �����Ͽ����ϴ�.\n[boardlist]\n" + boardlist + "\n");
		} else {
			System.out.println("AdaminDao-boardList()�� ���� ����� ��ȸ�Ǿ����ϴ�.\n[boardlist]\n" + boardlist + "\n");		
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
			System.out.println("AdaminDao-boardList()�� �Խñ� ��� ��ȸ�� �����Ͽ����ϴ�.\n[boardlist]\n" + boardlist + "\n");
		} else {
			System.out.println("AdaminDao-boardList()�� ���� ����� ��ȸ�Ǿ����ϴ�.\n[boardlist]\n" + boardlist + "\n");		
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
			System.out.println("AdminDao-countBoard()�� �Խñ� ���� ��ȸ�� �����Ͽ����ϴ�.\n[result]\n" + result + "\n");
		} else {
			System.out.println("AdminDao-countBoard()�� �Խñ� ���� ��ȸ�� �����մϴ�. \n[bresult]\n" + result + "\n");
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
			System.out.println("AdaminDao-deleteBoard()�� ���࿡ �����߽��ϴ�.\n");
		} else {
			System.out.println("AdaminDao-deleteBoard()�� ���� 1���� �����Ǿ����ϴ�.\n");			
		} 
		return result;
	}
}
