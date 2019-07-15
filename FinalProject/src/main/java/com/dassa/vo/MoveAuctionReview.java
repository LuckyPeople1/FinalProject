package com.dassa.vo;

public class MoveAuctionReview {
	private double reviewStarAVG;
	private int reviewCount;
	public MoveAuctionReview() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MoveAuctionReview(double reviewStarAVG, int reviewCount) {
		super();
		this.reviewStarAVG = reviewStarAVG;
		this.reviewCount = reviewCount;
	}
	public double getReviewStarAVG() {
		return reviewStarAVG;
	}
	public void setReviewStarAVG(double reviewStarAVG) {
		this.reviewStarAVG = reviewStarAVG;
	}
	public int getReviewCount() {
		return reviewCount;
	}
	public void setReviewCount(int reviewCount) {
		this.reviewCount = reviewCount;
	}
	
	
}
