package com.dassa.vo;

public class SaleInLotsVO {
	private int saleInLotsIDX;             		// 분양 정보 인덱스
	private String saleInLotsDeveloper;    		// 분양 시행사
	private String saleInLotsBuildType;    		// 분양 건물유형
	private String saleInLotsConstructor;  		// 분양 시공사
	private String saleInLotsName;         		// 분양 사업내용
	private String saleInLotsArea;         		// 분양 지역
	private String saleInLotsDetailArea;   		// 분양 상세 지역
	private String saleInLotsMinFloor;			// 최저 층수
	private String saleInLotsMaxFloor;			// 최대 층수
	private String saleInLotsHousehold; 		// 총 세대수
	private String saleInLotsSaleHousehold;		// 분양 세대수
	private String saleInLotsPriceOne;			// 평당 가격
	private String saleInLotsPriceAll;			// 분양가격
	private String saleInLotsRecruitmentData;	// 모집공고 승인일자
	private String saleInLotsStartDate;			// 분양 개시 일자
	private String saleInLotsMinSupplyArea;		// 최소 공급면적
	private String saleInLotsMaxSupplyAred;		// 최대 공급면적
	private String saleInLotsSupplyType;		// 공급유형
	private String saleInLotsState;        		// 분양 상태						
	private int start;							// 가져올 데이터의 시작 숫자
	private int end;							// 가져올 데이터의 끝 숫자
	public SaleInLotsVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SaleInLotsVO(int saleInLotsIDX, String saleInLotsDeveloper, String saleInLotsBuildType,
			String saleInLotsConstructor, String saleInLotsName, String saleInLotsArea, String saleInLotsDetailArea,
			String saleInLotsMinFloor, String saleInLotsMaxFloor, String saleInLotsHousehold,
			String saleInLotsSaleHousehold, String saleInLotsPriceOne, String saleInLotsPriceAll,
			String saleInLotsRecruitmentData, String saleInLotsStartDate, String saleInLotsMinSupplyArea,
			String saleInLotsMaxSupplyAred, String saleInLotsSupplyType, String saleInLotsState, int start, int end) {
		super();
		this.saleInLotsIDX = saleInLotsIDX;
		this.saleInLotsDeveloper = saleInLotsDeveloper;
		this.saleInLotsBuildType = saleInLotsBuildType;
		this.saleInLotsConstructor = saleInLotsConstructor;
		this.saleInLotsName = saleInLotsName;
		this.saleInLotsArea = saleInLotsArea;
		this.saleInLotsDetailArea = saleInLotsDetailArea;
		this.saleInLotsMinFloor = saleInLotsMinFloor;
		this.saleInLotsMaxFloor = saleInLotsMaxFloor;
		this.saleInLotsHousehold = saleInLotsHousehold;
		this.saleInLotsSaleHousehold = saleInLotsSaleHousehold;
		this.saleInLotsPriceOne = saleInLotsPriceOne;
		this.saleInLotsPriceAll = saleInLotsPriceAll;
		this.saleInLotsRecruitmentData = saleInLotsRecruitmentData;
		this.saleInLotsStartDate = saleInLotsStartDate;
		this.saleInLotsMinSupplyArea = saleInLotsMinSupplyArea;
		this.saleInLotsMaxSupplyAred = saleInLotsMaxSupplyAred;
		this.saleInLotsSupplyType = saleInLotsSupplyType;
		this.saleInLotsState = saleInLotsState;
		this.start = start;
		this.end = end;
	}
	public int getSaleInLotsIDX() {
		return saleInLotsIDX;
	}
	public void setSaleInLotsIDX(int saleInLotsIDX) {
		this.saleInLotsIDX = saleInLotsIDX;
	}
	public String getSaleInLotsDeveloper() {
		return saleInLotsDeveloper;
	}
	public void setSaleInLotsDeveloper(String saleInLotsDeveloper) {
		this.saleInLotsDeveloper = saleInLotsDeveloper;
	}
	public String getSaleInLotsBuildType() {
		return saleInLotsBuildType;
	}
	public void setSaleInLotsBuildType(String saleInLotsBuildType) {
		this.saleInLotsBuildType = saleInLotsBuildType;
	}
	public String getSaleInLotsConstructor() {
		return saleInLotsConstructor;
	}
	public void setSaleInLotsConstructor(String saleInLotsConstructor) {
		this.saleInLotsConstructor = saleInLotsConstructor;
	}
	public String getSaleInLotsName() {
		return saleInLotsName;
	}
	public void setSaleInLotsName(String saleInLotsName) {
		this.saleInLotsName = saleInLotsName;
	}
	public String getSaleInLotsArea() {
		return saleInLotsArea;
	}
	public void setSaleInLotsArea(String saleInLotsArea) {
		this.saleInLotsArea = saleInLotsArea;
	}
	public String getSaleInLotsDetailArea() {
		return saleInLotsDetailArea;
	}
	public void setSaleInLotsDetailArea(String saleInLotsDetailArea) {
		this.saleInLotsDetailArea = saleInLotsDetailArea;
	}
	public String getSaleInLotsMinFloor() {
		return saleInLotsMinFloor;
	}
	public void setSaleInLotsMinFloor(String saleInLotsMinFloor) {
		this.saleInLotsMinFloor = saleInLotsMinFloor;
	}
	public String getSaleInLotsMaxFloor() {
		return saleInLotsMaxFloor;
	}
	public void setSaleInLotsMaxFloor(String saleInLotsMaxFloor) {
		this.saleInLotsMaxFloor = saleInLotsMaxFloor;
	}
	public String getSaleInLotsHousehold() {
		return saleInLotsHousehold;
	}
	public void setSaleInLotsHousehold(String saleInLotsHousehold) {
		this.saleInLotsHousehold = saleInLotsHousehold;
	}
	public String getSaleInLotsSaleHousehold() {
		return saleInLotsSaleHousehold;
	}
	public void setSaleInLotsSaleHousehold(String saleInLotsSaleHousehold) {
		this.saleInLotsSaleHousehold = saleInLotsSaleHousehold;
	}
	public String getSaleInLotsPriceOne() {
		return saleInLotsPriceOne;
	}
	public void setSaleInLotsPriceOne(String saleInLotsPriceOne) {
		this.saleInLotsPriceOne = saleInLotsPriceOne;
	}
	public String getSaleInLotsPriceAll() {
		return saleInLotsPriceAll;
	}
	public void setSaleInLotsPriceAll(String saleInLotsPriceAll) {
		this.saleInLotsPriceAll = saleInLotsPriceAll;
	}
	public String getSaleInLotsRecruitmentData() {
		return saleInLotsRecruitmentData;
	}
	public void setSaleInLotsRecruitmentData(String saleInLotsRecruitmentData) {
		this.saleInLotsRecruitmentData = saleInLotsRecruitmentData;
	}
	public String getSaleInLotsStartDate() {
		return saleInLotsStartDate;
	}
	public void setSaleInLotsStartDate(String saleInLotsStartDate) {
		this.saleInLotsStartDate = saleInLotsStartDate;
	}
	public String getSaleInLotsMinSupplyArea() {
		return saleInLotsMinSupplyArea;
	}
	public void setSaleInLotsMinSupplyArea(String saleInLotsMinSupplyArea) {
		this.saleInLotsMinSupplyArea = saleInLotsMinSupplyArea;
	}
	public String getSaleInLotsMaxSupplyAred() {
		return saleInLotsMaxSupplyAred;
	}
	public void setSaleInLotsMaxSupplyAred(String saleInLotsMaxSupplyAred) {
		this.saleInLotsMaxSupplyAred = saleInLotsMaxSupplyAred;
	}
	public String getSaleInLotsSupplyType() {
		return saleInLotsSupplyType;
	}
	public void setSaleInLotsSupplyType(String saleInLotsSupplyType) {
		this.saleInLotsSupplyType = saleInLotsSupplyType;
	}
	public String getSaleInLotsState() {
		return saleInLotsState;
	}
	public void setSaleInLotsState(String saleInLotsState) {
		this.saleInLotsState = saleInLotsState;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	
	
}
