package kh.semi.tomorrow.order.model.vo;

public class OrderDetailVo {
	private int odSeq;
	private int oNo;
	private int pNo;
	private int pSeq;
	private int oDcnt;
	
	public OrderDetailVo() {}
	
	@Override
	public String toString() {
		return "OrderDetailVo [odSeq=" + odSeq + ", oNo=" + oNo + ", pNo=" + pNo + ", pSeq=" + pSeq + ", oDcnt=" + oDcnt
				+ "]";
	}
	
	public int getOdSeq() {
		return odSeq;
	}

	public void setOdSeq(int odSeq) {
		this.odSeq = odSeq;
	}

	public int getoNo() {
		return oNo;
	}

	public void setoNo(int oNo) {
		this.oNo = oNo;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public int getpSeq() {
		return pSeq;
	}

	public void setpSeq(int pSeq) {
		this.pSeq = pSeq;
	}

	public int getoDcnt() {
		return oDcnt;
	}

	public void setoDcnt(int oDcnt) {
		this.oDcnt = oDcnt;
	}
	
	
	
}
