package com.dassa.vo;

import java.util.Date;

public class ShopPaymentVO {
	private int shopPaymentIdx;
	private int userIdx;
	private String shopPaymentImpUid;
	private String shopPaymentMerchantUid;
	private String shopPaymentMethod;
	private String shopPaymentPg;
	private String shopPaymentPgNumber;
	private String shopPaymentCardName;
	private Date shopPaymentDate;
	private int shopPaymentPrice;
	private String shopPaymentStatus;
	public ShopPaymentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopPaymentVO(int shopPaymentIdx, int userIdx, String shopPaymentImpUid, String shopPaymentMerchantUid,
			String shopPaymentMethod, String shopPaymentPg, String shopPaymentPgNumber, String shopPaymentCardName,
			Date shopPaymentDate, int shopPaymentPrice, String shopPaymentStatus) {
		super();
		this.shopPaymentIdx = shopPaymentIdx;
		this.userIdx = userIdx;
		this.shopPaymentImpUid = shopPaymentImpUid;
		this.shopPaymentMerchantUid = shopPaymentMerchantUid;
		this.shopPaymentMethod = shopPaymentMethod;
		this.shopPaymentPg = shopPaymentPg;
		this.shopPaymentPgNumber = shopPaymentPgNumber;
		this.shopPaymentCardName = shopPaymentCardName;
		this.shopPaymentDate = shopPaymentDate;
		this.shopPaymentPrice = shopPaymentPrice;
		this.shopPaymentStatus = shopPaymentStatus;
	}
	public int getShopPaymentIdx() {
		return shopPaymentIdx;
	}
	public void setShopPaymentIdx(int shopPaymentIdx) {
		this.shopPaymentIdx = shopPaymentIdx;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public String getShopPaymentImpUid() {
		return shopPaymentImpUid;
	}
	public void setShopPaymentImpUid(String shopPaymentImpUid) {
		this.shopPaymentImpUid = shopPaymentImpUid;
	}
	public String getShopPaymentMerchantUid() {
		return shopPaymentMerchantUid;
	}
	public void setShopPaymentMerchantUid(String shopPaymentMerchantUid) {
		this.shopPaymentMerchantUid = shopPaymentMerchantUid;
	}
	public String getShopPaymentMethod() {
		return shopPaymentMethod;
	}
	public void setShopPaymentMethod(String shopPaymentMethod) {
		this.shopPaymentMethod = shopPaymentMethod;
	}
	public String getShopPaymentPg() {
		return shopPaymentPg;
	}
	public void setShopPaymentPg(String shopPaymentPg) {
		this.shopPaymentPg = shopPaymentPg;
	}
	public String getShopPaymentPgNumber() {
		return shopPaymentPgNumber;
	}
	public void setShopPaymentPgNumber(String shopPaymentPgNumber) {
		this.shopPaymentPgNumber = shopPaymentPgNumber;
	}
	public String getShopPaymentCardName() {
		return shopPaymentCardName;
	}
	public void setShopPaymentCardName(String shopPaymentCardName) {
		this.shopPaymentCardName = shopPaymentCardName;
	}
	public Date getShopPaymentDate() {
		return shopPaymentDate;
	}
	public void setShopPaymentDate(Date shopPaymentDate) {
		this.shopPaymentDate = shopPaymentDate;
	}
	public int getShopPaymentPrice() {
		return shopPaymentPrice;
	}
	public void setShopPaymentPrice(int shopPaymentPrice) {
		this.shopPaymentPrice = shopPaymentPrice;
	}
	public String getShopPaymentStatus() {
		return shopPaymentStatus;
	}
	public void setShopPaymentStatus(String shopPaymentStatus) {
		this.shopPaymentStatus = shopPaymentStatus;
	}
	
}
