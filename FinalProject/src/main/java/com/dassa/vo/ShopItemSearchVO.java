package com.dassa.vo;

public class ShopItemSearchVO {
	private int type;
	private String manager;
	private String keyword;
	public ShopItemSearchVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopItemSearchVO(int type, String manager, String keyword) {
		super();
		this.type = type;
		this.manager = manager;
		this.keyword = keyword;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
}
