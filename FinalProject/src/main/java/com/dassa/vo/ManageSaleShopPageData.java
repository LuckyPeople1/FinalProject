package com.dassa.vo;

import java.util.ArrayList;

public class ManageSaleShopPageData {
	private ArrayList<ShopPaymentVO> list;
	private String pageNavi;
	public ManageSaleShopPageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ManageSaleShopPageData(ArrayList<ShopPaymentVO> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
	}
	public ArrayList<ShopPaymentVO> getList() {
		return list;
	}
	public void setList(ArrayList<ShopPaymentVO> list) {
		this.list = list;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
}
