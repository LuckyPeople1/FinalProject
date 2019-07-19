package com.dassa.vo;

import java.util.List;

public class UserPageDataVO {
	private List<UserVO> list;
	private String pageNavi;
	
	public List<UserVO> getList() {
		return list;
	}
	public void setList(List<UserVO> list) {
		this.list = list;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	
	public UserPageDataVO(List<UserVO> list, String pageNavi) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
	}
	
	public UserPageDataVO() {
		super();
		// TODO Auto-generated constructor stub
	}

}
