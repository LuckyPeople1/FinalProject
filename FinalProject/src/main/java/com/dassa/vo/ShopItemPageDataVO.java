package com.dassa.vo;

import java.util.ArrayList;

public class ShopItemPageDataVO {
	private ArrayList<ShopItemVO> list;
	private String pageNavi;
	public ShopItemPageDataVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopItemPageDataVO(ArrayList<ShopItemVO> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
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
	public boolean isEmpty() {
		// TODO Auto-generated method stub
		return false;
	}
}
