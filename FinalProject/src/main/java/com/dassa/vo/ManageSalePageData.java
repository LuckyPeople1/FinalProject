package com.dassa.vo;

public class ManageSalePageData {
	private String searchType;
	private String searchWord;	//사용자이름
	private String minDate;		//최소날짜
	private String maxDate;		//최대날짜
	private String minAmount;
	private String maxAmount;
	public ManageSalePageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ManageSalePageData(String searchType, String searchWord, String minDate, String maxDate, String minAmount,
			String maxAmount) {
		super();
		this.searchType = searchType;
		this.searchWord = searchWord;
		this.minDate = minDate;
		this.maxDate = maxDate;
		this.minAmount = minAmount;
		this.maxAmount = maxAmount;
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
	public String getMinDate() {
		return minDate;
	}
	public void setMinDate(String minDate) {
		this.minDate = minDate;
	}
	public String getMaxDate() {
		return maxDate;
	}
	public void setMaxDate(String maxDate) {
		this.maxDate = maxDate;
	}
	public String getMinAmount() {
		return minAmount;
	}
	public void setMinAmount(String minAmount) {
		this.minAmount = minAmount;
	}
	public String getMaxAmount() {
		return maxAmount;
	}
	public void setMaxAmount(String maxAmount) {
		this.maxAmount = maxAmount;
	}
	

}
