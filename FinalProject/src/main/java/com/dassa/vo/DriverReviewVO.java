package com.dassa.vo;

import java.sql.Date;

public class DriverReviewVO {
	private int reviewIdx;
	private int driverIdx;
	private int applyIdx;
	private int reviewStar;
	private String reviewMessage;
	private String extraMoney;
	private Date review_date;
	public DriverReviewVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DriverReviewVO(int reviewIdx, int driverIdx, int applyIdx, int reviewStar, String reviewMessage,
			String extraMoney, Date review_date) {
		super();
		this.reviewIdx = reviewIdx;
		this.driverIdx = driverIdx;
		this.applyIdx = applyIdx;
		this.reviewStar = reviewStar;
		this.reviewMessage = reviewMessage;
		this.extraMoney = extraMoney;
		this.review_date = review_date;
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
	public Date getReview_date() {
		return review_date;
	}
	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}
	
}
