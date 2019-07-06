package com.dassa.vo;

public class MoveAddrInfoVO {

	private String addr1;		// 도로명
	private String addr2;		// 지번
	private String addr3;		// 상세주소
	private String latitude;	// 위도(y축)
	private String longitude;	// 경도(x축)
	private String type;		// 집 형태
	private String structure;	// 방 구조
	private String size;		// 집 평수
	private String floor;		// 층
	private String elevator;	// 엘레베이터 유무
	private String parking;		// 주차 유무

	public MoveAddrInfoVO() {
		super();
	}

	public MoveAddrInfoVO(String addr1, String addr2, String addr3, String latitude, String longitude, String type, String structure, String size, String floor, String elevator, String parking) {
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.addr3 = addr3;
		this.latitude = latitude;
		this.longitude = longitude;
		this.type = type;
		this.structure = structure;
		this.size = size;
		this.floor = floor;
		this.elevator = elevator;
		this.parking = parking;
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

	public String getAddr3() {
		return addr3;
	}

	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStructure() {
		return structure;
	}

	public void setStructure(String structure) {
		this.structure = structure;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getElevator() {
		return elevator;
	}

	public void setElevator(String elevator) {
		this.elevator = elevator;
	}

	public String getParking() {
		return parking;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}
}
