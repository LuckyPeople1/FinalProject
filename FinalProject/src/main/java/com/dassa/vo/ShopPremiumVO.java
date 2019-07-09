package com.dassa.vo;

public class ShopPremiumVO {
	private int shopItemIdx;
	private String shopItemName;
	private String shopItemArea;
	private String shopItemDetailArea;
	private int shopItemPrice;
	private String shopItemState;
	public ShopPremiumVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopPremiumVO(int shopItemIdx, String shopItemName, String shopItemArea, String shopItemDetailArea,
			int shopItemPrice, String shopItemState) {
		super();
		this.shopItemIdx = shopItemIdx;
		this.shopItemName = shopItemName;
		this.shopItemArea = shopItemArea;
		this.shopItemDetailArea = shopItemDetailArea;
		this.shopItemPrice = shopItemPrice;
		this.shopItemState = shopItemState;
	}
	public int getShopItemIdx() {
		return shopItemIdx;
	}
	public void setShopItemIdx(int shopItemIdx) {
		this.shopItemIdx = shopItemIdx;
	}
	public String getShopItemName() {
		return shopItemName;
	}
	public void setShopItemName(String shopItemName) {
		this.shopItemName = shopItemName;
	}
	public String getShopItemArea() {
		return shopItemArea;
	}
	public void setShopItemArea(String shopItemArea) {
		this.shopItemArea = shopItemArea;
	}
	public String getShopItemDetailArea() {
		return shopItemDetailArea;
	}
	public void setShopItemDetailArea(String shopItemDetailArea) {
		this.shopItemDetailArea = shopItemDetailArea;
	}
	public int getShopItemPrice() {
		return shopItemPrice;
	}
	public void setShopItemPrice(int shopItemPrice) {
		this.shopItemPrice = shopItemPrice;
	}
	public String getShopItemState() {
		return shopItemState;
	}
	public void setShopItemState(String shopItemState) {
		this.shopItemState = shopItemState;
	}
	
}
