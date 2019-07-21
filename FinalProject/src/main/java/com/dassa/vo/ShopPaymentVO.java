package com.dassa.vo;

import java.util.Date;

public class ShopPaymentVO {
	private int shopPaymentIdx;
	private int userIdx;
	private String shopPaymentName;
	private String shopPaymentImpUid;
	private String shopPaymentMerchantUid;
	private String shopPaymentMethod;
	private String shopPaymentPg;
	private String shopPaymentPgNumber;
	private String shopPaymentCardName;
	private Date shopPaymentDate;
	private Date shopPaymentLastDate;
	private int shopPaymentPrice;
	private String shopPaymentStatus;
	private String userId;
	private String userName;
	private String userEmail;
	public ShopPaymentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ShopPaymentVO(int shopPaymentIdx, int userIdx, String shopPaymentName, String shopPaymentImpUid,
			String shopPaymentMerchantUid, String shopPaymentMethod, String shopPaymentPg, String shopPaymentPgNumber,
			String shopPaymentCardName, Date shopPaymentDate, Date shopPaymentLastDate, int shopPaymentPrice,
			String shopPaymentStatus, String userId, String userName, String userEmail) {
		super();
		this.shopPaymentIdx = shopPaymentIdx;
		this.userIdx = userIdx;
		this.shopPaymentName = shopPaymentName;
		this.shopPaymentImpUid = shopPaymentImpUid;
		this.shopPaymentMerchantUid = shopPaymentMerchantUid;
		this.shopPaymentMethod = shopPaymentMethod;
		this.shopPaymentPg = shopPaymentPg;
		this.shopPaymentPgNumber = shopPaymentPgNumber;
		this.shopPaymentCardName = shopPaymentCardName;
		this.shopPaymentDate = shopPaymentDate;
		this.shopPaymentLastDate = shopPaymentLastDate;
		this.shopPaymentPrice = shopPaymentPrice;
		this.shopPaymentStatus = shopPaymentStatus;
		this.userId = userId;
		this.userName = userName;
		this.userEmail = userEmail;
	}

	public ShopPaymentVO(int shopPaymentIdx, int userIdx, String shopPaymentName, String shopPaymentImpUid,
			String shopPaymentMerchantUid, String shopPaymentMethod, String shopPaymentPg, String shopPaymentPgNumber,
			String shopPaymentCardName, Date shopPaymentDate, Date shopPaymentLastDate, int shopPaymentPrice,
			String shopPaymentStatus) {
		super();
		this.shopPaymentIdx = shopPaymentIdx;
		this.userIdx = userIdx;
		this.shopPaymentName = shopPaymentName;
		this.shopPaymentImpUid = shopPaymentImpUid;
		this.shopPaymentMerchantUid = shopPaymentMerchantUid;
		this.shopPaymentMethod = shopPaymentMethod;
		this.shopPaymentPg = shopPaymentPg;
		this.shopPaymentPgNumber = shopPaymentPgNumber;
		this.shopPaymentCardName = shopPaymentCardName;
		this.shopPaymentDate = shopPaymentDate;
		this.shopPaymentLastDate = shopPaymentLastDate;
		this.shopPaymentPrice = shopPaymentPrice;
		this.shopPaymentStatus = shopPaymentStatus;
	}
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
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
	public String getShopPaymentName() {
		return shopPaymentName;
	}
	public void setShopPaymentName(String shopPaymentName) {
		this.shopPaymentName = shopPaymentName;
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
	public Date getShopPaymentLastDate() {
		return shopPaymentLastDate;
	}
	public void setShopPaymentLastDate(Date shopPaymentLastDate) {
		this.shopPaymentLastDate = shopPaymentLastDate;
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
