package com.dassa.vo;

import java.util.ArrayList;

public class ShopItemPageDataVO {
	private ArrayList<ShopItemVO> list;
	private String pageNavi;
	private int totalCount;
	public ShopItemPageDataVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopItemPageDataVO(ArrayList<ShopItemVO> list, String pageNavi, int totalCount) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
		this.totalCount = totalCount;
	}
	public ArrayList<ShopItemVO> getList() {
		return list;
	}
	public void setList(ArrayList<ShopItemVO> list) {
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
