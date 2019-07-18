package com.dassa.vo;

import java.sql.Date;

public class ShopReservationVO {
	private int shopReservationIdx;
	private int shopItemIdx;
	private String shopReservationName;
	private String shopReservationTel;
	private String shopReservationManager;
	private String  shopReservationState;
	private Date  shopReservationDate;
	public ShopReservationVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopReservationVO(int shopReservationIdx, int shopItemIdx, String shopReservationName,
			String shopReservationTel, String shopReservationManager, String shopReservationState,
			Date shopReservationDate) {
		super();
		this.shopReservationIdx = shopReservationIdx;
		this.shopItemIdx = shopItemIdx;
		this.shopReservationName = shopReservationName;
		this.shopReservationTel = shopReservationTel;
		this.shopReservationManager = shopReservationManager;
		this.shopReservationState = shopReservationState;
		this.shopReservationDate = shopReservationDate;
	}
	public int getShopReservationIdx() {
		return shopReservationIdx;
	}
	public void setShopReservationIdx(int shopReservationIdx) {
		this.shopReservationIdx = shopReservationIdx;
	}
	public int getShopItemIdx() {
		return shopItemIdx;
	}
	public void setShopItemIdx(int shopItemIdx) {
		this.shopItemIdx = shopItemIdx;
	}
	public String getShopReservationName() {
		return shopReservationName;
	}
	public void setShopReservationName(String shopReservationName) {
		this.shopReservationName = shopReservationName;
	}
	public String getShopReservationTel() {
		return shopReservationTel;
	}
	public void setShopReservationTel(String shopReservationTel) {
		this.shopReservationTel = shopReservationTel;
	}
	public String getShopReservationManager() {
		return shopReservationManager;
	}
	public void setShopReservationManager(String shopReservationManager) {
		this.shopReservationManager = shopReservationManager;
	}
	public String getShopReservationState() {
		return shopReservationState;
	}
	public void setShopReservationState(String shopReservationState) {
		this.shopReservationState = shopReservationState;
	}
	public Date getShopReservationDate() {
		return shopReservationDate;
	}
	public void setShopReservationDate(Date shopReservationDate) {
		this.shopReservationDate = shopReservationDate;
	}
	
}
