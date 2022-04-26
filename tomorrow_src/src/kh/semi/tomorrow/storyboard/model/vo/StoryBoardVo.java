package kh.semi.tomorrow.storyboard.model.vo;

import java.sql.Timestamp;

public class StoryBoardVo {
	private int bNo;
	private String bTitle;
	private String bContent;
	private String bWriter;
	private int bCnt;
	private Timestamp bDate;
	private String bNy;
	private String mId;
	private int pNo;
	
	public StoryBoardVo() {
		
	}

	public StoryBoardVo(int bNo, String bTitle, String bContent, String bWriter, int bCnt, Timestamp bDate, String bNy,
			String mId, int pNo) {
		super();
		this.bNo = bNo;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bWriter = bWriter;
		this.bCnt = bCnt;
		this.bDate = bDate;
		this.bNy = bNy;
		this.mId = mId;
		this.pNo = pNo;
	}

	@Override
	public String toString() {
		return "StoryBoardVo [bNo=" + bNo + ", bTitle=" + bTitle + ", bContent=" + bContent + ", bWriter=" + bWriter
				+ ", bCnt=" + bCnt + ", bDate=" + bDate + ", bNy=" + bNy + ", mId=" + mId + ", pNo=" + pNo + "]";
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
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

	public String getbWriter() {
		return bWriter;
	}

	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
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

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

}
