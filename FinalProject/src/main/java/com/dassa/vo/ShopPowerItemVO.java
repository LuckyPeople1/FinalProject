package com.dassa.vo;

import java.sql.Date;

public class ShopPowerItemVO {
	private int shopPowerItemIdx;
	private int shopPowerItemState;
	private int shopItemIdx;
	private int userIdx;
	private Date shopPowerItemRegDate;
	private Date shopPowerItemEndDate;
	public ShopPowerItemVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopPowerItemVO(int shopPowerItemIdx, int shopPowerItemState, int shopItemIdx, int userIdx,
			Date shopPowerItemRegDate, Date shopPowerItemEndDate) {
		super();
		this.shopPowerItemIdx = shopPowerItemIdx;
		this.shopPowerItemState = shopPowerItemState;
		this.shopItemIdx = shopItemIdx;
		this.userIdx = userIdx;
		this.shopPowerItemRegDate = shopPowerItemRegDate;
		this.shopPowerItemEndDate = shopPowerItemEndDate;
	}
	public int getShopPowerItemIdx() {
		return shopPowerItemIdx;
	}
	public void setShopPowerItemIdx(int shopPowerItemIdx) {
		this.shopPowerItemIdx = shopPowerItemIdx;
	}
	public int getShopPowerItemState() {
		return shopPowerItemState;
	}
	public void setShopPowerItemState(int shopPowerItemState) {
		this.shopPowerItemState = shopPowerItemState;
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
	public Date getShopPowerItemRegDate() {
		return shopPowerItemRegDate;
	}
	public void setShopPowerItemRegDate(Date shopPowerItemRegDate) {
		this.shopPowerItemRegDate = shopPowerItemRegDate;
	}
	public Date getShopPowerItemEndDate() {
		return shopPowerItemEndDate;
	}
	public void setShopPowerItemEndDate(Date shopPowerItemEndDate) {
		this.shopPowerItemEndDate = shopPowerItemEndDate;
	}
}
