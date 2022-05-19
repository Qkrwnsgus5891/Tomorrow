package kh.semi.tomorrow.cart.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import kh.semi.tomorrow.cart.model.vo.CartVo;
import static kh.semi.tomorrow.common.JdbcUtil.getSqlSession;

public class CartDao {
	// 장바구니 넣기
	public int insertmyCart(CartVo setVo) {
		return getSqlSession().insert("cartMapper.insertmyCart", setVo);
	}

	// 장바구니 목록에 들어있는 개수
	public int checkCntCart(HashMap<String, Object> map) {
		return getSqlSession().selectOne("cartMapper.checkCntCart", map);
	}

	//옵션값 불러오기 
	public int checkEqualCart(CartVo setVo) {
		return getSqlSession().selectOne("cartMapper.checkEqualCart", setVo);
	}
	
	// 장바구니 업데이트
	public int updatemyCart(CartVo setVo) {
		return getSqlSession().selectOne("cartMapper.updatemyCart", setVo);
	}

	// 장바구니 목록보기
	public List<CartVo> myCart(String mId) {
//		ArrayList<CartVo> volist = new ArrayList<CartVo>();
//		volist = (ArrayList<CartVo>)(getSqlSession().selectList("cartMapper.myCart", mId));
//		return volist;
		return getSqlSession().selectList("cartMapper.myCart", mId);
	}
	
//	//장바구니에서 빼기
//	public int cartDelete(Connection conn, int cNo, String mId) {
//		int result = 0;
//		String sql = "delete from cart where c_no=? and m_id = ?";
//		
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, cNo);
//			pstmt.setString(2, mId);
//			
//			result = pstmt.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		
//		if(result == 0) {
//			System.out.println("상품을 삭제하지 못했습니다.");
//		} else {
//			System.out.println("상품이 삭제되었습니다.");		
//		}
//		return result;
//	}

	
	
	
	
}
