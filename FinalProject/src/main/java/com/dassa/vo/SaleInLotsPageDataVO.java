package com.dassa.vo;

import java.util.ArrayList;

public class SaleInLotsPageDataVO {
	private ArrayList<SaleInLotsVO> list;
	private String pageNavi;
	public SaleInLotsPageDataVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SaleInLotsPageDataVO(ArrayList<SaleInLotsVO> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
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
	
}
