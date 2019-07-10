package com.dassa.vo;

import java.util.ArrayList;

public class SaleInLotsPageDataVO {
	private ArrayList<SaleInLotsVO> list;
	private String pageNavi;
	private int totalCount;
	public SaleInLotsPageDataVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SaleInLotsPageDataVO(ArrayList<SaleInLotsVO> list, String pageNavi, int totalCount) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
		this.totalCount = totalCount;
	}
	public ArrayList<SaleInLotsVO> getList() {
		return list;
	}
	public void setList(ArrayList<SaleInLotsVO> list) {
		this.list = list;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	
	
}
