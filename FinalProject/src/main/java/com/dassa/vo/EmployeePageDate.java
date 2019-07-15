package com.dassa.vo;

import java.util.ArrayList;

public class EmployeePageDate {
	private ArrayList<EmployeeVO> list;
	private String pagenavi;
	public EmployeePageDate() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EmployeePageDate(ArrayList<EmployeeVO> list, String pagenavi) {
		super();
		this.list = list;
		this.pagenavi = pagenavi;
	}
	public ArrayList<EmployeeVO> getList() {
		return list;
	}
	public void setList(ArrayList<EmployeeVO> list) {
		this.list = list;
	}
	public String getPagenavi() {
		return pagenavi;
	}
	public void setPagenavi(String pagenavi) {
		this.pagenavi = pagenavi;
	}
	public boolean isEmpty() {
		// TODO Auto-generated method stub
		return false;
	}
	
}
