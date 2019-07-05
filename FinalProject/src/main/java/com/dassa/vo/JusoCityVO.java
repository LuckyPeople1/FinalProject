package com.dassa.vo;

public class JusoCityVO {
	private String jusoCityCode;
	private String jusoCityName;
	public JusoCityVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public JusoCityVO(String jusoCityCode, String jusoCityName) {
		super();
		this.jusoCityCode = jusoCityCode;
		this.jusoCityName = jusoCityName;
	}
	public String getJusoCityCode() {
		return jusoCityCode;
	}
	public void setJusoCityCode(String jusoCityCode) {
		this.jusoCityCode = jusoCityCode;
	}
	public String getJusoCityName() {
		return jusoCityName;
	}
	public void setJusoCityName(String jusoCityName) {
		this.jusoCityName = jusoCityName;
	}
}
