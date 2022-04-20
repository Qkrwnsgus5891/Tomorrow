package kh.semi.tomorrow.storyboard.model.vo;

import java.sql.Timestamp;

public class StoryRecommentVo {
	private String rNo;
	private String bNo;
	private String mId;
	private String mNickname;
	private Timestamp rWriteDate;
	private String rComment;
	
	public StoryRecommentVo(String rNo, String bNo, String mId, String mNickname, Timestamp rWriteDate,
			String rComment) {
		this.rNo = rNo;
		this.bNo = bNo;
		this.mId = mId;
		this.mNickname = mNickname;
		this.rWriteDate = rWriteDate;
		this.rComment = rComment;
	}

	@Override
	public String toString() {
		return "StoryRecommentVo [rNo=" + rNo + ", bNo=" + bNo + ", mId=" + mId + ", mNickname=" + mNickname
				+ ", rWriteDate=" + rWriteDate + ", rComment=" + rComment + "]";
	}

	public String getrNo() {
		return rNo;
	}

	public void setrNo(String rNo) {
		this.rNo = rNo;
	}

	public String getbNo() {
		return bNo;
	}

	public void setbNo(String bNo) {
		this.bNo = bNo;
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

	public Timestamp getrWriteDate() {
		return rWriteDate;
	}

	public void setrWriteDate(Timestamp rWriteDate) {
		this.rWriteDate = rWriteDate;
	}

	public String getrComment() {
		return rComment;
	}

	public void setrComment(String rComment) {
		this.rComment = rComment;
	}
	
	
}
