package com.dassa.vo;

public class UserVO {
	private int userNo;
	private String userId;
	private String userPw;
	private String userPhone;
	private String userEmail;
	private String userRegistration; //사업자 등록번호
	private String userIntroduce;	//이사 소개
	private String userCar;			//운행차량
	private String userImagepath;
	private String userImageName;
	private String userType;		//회원 타입
	public UserVO(int userNo, String userId, String userPw, String userPhone, String userEmail, String userRegistration,
			String userIntroduce, String userCar, String userImagepath, String userImageName, String userType) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPw = userPw;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userRegistration = userRegistration;
		this.userIntroduce = userIntroduce;
		this.userCar = userCar;
		this.userImagepath = userImagepath;
		this.userImageName = userImageName;
		this.userType = userType;
	}
	public UserVO() {
		super();
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
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
	public String getUserRegistration() {
		return userRegistration;
	}
	public void setUserRegistration(String userRegistration) {
		this.userRegistration = userRegistration;
	}
	public String getUserIntroduce() {
		return userIntroduce;
	}
	public void setUserIntroduce(String userIntroduce) {
		this.userIntroduce = userIntroduce;
	}
	public String getUserCar() {
		return userCar;
	}
	public void setUserCar(String userCar) {
		this.userCar = userCar;
	}
	public String getUserImagepath() {
		return userImagepath;
	}
	public void setUserImagepath(String userImagepath) {
		this.userImagepath = userImagepath;
	}
	public String getUserImageName() {
		return userImageName;
	}
	public void setUserImageName(String userImageName) {
		this.userImageName = userImageName;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	

}
