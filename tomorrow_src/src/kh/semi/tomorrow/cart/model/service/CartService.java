package kh.semi.tomorrow.cart.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import kh.semi.tomorrow.cart.model.dao.CartDao;
import kh.semi.tomorrow.cart.model.vo.CartVo;

public class CartService {
	private CartDao dao = new CartDao();

	public List<CartVo> myCart(String mId) {
		List<CartVo> cartVo = dao.myCart(mId);
		return cartVo;
	}

	// 상품추가
	public int insertmyCart(String mId, int pNo, String option1) {
		CartVo setVo = new CartVo();
		setVo.setpNo(pNo);
		setVo.setpSeq(option1);
		setVo.setmId(mId);

		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mId", mId);
		map.put("pNo", pNo);
		int cnt = dao.checkCntCart(map);
		int eql = dao.checkEqualCart(setVo);
		
		setVo.setcCnt(cnt);
		
		int result = 0;
		if (cnt == 0)
			result = dao.insertmyCart(setVo);
		else {
			if (eql == 0) {
				result = dao.insertmyCart(setVo);
			} else
				System.out.println("여기"+setVo);
				result = dao.updatemyCart(setVo);
		}
		return result;
	}

	// 상품 삭제
//	public int cartDelete(int[] cNo, String mId) {
//		int result = 0;
////		JdbcTemp.setAutocommit(conn, false);
//		boolean bool = true;
//
//		for (int i = 0; i < cNo.length; i++) {
//			result = dao.cartDelete(conn, cNo[i], mId);
//			if (result == 0) {
//				bool = false;
//				break;
//			}
//		}
////		if (bool) {
////			JdbcTemp.commit(conn);
////		} else {
////			JdbcTemp.rollback(conn);
////		}
//
//		return result;
//	}

}
