package com.dassa.vo;

import java.util.ArrayList;

public class MoveAuctionListVO {
	private ArrayList<MoveAuctionVO> auList;
	private ArrayList<MoveAuctionReview> reList;
	public MoveAuctionListVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MoveAuctionListVO(ArrayList<MoveAuctionVO> auList, ArrayList<MoveAuctionReview> reList) {
		super();
		this.auList = auList;
		this.reList = reList;
	}
	public ArrayList<MoveAuctionVO> getAuList() {
		return auList;
	}
	public void setAuList(ArrayList<MoveAuctionVO> auList) {
		this.auList = auList;
	}
	public ArrayList<MoveAuctionReview> getReList() {
		return reList;
	}
	public void setReList(ArrayList<MoveAuctionReview> reList) {
		this.reList = reList;
	}
	
	
}
