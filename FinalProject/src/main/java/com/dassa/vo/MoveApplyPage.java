package com.dassa.vo;

import java.util.ArrayList;

public class MoveApplyPage {
	private ArrayList<MoveApplyVO> list;
	private String pageNavi;
	public MoveApplyPage() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MoveApplyPage(ArrayList<MoveApplyVO> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
	}
	public ArrayList<MoveApplyVO> getList() {
		return list;
	}
	public void setList(ArrayList<MoveApplyVO> list) {
		this.list = list;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}

	
}
