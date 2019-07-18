package com.dassa.common;

public class Criteria {

	private int pageNum;	// 페이지번호
	private int amount;		// 페이지당 표시 수


	// 검색필터
	private String keyword;
	private String[] type1;
	private String minDate;
	private String maxDate;



	public Criteria(){
		this(1,3);
	}

	public Criteria(int pageNum, int amount){
		this.pageNum	=	pageNum;
		this.amount		=	amount;
	}


	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String[] getType1() {
		return type1;
	}

	public void setType1(String[] type1) {
		this.type1 = type1;
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
}
