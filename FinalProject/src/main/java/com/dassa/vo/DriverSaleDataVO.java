package com.dassa.vo;

import java.util.ArrayList;

public class DriverSaleDataVO {
	private ArrayList<DriverSaleVO> yearSum;
	private ArrayList<DriverSaleVO> yearAvg;
	private ArrayList<DriverSaleVO> monthSum;
	private ArrayList<DriverSaleVO> monthAvg;
	public DriverSaleDataVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DriverSaleDataVO(ArrayList<DriverSaleVO> yearSum, ArrayList<DriverSaleVO> yearAvg,
			ArrayList<DriverSaleVO> monthSum, ArrayList<DriverSaleVO> monthAvg) {
		super();
		this.yearSum = yearSum;
		this.yearAvg = yearAvg;
		this.monthSum = monthSum;
		this.monthAvg = monthAvg;
	}
	public ArrayList<DriverSaleVO> getYearSum() {
		return yearSum;
	}
	public void setYearSum(ArrayList<DriverSaleVO> yearSum) {
		this.yearSum = yearSum;
	}
	public ArrayList<DriverSaleVO> getYearAvg() {
		return yearAvg;
	}
	public void setYearAvg(ArrayList<DriverSaleVO> yearAvg) {
		this.yearAvg = yearAvg;
	}
	public ArrayList<DriverSaleVO> getMonthSum() {
		return monthSum;
	}
	public void setMonthSum(ArrayList<DriverSaleVO> monthSum) {
		this.monthSum = monthSum;
	}
	public ArrayList<DriverSaleVO> getMonthAvg() {
		return monthAvg;
	}
	public void setMonthAvg(ArrayList<DriverSaleVO> monthAvg) {
		this.monthAvg = monthAvg;
	}
	
	
}
