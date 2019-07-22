package com.dassa.vo;

import java.util.ArrayList;

public class ManageSaleMovePageData {
	private ArrayList<MovePaymentVO> list;
	private String pageNavi;
	private ArrayList<DriverSaleVO> yearSum;
	private ArrayList<DriverSaleVO> monthSum;
	public ManageSaleMovePageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ManageSaleMovePageData(ArrayList<MovePaymentVO> list, String pageNavi, ArrayList<DriverSaleVO> yearSum,
			ArrayList<DriverSaleVO> monthSum) {
		super();
		this.list = list;
		this.pageNavi = pageNavi;
		this.yearSum = yearSum;
		this.monthSum = monthSum;
	}
	public ArrayList<MovePaymentVO> getList() {
		return list;
	}
	public void setList(ArrayList<MovePaymentVO> list) {
		this.list = list;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	public ArrayList<DriverSaleVO> getYearSum() {
		return yearSum;
	}
	public void setYearSum(ArrayList<DriverSaleVO> yearSum) {
		this.yearSum = yearSum;
	}
	public ArrayList<DriverSaleVO> getMonthSum() {
		return monthSum;
	}
	public void setMonthSum(ArrayList<DriverSaleVO> monthSum) {
		this.monthSum = monthSum;
	}
	
}
