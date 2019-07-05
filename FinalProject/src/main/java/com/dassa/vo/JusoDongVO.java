package com.dassa.vo;

public class JusoDongVO {
	private String jusoDongCode;
	private String jusoDongName;
	public JusoDongVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public JusoDongVO(String jusoDongCode, String jusoDongName) {
		super();
		this.jusoDongCode = jusoDongCode;
		this.jusoDongName = jusoDongName;
	}
	public String getJusoDongCode() {
		return jusoDongCode;
	}
	public void setJusoDongCode(String jusoDongCode) {
		this.jusoDongCode = jusoDongCode;
	}
	public String getJusoDongName() {
		return jusoDongName;
	}
	public void setJusoDongName(String jusoDongName) {
		this.jusoDongName = jusoDongName;
	}
}
