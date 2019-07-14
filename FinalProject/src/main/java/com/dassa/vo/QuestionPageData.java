package com.dassa.vo;

import java.util.ArrayList;

public class QuestionPageData {
	private ArrayList<QuestionVO> list;
	private String pageNavi;
	public QuestionPageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QuestionPageData(ArrayList<QuestionVO> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
	}
	public ArrayList<QuestionVO> getList() {
		return list;
	}
	public void setList(ArrayList<QuestionVO> list) {
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
