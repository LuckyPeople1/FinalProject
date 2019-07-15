package com.dassa.vo;

import java.sql.Date;

public class DriverMypageReviewVO {
	private int reviewIdx;
	private int driverIdx;
	private int applyIdx;
	private int reviewStar;
	private String reviewMessage;
	private String extraMoney;
	private Date reviewDate;
	private String estimateAmount;
	public DriverMypageReviewVO(int reviewIdx, int driverIdx, int applyIdx, int reviewStar, String reviewMessage,
			String extraMoney, Date reviewDate, String estimateAmount) {
		super();
		this.reviewIdx = reviewIdx;
		this.driverIdx = driverIdx;
		this.applyIdx = applyIdx;
		this.reviewStar = reviewStar;
		this.reviewMessage = reviewMessage;
		this.extraMoney = extraMoney;
		this.reviewDate = reviewDate;
		this.estimateAmount = estimateAmount;
	}
	public DriverMypageReviewVO() {
		super();
	}
	public int getReviewIdx() {
		return reviewIdx;
	}
	public void setReviewIdx(int reviewIdx) {
		this.reviewIdx = reviewIdx;
	}
	public int getDriverIdx() {
		return driverIdx;
	}
	public void setDriverIdx(int driverIdx) {
		this.driverIdx = driverIdx;
	}
	public int getApplyIdx() {
		return applyIdx;
	}
	public void setApplyIdx(int applyIdx) {
		this.applyIdx = applyIdx;
	}
	public int getReviewStar() {
		return reviewStar;
	}
	public void setReviewStar(int reviewStar) {
		this.reviewStar = reviewStar;
	}
	public String getReviewMessage() {
		return reviewMessage;
	}
	public void setReviewMessage(String reviewMessage) {
		this.reviewMessage = reviewMessage;
	}
	public String getExtraMoney() {
		return extraMoney;
	}
	public void setExtraMoney(String extraMoney) {
		this.extraMoney = extraMoney;
	}
	public Date getReviewDate() {
		return reviewDate;
	}
	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}
	public String getEstimateAmount() {
		return estimateAmount;
	}
	public void setEstimateAmount(String estimateAmount) {
		this.estimateAmount = estimateAmount;
	}
	
	

}
