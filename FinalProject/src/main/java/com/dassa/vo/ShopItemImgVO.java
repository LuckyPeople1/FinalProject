package com.dassa.vo;

public class ShopItemImgVO {
	private int shopImgIdx;
	private int shopItemIdx;
	private String shopImgName;
	private String shopImgPath;
	public ShopItemImgVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopItemImgVO(int shopImgIdx, int shopItemIdx, String shopImgName, String shopImgPath) {
		super();
		this.shopImgIdx = shopImgIdx;
		this.shopItemIdx = shopItemIdx;
		this.shopImgName = shopImgName;
		this.shopImgPath = shopImgPath;
	}
	public int getShopImgIdx() {
		return shopImgIdx;
	}
	public void setShopImgIdx(int shopImgIdx) {
		this.shopImgIdx = shopImgIdx;
	}
	public int getShopItemIdx() {
		return shopItemIdx;
	}
	public void setShopItemIdx(int shopItemIdx) {
		this.shopItemIdx = shopItemIdx;
	}
	public String getShopImgName() {
		return shopImgName;
	}
	public void setShopImgName(String shopImgName) {
		this.shopImgName = shopImgName;
	}
	public String getShopImgPath() {
		return shopImgPath;
	}
	public void setShopImgPath(String shopImgPath) {
		this.shopImgPath = shopImgPath;
	}
	
}
