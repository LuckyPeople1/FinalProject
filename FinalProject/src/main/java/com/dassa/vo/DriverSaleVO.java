package com.dassa.vo;

public class DriverSaleVO {
	private String driverSaledate;  //매출년도별 , 매출 월별
	private int driverSaleAmount;   //합계 가격, 평균 가격
	private int driverSaleCount;    //건수
	public DriverSaleVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DriverSaleVO(String driverSaledate, int driverSaleAmount, int driverSaleCount) {
		super();
		this.driverSaledate = driverSaledate;
		this.driverSaleAmount = driverSaleAmount;
		this.driverSaleCount = driverSaleCount;
	}
	public String getDriverSaledate() {
		return driverSaledate;
	}
	public void setDriverSaledate(String driverSaledate) {
		this.driverSaledate = driverSaledate;
	}
	public int getDriverSaleAmount() {
		return driverSaleAmount;
	}
	public void setDriverSaleAmount(int driverSaleAmount) {
		this.driverSaleAmount = driverSaleAmount;
	}
	public int getDriverSaleCount() {
		return driverSaleCount;
	}
	public void setDriverSaleCount(int driverSaleCount) {
		this.driverSaleCount = driverSaleCount;
	}
	
}
