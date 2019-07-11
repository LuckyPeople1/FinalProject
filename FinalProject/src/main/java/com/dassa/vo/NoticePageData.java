package com.dassa.vo;

import java.util.ArrayList;

public class NoticePageData {
	private ArrayList<NoticeVO> list;
	private String pageNavi;
	public NoticePageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticePageData(ArrayList<NoticeVO> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
	}
	public ArrayList<NoticeVO> getList() {
		return list;
	}
	public void setList(ArrayList<NoticeVO> list) {
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
