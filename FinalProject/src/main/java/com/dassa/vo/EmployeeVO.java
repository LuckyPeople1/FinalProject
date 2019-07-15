package com.dassa.vo;

import java.sql.Date;

public class EmployeeVO {
	private int employeeIdx; //직원 인덱스번호
	private String employeeName; //직원 이름
	private String employeeRank; //직원 직급
	private String employeePhone; //직원 전화번호
	private String adress; //직원 주소
	private String registrationNumber;
	private String imageName;
	private String imagePath;
	private String email;
	private Date enrollDate;
	private int sellCount;
	public EmployeeVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EmployeeVO(int employeeIdx, String employeeName, String employeeRank, String employeePhone, String adress,
			String registrationNumber, String imageName, String imagePath, String email, Date enrollDate, int sellCount) {
		super();
		this.employeeIdx = employeeIdx;
		this.employeeName = employeeName;
		this.employeeRank = employeeRank;
		this.employeePhone = employeePhone;
		this.adress = adress;
		this.registrationNumber = registrationNumber;
		this.imageName = imageName;
		this.imagePath = imagePath;
		this.email = email;
		this.enrollDate = enrollDate;
		this.sellCount = sellCount;
	}
	public int getEmployeeIdx() {
		return employeeIdx;
	}
	public void setEmployeeIdx(int employeeIdx) {
		this.employeeIdx = employeeIdx;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmployeeRank() {
		return employeeRank;
	}
	public void setEmployeeRank(String employeeRank) {
		this.employeeRank = employeeRank;
	}
	public String getEmployeePhone() {
		return employeePhone;
	}
	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getRegistrationNumber() {
		return registrationNumber;
	}
	public void setRegistrationNumber(String registrationNumber) {
		this.registrationNumber = registrationNumber;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public int getSellCount() {
		return sellCount;
	}
	public void setSellCount(int sellCount) {
		this.sellCount = sellCount;
	}
	
}
