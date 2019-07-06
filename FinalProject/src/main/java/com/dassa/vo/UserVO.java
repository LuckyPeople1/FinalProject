package com.dassa.vo;

import java.sql.Date;

public class UserVO {
	private int 	userIdx;				//고유번호로 쓸것.
	private String 	userId;
	private String 	userPw;
	private String 	userName;
	private String  userAddr;
	private String 	userPhone;
	private String 	userEmail;
	private String 	userIntroduce;			//이사 소개
	private String 	registrationNumber; 	//사업자 등록번호
	private String 	userCar;				//운행차량
	private String 	userImageName;
	private String 	userImagePath;
	private String 	userType;				//회원 타입
	private String  socialId;				//소셜 로그인 할 때 필요
	private Date	enrollDate;
	
	public UserVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserVO(int userIdx, String userId, String userPw, String userName, String userAddr, String userPhone,
			String userEmail, String userIntroduce, String registrationNumber, String userCar, String userImageName,
			String userImagePath, String userType, String socialId, Date enrollDate) {
		super();
		this.userIdx = userIdx;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userAddr = userAddr;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userIntroduce = userIntroduce;
		this.registrationNumber = registrationNumber;
		this.userCar = userCar;
		this.userImageName = userImageName;
		this.userImagePath = userImagePath;
		this.userType = userType;
		this.socialId = socialId;
		this.enrollDate = enrollDate;
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



	public String getUserCar() {
		return userCar;
	}



	public void setUserCar(String userCar) {
		this.userCar = userCar;
	}



	public String getUserImageName() {
		return userImageName;
	}



	public void setUserImageName(String userImageName) {
		this.userImageName = userImageName;
	}



	public String getUserImagePath() {
		return userImagePath;
	}



	public void setUserImagePath(String userImagePath) {
		this.userImagePath = userImagePath;
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



	public Date getEnroll_date() {
		return enrollDate;
	}



	public void setEnroll_date(Date enrollDate) {
		this.enrollDate = enrollDate;
	}



	public String getType() {
		String type = getUserType();
		if(type.equals("1")) {
			return "일반";
		}else if(type.equals("2")){
			return "운송기사";
		}else {
			return "부동산";
		}
	}
}
