package com.dassa.vo;

public class MoveAddrSelectVO {

	private String addr1;
	private String addr2;
	private String longitude;
	private String latitude;

	public MoveAddrSelectVO() {
		super();
	}

	public MoveAddrSelectVO(String addr1, String addr2, String longitude, String latitude) {
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.longitude = longitude;
		this.latitude = latitude;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
}
