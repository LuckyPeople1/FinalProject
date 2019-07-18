package com.dassa.vo;

import java.sql.Date;

public class ShopPremiumItemVO {
	private int shopPremiumItemIdx;
	private String shopPremiumState;
	private int shopItemIdx;
	private int userIdx;
	private Date shopPremiumItemRegDate;
	private Date shopPremiumItemEndDate;
	public ShopPremiumItemVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopPremiumItemVO(int shopPremiumItemIdx, String shopPremiumState, int shopItemIdx, int userIdx,
			Date shopPremiumItemRegDate, Date shopPremiumItemEndDate) {
		super();
		this.shopPremiumItemIdx = shopPremiumItemIdx;
		this.shopPremiumState = shopPremiumState;
		this.shopItemIdx = shopItemIdx;
		this.userIdx = userIdx;
		this.shopPremiumItemRegDate = shopPremiumItemRegDate;
		this.shopPremiumItemEndDate = shopPremiumItemEndDate;
	}
	public int getShopPremiumItemIdx() {
		return shopPremiumItemIdx;
	}
	public void setShopPremiumItemIdx(int shopPremiumItemIdx) {
		this.shopPremiumItemIdx = shopPremiumItemIdx;
	}
	public String getShopPremiumState() {
		return shopPremiumState;
	}
	public void setShopPremiumState(String shopPremiumState) {
		this.shopPremiumState = shopPremiumState;
	}
	public int getShopItemIdx() {
		return shopItemIdx;
	}
	public void setShopItemIdx(int shopItemIdx) {
		this.shopItemIdx = shopItemIdx;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public Date getShopPremiumItemRegDate() {
		return shopPremiumItemRegDate;
	}
	public void setShopPremiumItemRegDate(Date shopPremiumItemRegDate) {
		this.shopPremiumItemRegDate = shopPremiumItemRegDate;
	}
	public Date getShopPremiumItemEndDate() {
		return shopPremiumItemEndDate;
	}
	public void setShopPremiumItemEndDate(Date shopPremiumItemEndDate) {
		this.shopPremiumItemEndDate = shopPremiumItemEndDate;
	}
	
}
