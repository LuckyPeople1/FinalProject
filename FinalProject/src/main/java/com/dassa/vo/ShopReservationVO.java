package com.dassa.vo;

import java.sql.Date;

public class ShopReservationVO {
	private int shopReservationIdx; 			//예약번호
	private int shopIdx;						//예약한 부동산
	private String shopName;					//예약한 부동산
	private int shopItemIdx;					//에약한 매물
	private String shopItemTitle;				//예약한 매물
	private String shopItemManager;				//담당자
	private int userIdx;
	private String userName;
	private String userTel;
	private String shopReservationState;
	private Date shopReservationDate;
	public ShopReservationVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopReservationVO(int shopReservationIdx, int shopIdx, String shopName, int shopItemIdx,
			String shopItemTitle, String shopItemManager, int userIdx, String userName, String userTel,
			String shopReservationState, Date shopReservationDate) {
		super();
		this.shopReservationIdx = shopReservationIdx;
		this.shopIdx = shopIdx;
		this.shopName = shopName;
		this.shopItemIdx = shopItemIdx;
		this.shopItemTitle = shopItemTitle;
		this.shopItemManager = shopItemManager;
		this.userIdx = userIdx;
		this.userName = userName;
		this.userTel = userTel;
		this.shopReservationState = shopReservationState;
		this.shopReservationDate = shopReservationDate;
	}
	public int getShopReservationIdx() {
		return shopReservationIdx;
	}
	public void setShopReservationIdx(int shopReservationIdx) {
		this.shopReservationIdx = shopReservationIdx;
	}
	public int getShopIdx() {
		return shopIdx;
	}
	public void setShopIdx(int shopIdx) {
		this.shopIdx = shopIdx;
	}
	public String getShopName() {
		return shopName;
	}
	public void setShopName(String shopName) {
		this.shopName = shopName;
	}
	public int getShopItemIdx() {
		return shopItemIdx;
	}
	public void setShopItemIdx(int shopItemIdx) {
		this.shopItemIdx = shopItemIdx;
	}
	public String getShopItemTitle() {
		return shopItemTitle;
	}
	public void setShopItemTitle(String shopItemTitle) {
		this.shopItemTitle = shopItemTitle;
	}
	public String getShopItemManager() {
		return shopItemManager;
	}
	public void setShopItemManager(String shopItemManager) {
		this.shopItemManager = shopItemManager;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
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
