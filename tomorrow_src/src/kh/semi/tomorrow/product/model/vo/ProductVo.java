package kh.semi.tomorrow.product.model.vo;

import java.util.ArrayList;

public class ProductVo {
	private int pNo;
	private String pName; 
	private String pBrand;
	private String pContent;
	private int pPrice;
	private int cateId;
	private String cateName;
	private int optNo;
	private String optVal;
	private int optPrice;
	private int pSeq;
	
	
	private ArrayList<ProductDetailVo> pdvo;
	
	public ProductVo() {}

	public ProductVo(int pNo, String pContent, String pName, String pBrand,int pPrice, int cateId) {
		super();
		this.pNo = pNo;
		this.pContent = pContent;
		this.pName = pName;
		this.pBrand = pBrand;
		this.pPrice = pPrice;
		this.cateId = cateId;
	}
	
	public ProductVo(int pNo, String pContent, String pBrand, String pName, int pPrice, int cateId, String cateName, int optNo, String optVal, int optPrice) {
		super();
		this.pNo = pNo;
		this.pContent = pContent;
		this.pBrand = pBrand;
		this.pName = pName;
		this.pPrice = pPrice;
		this.cateId = cateId;
		this.cateName = cateName;
		this.optNo = optNo;
		this.optVal = optVal;
		this.optPrice = optPrice;
	}
	
	public ProductVo(int p_seq, int pNo, int optNo, String optVal, int optPrice) {
		super();
		this.pSeq = pSeq;
		this.pNo = pNo;
		this.optNo = optNo;
		this.optVal = optVal;
		this.optPrice = optPrice;
	}

	
	

	@Override
	public String toString() {
		return "ProductVo [pNo=" + pNo + ", pName=" + pName + ", pBrand=" + pBrand + ", pContent=" + pContent
				+ ", pPrice=" + pPrice + ", cateId=" + cateId + ", cateName=" + cateName + ", optNo=" + optNo
				+ ", optVal=" + optVal + ", optPrice=" + optPrice + ", pSeq=" + pSeq + ", pdvo=" + pdvo + "]";
	}

	
	

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpBrand() {
		return pBrand;
	}

	public void setpBrand(String pBrand) {
		this.pBrand = pBrand;
	}

	public String getpContent() {
		return pContent;
	}

	public void setpContent(String pContent) {
		this.pContent = pContent;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public int getCateId() {
		return cateId;
	}

	public void setCateId(int cateId) {
		this.cateId = cateId;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public int getOptNo() {
		return optNo;
	}

	public void setOptNo(int optNo) {
		this.optNo = optNo;
	}

	public String getOptVal() {
		return optVal;
	}

	public void setOptVal(String optVal) {
		this.optVal = optVal;
	}

	public int getOptPrice() {
		return optPrice;
	}

	public void setOptPrice(int optPrice) {
		this.optPrice = optPrice;
	}	
	
	public int getpSeq() {
		return pSeq;
	}

	public void setpSeq(int pSeq) {
		this.pSeq = pSeq;
	}

	public ArrayList<ProductDetailVo> getPdvo() {
		return pdvo;
	}

	public void setPdvo(ArrayList<ProductDetailVo> pdvo) {
		this.pdvo = pdvo;
	}
	
	
	
}
