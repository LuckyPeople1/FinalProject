package com.dassa.vo;

import java.util.Date;

public class MovePaymentVO {
	private int movePaymentIdx;       		// 이사 결제 idx
	private int applyIdx;             		// 사용자 idx
	private int driverIdx;			  		// 기사  idx;
	private String movePaymentImpUid; 		// 결제 impUid; 
	private String movePaymentMerchantUid; 	// 결제 merchantUid;
	private String movePaymentPayMethod; 	// 결제 수단
	private String movePaymentPg;	   		// 결제 pg사
	private String movePaymentPgNumber; 	// 승인번호
	private String movePaymentCardName;  	// 결제 상세
	private int movePaymentAmount;  		// 결제 금액
	private Date movePaymentDate;     	// 결제 일시
	private String movePaymentCencelDate;  	// 취소 일시
	private String movePaymentStatus;   	// 결제상태
	private String movePaymentUserName;
	private String movePaymentUserEmail;
	private String movePaymentUserId;
	
	public String getMovePaymentUserName() {
		return movePaymentUserName;
	}
	public void setMovePaymentUserName(String movePaymentUserName) {
		this.movePaymentUserName = movePaymentUserName;
	}
	public String getMovePaymentUserEmail() {
		return movePaymentUserEmail;
	}
	public void setMovePaymentUserEmail(String movePaymentUserEmail) {
		this.movePaymentUserEmail = movePaymentUserEmail;
	}
	public String getMovePaymentUserId() {
		return movePaymentUserId;
	}
	public void setMovePaymentUserId(String movePaymentUserId) {
		this.movePaymentUserId = movePaymentUserId;
	}
	public MovePaymentVO(int movePaymentIdx, int applyIdx, int driverIdx, String movePaymentImpUid,
			String movePaymentMerchantUid, String movePaymentPayMethod, String movePaymentPg,
			String movePaymentPgNumber, String movePaymentCardName, int movePaymentAmount, Date movePaymentDate,
			String movePaymentCencelDate, String movePaymentStatus, String movePaymentUserName,
			String movePaymentUserEmail, String movePaymentUserId) {
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
		this.movePaymentUserName = movePaymentUserName;
		this.movePaymentUserEmail = movePaymentUserEmail;
		this.movePaymentUserId = movePaymentUserId;
	}
	public MovePaymentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MovePaymentVO(int movePaymentIdx, int applyIdx, int driverIdx, String movePaymentImpUid,
			String movePaymentMerchantUid, String movePaymentPayMethod, String movePaymentPg,
			String movePaymentPgNumber, String movePaymentCardName, int movePaymentAmount, Date movePaymentDate,
			String movePaymentCencelDate, String movePaymentStatus) {
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
	
}
