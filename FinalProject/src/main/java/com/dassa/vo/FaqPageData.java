package com.dassa.vo;

import java.util.ArrayList;

public class FaqPageData {
	private ArrayList<FaqVO> list;
	private String pageNavi;
	public FaqPageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FaqPageData(ArrayList<FaqVO> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
	}
	public ArrayList<FaqVO> getList() {
		return list;
	}
	public void setList(ArrayList<FaqVO> list) {
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
