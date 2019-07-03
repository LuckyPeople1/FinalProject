package com.dassa.vo;

public class UserVO {
	private int 	userNo;
	private int		driverIdx;
	private String 	userId;
	private String 	userPw;
	private String 	userName;
	private String 	userPhone;
	private String 	userEmail;
	private String 	userIntroduce;			//이사 소개
	private String 	registrationNumber; 	//사업자 등록번호
	private String 	userCar;				//운행차량
	private String 	userImageName;
	private String 	userImagePass;
	private String 	userType;				//회원 타입
	private String  socialId;				//소셜 로그인 할 때 필요
	
	public UserVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserVO(int userNo, int driverIdx, String userId, String userPw, String userName, String userPhone,
			String userEmail, String userIntroduce, String registrationNumber, String userCar, String userImageName,
			String userImagePass, String userType, String socialId) {
		super();
		this.userNo = userNo;
		this.driverIdx = driverIdx;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userIntroduce = userIntroduce;
		this.registrationNumber = registrationNumber;
		this.userCar = userCar;
		this.userImageName = userImageName;
		this.userImagePass = userImagePass;
		this.userType = userType;
		this.socialId = socialId;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getdriverIdxxx() {
		return driverIdx;
	}
	public void setdriverIdxxx(int driverIdx) {
		this.driverIdx = driverIdx;
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
	public String getUserImagePass() {
		return userImagePass;
	}
	public void setUserImagePass(String userImagePass) {
		this.userImagePass = userImagePass;
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
	
	
}
