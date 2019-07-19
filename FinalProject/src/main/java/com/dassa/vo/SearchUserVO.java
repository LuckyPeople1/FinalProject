package com.dassa.vo;

public class SearchUserVO {
	private String searchType;
	private String searchWord;
	private String userType;
	private String userType1;
	private String userType2;
	private String status;
	private String endDate;
	private String startDate;
	
	
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getUserType1() {
		return userType1;
	}
	public void setUserType1(String userType1) {
		this.userType1 = userType1;
	}
	public String getUserType2() {
		return userType2;
	}
	public void setUserType2(String userType2) {
		this.userType2 = userType2;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public SearchUserVO(String searchType, String searchWord, String userType, String userType1, String userType2,
			String status, String endDate, String startDate) {
		super();
		this.searchType = searchType;
		this.searchWord = searchWord;
		this.userType = userType;
		this.userType1 = userType1;
		this.userType2 = userType2;
		this.status = status;
		this.endDate = endDate;
		this.startDate = startDate;
	}
	public SearchUserVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}