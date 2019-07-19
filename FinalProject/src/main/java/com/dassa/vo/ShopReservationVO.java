package com.dassa.vo;

import java.sql.Date;

public class ShopReservationVO {
	private int shopReservationIdx; 			//예약번호
	private int userIdx;								//예약한 부동산
	private int shopItemIdx;						//예약한 매물
	private String shopReservationName;	//예약한 고객이름
	private String shopReservationTel;		//예약한 고객번호
	private String shopReservationManager;//예약담당자
	private String  shopReservationState;	//예약상태
	private Date  shopReservationDate;		//예약신청일
	public ShopReservationVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopReservationVO(int shopReservationIdx, int userIdx, int shopItemIdx, String shopReservationName,
			String shopReservationTel, String shopReservationManager, String shopReservationState,
			Date shopReservationDate) {
		super();
		this.shopReservationIdx = shopReservationIdx;
		this.userIdx = userIdx;
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
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
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
