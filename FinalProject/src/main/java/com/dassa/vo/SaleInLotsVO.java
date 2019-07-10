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
	private String saleInLotsHouseScale;		// 단지 규모(동 수)
	private String saleInLotsHousehold; 		// 총 세대수
	private String saleInLotsSaleHousehold;		// 분양 세대수
	private String saleInLotsPriceOne;			// 평당 가격
	private String saleInLotsPriceMinAll;		// 최소 분양가격
	private String saleInLotsPriceMaxAll;		// 최고 분양가격
	private String saleInLotsRecruitmentDate;	// 모집공고 승인일자
	private String saleInLotsStartDate;			// 분양 개시 일자
	private String saleInLotsMinSupplyArea;		// 최소 공급면적
	private String saleInLotsMaxSupplyArea;		// 최대 공급면적
	private String saleInLotsSupplyType;		// 공급유형
	private String saleInLotsState;				// 분양 상태	
	private String [] saleInLotsSearchState;	// 검색된  분양 상태
	private String [] saleInLotsSearchBuildType;	// 검색된  건물 유형
	private String [] saleInLotsSearchSupplyType;	// 검색된  공급 유형
	private int start;							// 가져올 데이터의 시작 숫자
	private int end;							// 가져올 데이터의 끝 숫자
	public SaleInLotsVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SaleInLotsVO(int saleInLotsIDX, String saleInLotsDeveloper, String saleInLotsBuildType,
			String saleInLotsConstructor, String saleInLotsName, String saleInLotsArea, String saleInLotsDetailArea,
			String saleInLotsMinFloor, String saleInLotsMaxFloor, String saleInLotsHouseScale,
			String saleInLotsHousehold, String saleInLotsSaleHousehold, String saleInLotsPriceOne,
			String saleInLotsPriceMinAll, String saleInLotsPriceMaxAll, String saleInLotsRecruitmentDate,
			String saleInLotsStartDate, String saleInLotsMinSupplyArea, String saleInLotsMaxSupplyArea,
			String saleInLotsSupplyType, String saleInLotsState, String[] saleInLotsSearchState,
			String[] saleInLotsSearchBuildType, String[] saleInLotsSearchSupplyType, int start, int end) {
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
		this.saleInLotsHouseScale = saleInLotsHouseScale;
		this.saleInLotsHousehold = saleInLotsHousehold;
		this.saleInLotsSaleHousehold = saleInLotsSaleHousehold;
		this.saleInLotsPriceOne = saleInLotsPriceOne;
		this.saleInLotsPriceMinAll = saleInLotsPriceMinAll;
		this.saleInLotsPriceMaxAll = saleInLotsPriceMaxAll;
		this.saleInLotsRecruitmentDate = saleInLotsRecruitmentDate;
		this.saleInLotsStartDate = saleInLotsStartDate;
		this.saleInLotsMinSupplyArea = saleInLotsMinSupplyArea;
		this.saleInLotsMaxSupplyArea = saleInLotsMaxSupplyArea;
		this.saleInLotsSupplyType = saleInLotsSupplyType;
		this.saleInLotsState = saleInLotsState;
		this.saleInLotsSearchState = saleInLotsSearchState;
		this.saleInLotsSearchBuildType = saleInLotsSearchBuildType;
		this.saleInLotsSearchSupplyType = saleInLotsSearchSupplyType;
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
	public String getSaleInLotsHouseScale() {
		return saleInLotsHouseScale;
	}
	public void setSaleInLotsHouseScale(String saleInLotsHouseScale) {
		this.saleInLotsHouseScale = saleInLotsHouseScale;
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
	public String getSaleInLotsPriceMinAll() {
		return saleInLotsPriceMinAll;
	}
	public void setSaleInLotsPriceMinAll(String saleInLotsPriceMinAll) {
		this.saleInLotsPriceMinAll = saleInLotsPriceMinAll;
	}
	public String getSaleInLotsPriceMaxAll() {
		return saleInLotsPriceMaxAll;
	}
	public void setSaleInLotsPriceMaxAll(String saleInLotsPriceMaxAll) {
		this.saleInLotsPriceMaxAll = saleInLotsPriceMaxAll;
	}
	public String getSaleInLotsRecruitmentDate() {
		return saleInLotsRecruitmentDate;
	}
	public void setSaleInLotsRecruitmentDate(String saleInLotsRecruitmentDate) {
		this.saleInLotsRecruitmentDate = saleInLotsRecruitmentDate;
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
	public String getSaleInLotsMaxSupplyArea() {
		return saleInLotsMaxSupplyArea;
	}
	public void setSaleInLotsMaxSupplyArea(String saleInLotsMaxSupplyArea) {
		this.saleInLotsMaxSupplyArea = saleInLotsMaxSupplyArea;
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
	public String[] getSaleInLotsSearchState() {
		return saleInLotsSearchState;
	}
	public void setSaleInLotsSearchState(String[] saleInLotsSearchState) {
		this.saleInLotsSearchState = saleInLotsSearchState;
	}
	public String[] getSaleInLotsSearchBuildType() {
		return saleInLotsSearchBuildType;
	}
	public void setSaleInLotsSearchBuildType(String[] saleInLotsSearchBuildType) {
		this.saleInLotsSearchBuildType = saleInLotsSearchBuildType;
	}
	public String[] getSaleInLotsSearchSupplyType() {
		return saleInLotsSearchSupplyType;
	}
	public void setSaleInLotsSearchSupplyType(String[] saleInLotsSearchSupplyType) {
		this.saleInLotsSearchSupplyType = saleInLotsSearchSupplyType;
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
