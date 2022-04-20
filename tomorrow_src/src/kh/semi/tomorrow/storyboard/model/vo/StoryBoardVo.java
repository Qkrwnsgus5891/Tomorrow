package kh.semi.tomorrow.storyboard.model.vo;

import java.sql.Timestamp;

public class StoryBoardVo {
	private String bNo;
	private String bTitle;
	private String bContent;
	private String mId;
	private String mNickname;
	private int bCnt;
	private Timestamp bDate;
	private String bNy;
	private int pNo;
	
	public StoryBoardVo(String bNo, String bTitle, String bContent, String mId, String mNickname, int bCnt,
			Timestamp bDate, String bNy, int pNo) {
		this.bNo = bNo;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.mId = mId;
		this.mNickname = mNickname;
		this.bCnt = bCnt;
		this.bDate = bDate;
		this.bNy = bNy;
		this.pNo = pNo;
	}

	@Override
	public String toString() {
		return "StoryBoardVo [bNo=" + bNo + ", bTitle=" + bTitle + ", bContent=" + bContent + ", mId=" + mId
				+ ", mNickname=" + mNickname + ", bCnt=" + bCnt + ", bDate=" + bDate + ", bNy=" + bNy + ", pNo=" + pNo
				+ "]";
	}

	public String getbNo() {
		return bNo;
	}

	public void setbNo(String bNo) {
		this.bNo = bNo;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getmNickname() {
		return mNickname;
	}

	public void setmNickname(String mNickname) {
		this.mNickname = mNickname;
	}

	public int getbCnt() {
		return bCnt;
	}

	public void setbCnt(int bCnt) {
		this.bCnt = bCnt;
	}

	public Timestamp getbDate() {
		return bDate;
	}

	public void setbDate(Timestamp bDate) {
		this.bDate = bDate;
	}

	public String getbNy() {
		return bNy;
	}

	public void setbNy(String bNy) {
		this.bNy = bNy;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}	
	
	
	
}
