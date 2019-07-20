package com.dassa.vo;

public class DriverVO { //입찰관리 상세보기 부분에서 최종결정을 할때 INSERT 하는 VO
	
	private int driverIdx;			//기사 고유값
	private int applyIdx;			//사용자가 신청한 물품들의 고육 값	
	private String userCar;			//session 값에서 가지고 오는 userCar
	private String driverMessage;	//기사가 작성한 메세지
	private String ladderState;		//사다리 여부 0이면 사다리 필요하지 않음. 1이면 사다리가 필요함 (radio 버튼)
	private String estimateAmount;	//기사가 견적낸 최종금액
	private int auctionState;		//0번 진행중 1번 완료 2번 취소 
	public DriverVO(int driverIdx, int applyIdx, String userCar, String driverMessage, String ladderState,
			String estimateAmount, int auctionState) {
		super();
		this.driverIdx = driverIdx;
		this.applyIdx = applyIdx;
		this.userCar = userCar;
		this.driverMessage = driverMessage;
		this.ladderState = ladderState;
		this.estimateAmount = estimateAmount;
		this.auctionState = auctionState;
	}
	public DriverVO() {
		super();
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
	public String getUserCar() {
		return userCar;
	}
	public void setUserCar(String userCar) {
		this.userCar = userCar;
	}
	public String getDriverMessage() {
		return driverMessage;
	}
	public void setDriverMessage(String driverMessage) {
		this.driverMessage = driverMessage;
	}
	public String getLadderState() {
		return ladderState;
	}
	public void setLadderState(String ladderState) {
		this.ladderState = ladderState;
	}
	public String getEstimateAmount() {
		return estimateAmount;
	}
	public void setEstimateAmount(String estimateAmount) {
		this.estimateAmount = estimateAmount;
	}
	public int getAuctionState() {
		return auctionState;
	}
	public void setAuctionState(int auctionState) {
		this.auctionState = auctionState;
	}
	
}
