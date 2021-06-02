package bbs;
//VO는 DB의 테이블 역할 !!! 
public class Bbs {
	private int bbsID;
	private String bbsTitle;
	private String userID;
	private String bbsDate; //String으로 해주기 ! Date지만
	private String bbsContent;
	private int bbsAvailable;
	//게시판 만들 때 꼭 bbsAvailable 만들어서 1이면 삭제/ 0이면 삭제X 
	//이런 식으로 해서 구분할 수 있게 한다
	
	public int getBbsID() {
		return bbsID;
	}
	public void setBbsID(int bbsID) {
		this.bbsID = bbsID;
	}
	public String getBbsTitle() {
		return bbsTitle;
	}
	public void setBbsTitle(String bbsTitle) {
		this.bbsTitle = bbsTitle;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getBbsDate() {
		return bbsDate;
	}
	public void setBbsDate(String bbsDate) {
		this.bbsDate = bbsDate;
	}
	public String getBbsContent() {
		return bbsContent;
	}
	public void setBbsContent(String bbsContent) {
		this.bbsContent = bbsContent;
	}
	public int getBbsAvailable() {
		return bbsAvailable;
	}
	public void setBbsAvailable(int bbsAvailable) {
		this.bbsAvailable = bbsAvailable;
	}
	

	
}
