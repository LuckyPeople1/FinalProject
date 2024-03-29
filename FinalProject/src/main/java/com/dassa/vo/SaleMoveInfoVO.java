package com.dassa.vo;

import java.util.Date;

public class SaleMoveInfoVO {
	private int movePaymentIdx;
	private int applyIdx;
	private int driverIdx;
	private String movePaymentImpUid;
	private String movePaymentMerchantUid; 	// 결제 merchantUid;
	private String movePaymentPayMethod; 	// 결제 수단
	private String movePaymentPg;	   		// 결제 pg사
	private String movePaymentPgNumber; 	// 승인번호
	private String movePaymentCardName;  	// 결제 상세
	private int movePaymentAmount;  		// 결제 금액
	private Date movePaymentDate;     	// 결제 일시
	private String movePaymentCencelDate;  	// 취소 일시
	private String movePaymentStatus;
	private int guestIdx;			//사용자 고유번호
	private String guestName;		//사용자 이름
	private String guestPhone;		//사용자 핸드폰
	private String startAddr1;		//출발지 도로명주소
	private String startAddr2;		//출발지 지번주소
	private String startAddr3;		//출발지 상세주소
	private String startType;		//출발지 빌라/연립/오피스텔/주택/아파트
	private String startStructure;	//출발지 원룸/투룸/3룸
	private String startSize;		//출발지 10평이하/10~15평/30평이상
	private String startFloor;		//출발지 층수
	private String startElevator;	//출발지 엘리베이터 유무
	private String startParking;	//출발지 주차가능 여부 
	private String endAddr1;		//도착지 도로명주소
	private String endAddr2;		//도착지 지번주소
	private String endAddr3;		//도착지 상세주소
	private String endLatitude;		//도착지 위도
	private String endLongitude;	//도착지 경도
	private String endType;			//도착지 빌라/연립/오피스텔/주택/아파트
	private String endFloor;		//도착지 층수
	private String endElevator;		//도착지 엘리베이터 유무
	private String endParking;		//도착지 주차가능 여부
	private String applyDate;		//사용자가 이사 하는 날짜
	private String applyTime;		//이사 시작 시간 
	private String applyHope;		//이사종류(이사타입) 차량만/일반/반포장/포장
	private String applyHelp;		//고객도움 여부 사용자가 짐을 옮길 수 있는지
	private String applyMemo;		//사용자가 쓰는 메모 
	private String applyStatus;		//상태->/견적대기(사용자가 신청만 한상태(예약중)/ 견적완료(사용자는 견적확인중..)/최종완료  /0/1/2 
	private String applyRegDate;	//이사신청 날짜
	private String applyEndDate;	//예약 완료된 날짜
	private String applyCancelDate;	//예약 취소된 날짜
	private String driverName;
	private String driverPhone;
	private String driverIntroduce;
	private String userCar;			//session 값에서 가지고 오는 userCar
	private String driverMessage;	//기사가 작성한 메세지
	private String ladderState;		//사다리 여부 0이면 사다리 필요하지 않음. 1이면 사다리가 필요함 (radio 버튼)
	private String estimateAmount;  //이사 금액
	public SaleMoveInfoVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SaleMoveInfoVO(int movePaymentIdx, int applyIdx, int driverIdx, String movePaymentImpUid,
			String movePaymentMerchantUid, String movePaymentPayMethod, String movePaymentPg,
			String movePaymentPgNumber, String movePaymentCardName, int movePaymentAmount, Date movePaymentDate,
			String movePaymentCencelDate, String movePaymentStatus, int guestIdx, String guestName, String guestPhone,
			String startAddr1, String startAddr2, String startAddr3, String startType, String startStructure,
			String startSize, String startFloor, String startElevator, String startParking, String endAddr1,
			String endAddr2, String endAddr3, String endLatitude, String endLongitude, String endType, String endFloor,
			String endElevator, String endParking, String applyDate, String applyTime, String applyHope,
			String applyHelp, String applyMemo, String applyStatus, String applyRegDate, String applyEndDate,
			String applyCancelDate, String driverName, String driverPhone, String driverIntroduce, String userCar,
			String driverMessage, String ladderState, String estimateAmount) {
		super();
		this.movePaymentIdx = movePaymentIdx;
		this.applyIdx = applyIdx;
		this.driverIdx = driverIdx;
		this.movePaymentImpUid = movePaymentImpUid;
		this.movePaymentMerchantUid = movePaymentMerchantUid;
		this.movePaymentPayMethod = movePaymentPayMethod;
		this.movePaymentPg = movePaymentPg;
		this.movePaymentPgNumber = movePaymentPgNumber;
		this.movePaymentCardName = movePaymentCardName;
		this.movePaymentAmount = movePaymentAmount;
		this.movePaymentDate = movePaymentDate;
		this.movePaymentCencelDate = movePaymentCencelDate;
		this.movePaymentStatus = movePaymentStatus;
		this.guestIdx = guestIdx;
		this.guestName = guestName;
		this.guestPhone = guestPhone;
		this.startAddr1 = startAddr1;
		this.startAddr2 = startAddr2;
		this.startAddr3 = startAddr3;
		this.startType = startType;
		this.startStructure = startStructure;
		this.startSize = startSize;
		this.startFloor = startFloor;
		this.startElevator = startElevator;
		this.startParking = startParking;
		this.endAddr1 = endAddr1;
		this.endAddr2 = endAddr2;
		this.endAddr3 = endAddr3;
		this.endLatitude = endLatitude;
		this.endLongitude = endLongitude;
		this.endType = endType;
		this.endFloor = endFloor;
		this.endElevator = endElevator;
		this.endParking = endParking;
		this.applyDate = applyDate;
		this.applyTime = applyTime;
		this.applyHope = applyHope;
		this.applyHelp = applyHelp;
		this.applyMemo = applyMemo;
		this.applyStatus = applyStatus;
		this.applyRegDate = applyRegDate;
		this.applyEndDate = applyEndDate;
		this.applyCancelDate = applyCancelDate;
		this.driverName = driverName;
		this.driverPhone = driverPhone;
		this.driverIntroduce = driverIntroduce;
		this.userCar = userCar;
		this.driverMessage = driverMessage;
		this.ladderState = ladderState;
		this.estimateAmount = estimateAmount;
	}
	public int getMovePaymentIdx() {
		return movePaymentIdx;
	}
	public void setMovePaymentIdx(int movePaymentIdx) {
		this.movePaymentIdx = movePaymentIdx;
	}
	public int getApplyIdx() {
		return applyIdx;
	}
	public void setApplyIdx(int applyIdx) {
		this.applyIdx = applyIdx;
	}
	public int getDriverIdx() {
		return driverIdx;
	}
	public void setDriverIdx(int driverIdx) {
		this.driverIdx = driverIdx;
	}
	public String getMovePaymentImpUid() {
		return movePaymentImpUid;
	}
	public void setMovePaymentImpUid(String movePaymentImpUid) {
		this.movePaymentImpUid = movePaymentImpUid;
	}
	public String getMovePaymentMerchantUid() {
		return movePaymentMerchantUid;
	}
	public void setMovePaymentMerchantUid(String movePaymentMerchantUid) {
		this.movePaymentMerchantUid = movePaymentMerchantUid;
	}
	public String getMovePaymentPayMethod() {
		return movePaymentPayMethod;
	}
	public void setMovePaymentPayMethod(String movePaymentPayMethod) {
		this.movePaymentPayMethod = movePaymentPayMethod;
	}
	public String getMovePaymentPg() {
		return movePaymentPg;
	}
	public void setMovePaymentPg(String movePaymentPg) {
		this.movePaymentPg = movePaymentPg;
	}
	public String getMovePaymentPgNumber() {
		return movePaymentPgNumber;
	}
	public void setMovePaymentPgNumber(String movePaymentPgNumber) {
		this.movePaymentPgNumber = movePaymentPgNumber;
	}
	public String getMovePaymentCardName() {
		return movePaymentCardName;
	}
	public void setMovePaymentCardName(String movePaymentCardName) {
		this.movePaymentCardName = movePaymentCardName;
	}
	public int getMovePaymentAmount() {
		return movePaymentAmount;
	}
	public void setMovePaymentAmount(int movePaymentAmount) {
		this.movePaymentAmount = movePaymentAmount;
	}
	public Date getMovePaymentDate() {
		return movePaymentDate;
	}
	public void setMovePaymentDate(Date movePaymentDate) {
		this.movePaymentDate = movePaymentDate;
	}
	public String getMovePaymentCencelDate() {
		return movePaymentCencelDate;
	}
	public void setMovePaymentCencelDate(String movePaymentCencelDate) {
		this.movePaymentCencelDate = movePaymentCencelDate;
	}
	public String getMovePaymentStatus() {
		return movePaymentStatus;
	}
	public void setMovePaymentStatus(String movePaymentStatus) {
		this.movePaymentStatus = movePaymentStatus;
	}
	public int getGuestIdx() {
		return guestIdx;
	}
	public void setGuestIdx(int guestIdx) {
		this.guestIdx = guestIdx;
	}
	public String getGuestName() {
		return guestName;
	}
	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}
	public String getGuestPhone() {
		return guestPhone;
	}
	public void setGuestPhone(String guestPhone) {
		this.guestPhone = guestPhone;
	}
	public String getStartAddr1() {
		return startAddr1;
	}
	public void setStartAddr1(String startAddr1) {
		this.startAddr1 = startAddr1;
	}
	public String getStartAddr2() {
		return startAddr2;
	}
	public void setStartAddr2(String startAddr2) {
		this.startAddr2 = startAddr2;
	}
	public String getStartAddr3() {
		return startAddr3;
	}
	public void setStartAddr3(String startAddr3) {
		this.startAddr3 = startAddr3;
	}
	public String getStartType() {
		return startType;
	}
	public void setStartType(String startType) {
		this.startType = startType;
	}
	public String getStartStructure() {
		return startStructure;
	}
	public void setStartStructure(String startStructure) {
		this.startStructure = startStructure;
	}
	public String getStartSize() {
		return startSize;
	}
	public void setStartSize(String startSize) {
		this.startSize = startSize;
	}
	public String getStartFloor() {
		return startFloor;
	}
	public void setStartFloor(String startFloor) {
		this.startFloor = startFloor;
	}
	public String getStartElevator() {
		return startElevator;
	}
	public void setStartElevator(String startElevator) {
		this.startElevator = startElevator;
	}
	public String getStartParking() {
		return startParking;
	}
	public void setStartParking(String startParking) {
		this.startParking = startParking;
	}
	public String getEndAddr1() {
		return endAddr1;
	}
	public void setEndAddr1(String endAddr1) {
		this.endAddr1 = endAddr1;
	}
	public String getEndAddr2() {
		return endAddr2;
	}
	public void setEndAddr2(String endAddr2) {
		this.endAddr2 = endAddr2;
	}
	public String getEndAddr3() {
		return endAddr3;
	}
	public void setEndAddr3(String endAddr3) {
		this.endAddr3 = endAddr3;
	}
	public String getEndLatitude() {
		return endLatitude;
	}
	public void setEndLatitude(String endLatitude) {
		this.endLatitude = endLatitude;
	}
	public String getEndLongitude() {
		return endLongitude;
	}
	public void setEndLongitude(String endLongitude) {
		this.endLongitude = endLongitude;
	}
	public String getEndType() {
		return endType;
	}
	public void setEndType(String endType) {
		this.endType = endType;
	}
	public String getEndFloor() {
		return endFloor;
	}
	public void setEndFloor(String endFloor) {
		this.endFloor = endFloor;
	}
	public String getEndElevator() {
		return endElevator;
	}
	public void setEndElevator(String endElevator) {
		this.endElevator = endElevator;
	}
	public String getEndParking() {
		return endParking;
	}
	public void setEndParking(String endParking) {
		this.endParking = endParking;
	}
	public String getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}
	public String getApplyTime() {
		return applyTime;
	}
	public void setApplyTime(String applyTime) {
		this.applyTime = applyTime;
	}
	public String getApplyHope() {
		return applyHope;
	}
	public void setApplyHope(String applyHope) {
		this.applyHope = applyHope;
	}
	public String getApplyHelp() {
		return applyHelp;
	}
	public void setApplyHelp(String applyHelp) {
		this.applyHelp = applyHelp;
	}
	public String getApplyMemo() {
		return applyMemo;
	}
	public void setApplyMemo(String applyMemo) {
		this.applyMemo = applyMemo;
	}
	public String getApplyStatus() {
		return applyStatus;
	}
	public void setApplyStatus(String applyStatus) {
		this.applyStatus = applyStatus;
	}
	public String getApplyRegDate() {
		return applyRegDate;
	}
	public void setApplyRegDate(String applyRegDate) {
		this.applyRegDate = applyRegDate;
	}
	public String getApplyEndDate() {
		return applyEndDate;
	}
	public void setApplyEndDate(String applyEndDate) {
		this.applyEndDate = applyEndDate;
	}
	public String getApplyCancelDate() {
		return applyCancelDate;
	}
	public void setApplyCancelDate(String applyCancelDate) {
		this.applyCancelDate = applyCancelDate;
	}
	public String getDriverName() {
		return driverName;
	}
	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}
	public String getDriverPhone() {
		return driverPhone;
	}
	public void setDriverPhone(String driverPhone) {
		this.driverPhone = driverPhone;
	}
	public String getDriverIntroduce() {
		return driverIntroduce;
	}
	public void setDriverIntroduce(String driverIntroduce) {
		this.driverIntroduce = driverIntroduce;
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
	
}
