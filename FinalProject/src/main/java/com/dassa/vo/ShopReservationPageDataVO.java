package com.dassa.vo;

import java.util.ArrayList;

public class ShopReservationPageDataVO {
	private ArrayList<ShopReservationVO> list;
	private String pageNavi;
	public ShopReservationPageDataVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopReservationPageDataVO(ArrayList<ShopReservationVO> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
	}
	public ArrayList<ShopReservationVO> getList() {
		return list;
	}
	public void setList(ArrayList<ShopReservationVO> list) {
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
