package com.dassa.vo;

import java.util.ArrayList;

public class MoveApplyPage {
	private ArrayList<MoveApplyVO> list;
	private ArrayList<DriverReviewVO> reList;
	private String pageNavi;
	public MoveApplyPage() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MoveApplyPage(ArrayList<MoveApplyVO> list, ArrayList<DriverReviewVO> reList, String pageNavi) {
		super();
		this.list = list;
		this.reList = reList;
		this.pageNavi = pageNavi;
	}
	public ArrayList<MoveApplyVO> getList() {
		return list;
	}
	public void setList(ArrayList<MoveApplyVO> list) {
		this.list = list;
	}
	public ArrayList<DriverReviewVO> getReList() {
		return reList;
	}
	public void setReList(ArrayList<DriverReviewVO> reList) {
		this.reList = reList;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
}
