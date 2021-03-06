package com.dassa.vo;

import java.sql.Date;

public class UserVO {
	private int 	userIdx;				//고유번호로 쓸것.
	private String 	userId;
	private String 	userPw;
	private String 	userName;
	private String  userAddr;
	private String  addrCode;
	private String 	userPhone;
	private String 	userEmail;
	private String  proFilename;			//프로필 사진 파일명
	private String  proFilepath;			//프로필 사진 경로
	private String 	userIntroduce;			//이사 소개
	private String 	registrationNumber; 	//사업자 등록번호
	private String	businessNumber;			//사업자 등록번호
	private String 	userCar;				//운행차량
	private String 	compFilename;			//등록증 이름
	private String 	compFilepath;			//등록증 경로
	private String 	userType;				//회원 타입
	private String  socialId;				//소셜 로그인 할 때 필요
	private Date	enrollDate;
	private String  status;					//회원 상태
	private Date    outDate;				//탈퇴 일
	private String  companyName;			//회사명
	
	private String  type;
	private String  userStatus;				//상태 변경
	private String  userType1;
	private String  userType2;
	
	public UserVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserVO(int userIdx, String userId, String userPw, String userName, String userAddr, String addrCode,
			String userPhone, String userEmail, String proFilename, String proFilepath, String userIntroduce,
			String registrationNumber, String businessNumber, String userCar, String compFilename, String compFilepath,
			String userType, String socialId, Date enrollDate, String status, Date outDate, String companyName,
			String type, String userStatus, String userType1, String userType2) {
		super();
		this.userIdx = userIdx;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userAddr = userAddr;
		this.addrCode = addrCode;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.proFilename = proFilename;
		this.proFilepath = proFilepath;
		this.userIntroduce = userIntroduce;
		this.registrationNumber = registrationNumber;
		this.businessNumber = businessNumber;
		this.userCar = userCar;
		this.compFilename = compFilename;
		this.compFilepath = compFilepath;
		this.userType = userType;
		this.socialId = socialId;
		this.enrollDate = enrollDate;
		this.status = status;
		this.outDate = outDate;
		this.companyName = companyName;
		this.type = type;
		this.userStatus = userStatus;
		this.userType1 = userType1;
		this.userType2 = userType2;
	}



	public int getUserIdx() {
		return userIdx;
	}

	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAddr() {
		return userAddr;
	}

	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

	public String getAddrCode() {
		return addrCode;
	}

	public void setAddrCode(String addrCode) {
		this.addrCode = addrCode;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getProFilename() {
		return proFilename;
	}

	public void setProFilename(String proFilename) {
		this.proFilename = proFilename;
	}

	public String getProFilepath() {
		return proFilepath;
	}

	public void setProFilepath(String proFilepath) {
		this.proFilepath = proFilepath;
	}

	public String getUserIntroduce() {
		return userIntroduce;
	}

	public void setUserIntroduce(String userIntroduce) {
		this.userIntroduce = userIntroduce;
	}

	public String getRegistrationNumber() {
		return registrationNumber;
	}

	public void setRegistrationNumber(String registrationNumber) {
		this.registrationNumber = registrationNumber;
	}

	public String getBusinessNumber() {
		return businessNumber;
	}

	public void setBusinessNumber(String businessNumber) {
		this.businessNumber = businessNumber;
	}

	public String getUserCar() {
		return userCar;
	}

	public void setUserCar(String userCar) {
		this.userCar = userCar;
	}

	public String getCompFilename() {
		return compFilename;
	}

	public void setCompFilename(String compFilename) {
		this.compFilename = compFilename;
	}

	public String getCompFilepath() {
		return compFilepath;
	}

	public void setCompFilepath(String compFilepath) {
		this.compFilepath = compFilepath;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getSocialId() {
		return socialId;
	}

	public void setSocialId(String socialId) {
		this.socialId = socialId;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getOutDate() {
		return outDate;
	}

	public void setOutDate(Date outDate) {
		this.outDate = outDate;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getType() {
		String type = userType;
		if(type.equals("1")) {
			return "운송기사";
		}else if(type.equals("2")){
			return "부동산";
		}else {
			return "일반회원";
		}
	}
	
	public String getUserStatus() {
		String userStatus = status;
		if(userStatus.equals("1")) {
			return "정상";
		}else if(userStatus.equals("2")){
			return "승인대기";
		}else {
			return "탈퇴";
		}
	}
	
}
