package com.dassa.vo;

import java.sql.Date;

public class ShopItemVO {
	private int shopItemIdx; 															//매물번호
	private int userIdx;																	//부동산번호
	private String shopItemTitle;													//매물제목
	private String shopItemContent;												//매물상세정보
	private String shopItemSecretMemo;											//매물비공개메모
	private String shopItemManager;												//매물담당자
	private int shopItemImgIdx;														//매물사진테이블 외래키
	private String shopItemPremiumState;										//매물아이템상태
	private String shopItemType1;													//매물종류(원룸,투룸,쓰리룸,오피스텔,아파트)
	private String shopItemType2;													//매물건물유형(단독주택,다가구주택)
	private String shopItemAddr1;													//매물도로명주소
	private String shopItemAddr2;													//매물지번주소
	private String shopItemAddr3;													//매물상세주소(동,호)
	private String shopItemLatitude;												//매물위도좌표
	private String shopItemLongitude;											//매물경도좌표
	private String shopItemDealType;												//매물거래유형(전세,월세,매매)
	private String shopItemDealPrice;												//매물거래가격
	private String shopItemSize1;													//매물공급면적(평)
	private String shopItemSizeAll1;												//매물공급면적(평)
	private String shopItemSize2;													//매물공급면적(m2)
	private String shopItemSizeAll2;												//매물전용면적(m2)
	private String shopItemFloor;													//매물해당층수
	private String shopItemFloorAll;												//매물전체층수
	private String shopItemHeating;												//매물난방형식
	private String shopItemBulidCompany;										//매물시공사
	private String shopItemBulidHallway;										//매물복도유형
	private String shopItemBulidDate;											//매물시공일
	private String shopItemMovingDate;											//입주가능일
	private String shopItemManage;												//관리비 유무
	private String shopItemManagePrice;										//관리비
	private String shopItemManagePriceOption;								//관리비항목
	private String shopItemParking;														//주차유무
	private String shopItemParkingPrice;												//주차비
	private String shopItemAnimal;												//반려동물
	private String shopItemElevator;												//엘리베이터
	private String shopItemBalcony;												//발코니
	private String shopItemBuiltIn;												//빌트인
	private String shopItemStructure;												//매물구조(복층,1.5룸)
	private String shopItemOption;												//매물옵션(에어컨,TV,비데..)
	private String shopItemLoan;													//매물전세금대출유무
	private Date shopItemRegDate;												//매물등록일
	private Date shopItemDelDate;												//매물삭제일
	private String shopItemOkState;												//매물확인상태
	private String shopItemSaleState;											//매물상태
	public ShopItemVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopItemVO(int shopItemIdx, int userIdx, String shopItemTitle, String shopItemContent,
			String shopItemSecretMemo, String shopItemManager, int shopItemImgIdx, String shopItemPremiumState,
			String shopItemType1, String shopItemType2, String shopItemAddr1, String shopItemAddr2,
			String shopItemAddr3, String shopItemLatitude, String shopItemLongitude, String shopItemDealType,
			String shopItemDealPrice, String shopItemSize1, String shopItemSizeAll1, String shopItemSize2,
			String shopItemSizeAll2, String shopItemFloor, String shopItemFloorAll, String shopItemHeating,
			String shopItemBulidCompany, String shopItemBulidHallway, String shopItemBulidDate,
			String shopItemMovingDate, String shopItemManage, String shopItemManagePrice,
			String shopItemManagePriceOption, String shopItemParking, String shopItemParkingPrice,
			String shopItemAnimal, String shopItemElevator, String shopItemBalcony, String shopItemBuiltIn,
			String shopItemStructure, String shopItemOption, String shopItemLoan, Date shopItemRegDate,
			Date shopItemDelDate, String shopItemOkState, String shopItemSaleState) {
		super();
		this.shopItemIdx = shopItemIdx;
		this.userIdx = userIdx;
		this.shopItemTitle = shopItemTitle;
		this.shopItemContent = shopItemContent;
		this.shopItemSecretMemo = shopItemSecretMemo;
		this.shopItemManager = shopItemManager;
		this.shopItemImgIdx = shopItemImgIdx;
		this.shopItemPremiumState = shopItemPremiumState;
		this.shopItemType1 = shopItemType1;
		this.shopItemType2 = shopItemType2;
		this.shopItemAddr1 = shopItemAddr1;
		this.shopItemAddr2 = shopItemAddr2;
		this.shopItemAddr3 = shopItemAddr3;
		this.shopItemLatitude = shopItemLatitude;
		this.shopItemLongitude = shopItemLongitude;
		this.shopItemDealType = shopItemDealType;
		this.shopItemDealPrice = shopItemDealPrice;
		this.shopItemSize1 = shopItemSize1;
		this.shopItemSizeAll1 = shopItemSizeAll1;
		this.shopItemSize2 = shopItemSize2;
		this.shopItemSizeAll2 = shopItemSizeAll2;
		this.shopItemFloor = shopItemFloor;
		this.shopItemFloorAll = shopItemFloorAll;
		this.shopItemHeating = shopItemHeating;
		this.shopItemBulidCompany = shopItemBulidCompany;
		this.shopItemBulidHallway = shopItemBulidHallway;
		this.shopItemBulidDate = shopItemBulidDate;
		this.shopItemMovingDate = shopItemMovingDate;
		this.shopItemManage = shopItemManage;
		this.shopItemManagePrice = shopItemManagePrice;
		this.shopItemManagePriceOption = shopItemManagePriceOption;
		this.shopItemParking = shopItemParking;
		this.shopItemParkingPrice = shopItemParkingPrice;
		this.shopItemAnimal = shopItemAnimal;
		this.shopItemElevator = shopItemElevator;
		this.shopItemBalcony = shopItemBalcony;
		this.shopItemBuiltIn = shopItemBuiltIn;
		this.shopItemStructure = shopItemStructure;
		this.shopItemOption = shopItemOption;
		this.shopItemLoan = shopItemLoan;
		this.shopItemRegDate = shopItemRegDate;
		this.shopItemDelDate = shopItemDelDate;
		this.shopItemOkState = shopItemOkState;
		this.shopItemSaleState = shopItemSaleState;
	}
	public int getShopItemIdx() {
		return shopItemIdx;
	}
	public void setShopItemIdx(int shopItemIdx) {
		this.shopItemIdx = shopItemIdx;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public String getShopItemTitle() {
		return shopItemTitle;
	}
	public void setShopItemTitle(String shopItemTitle) {
		this.shopItemTitle = shopItemTitle;
	}
	public String getShopItemContent() {
		return shopItemContent;
	}
	public void setShopItemContent(String shopItemContent) {
		this.shopItemContent = shopItemContent;
	}
	public String getShopItemSecretMemo() {
		return shopItemSecretMemo;
	}
	public void setShopItemSecretMemo(String shopItemSecretMemo) {
		this.shopItemSecretMemo = shopItemSecretMemo;
	}
	public String getShopItemManager() {
		return shopItemManager;
	}
	public void setShopItemManager(String shopItemManager) {
		this.shopItemManager = shopItemManager;
	}
	public int getShopItemImgIdx() {
		return shopItemImgIdx;
	}
	public void setShopItemImgIdx(int shopItemImgIdx) {
		this.shopItemImgIdx = shopItemImgIdx;
	}
	public String getShopItemPremiumState() {
		return shopItemPremiumState;
	}
	public void setShopItemPremiumState(String shopItemPremiumState) {
		this.shopItemPremiumState = shopItemPremiumState;
	}
	public String getShopItemType1() {
		return shopItemType1;
	}
	public void setShopItemType1(String shopItemType1) {
		this.shopItemType1 = shopItemType1;
	}
	public String getShopItemType2() {
		return shopItemType2;
	}
	public void setShopItemType2(String shopItemType2) {
		this.shopItemType2 = shopItemType2;
	}
	public String getShopItemAddr1() {
		return shopItemAddr1;
	}
	public void setShopItemAddr1(String shopItemAddr1) {
		this.shopItemAddr1 = shopItemAddr1;
	}
	public String getShopItemAddr2() {
		return shopItemAddr2;
	}
	public void setShopItemAddr2(String shopItemAddr2) {
		this.shopItemAddr2 = shopItemAddr2;
	}
	public String getShopItemAddr3() {
		return shopItemAddr3;
	}
	public void setShopItemAddr3(String shopItemAddr3) {
		this.shopItemAddr3 = shopItemAddr3;
	}
	public String getShopItemLatitude() {
		return shopItemLatitude;
	}
	public void setShopItemLatitude(String shopItemLatitude) {
		this.shopItemLatitude = shopItemLatitude;
	}
	public String getShopItemLongitude() {
		return shopItemLongitude;
	}
	public void setShopItemLongitude(String shopItemLongitude) {
		this.shopItemLongitude = shopItemLongitude;
	}
	public String getShopItemDealType() {
		return shopItemDealType;
	}
	public void setShopItemDealType(String shopItemDealType) {
		this.shopItemDealType = shopItemDealType;
	}
	public String getShopItemDealPrice() {
		return shopItemDealPrice;
	}
	public void setShopItemDealPrice(String shopItemDealPrice) {
		this.shopItemDealPrice = shopItemDealPrice;
	}
	public String getShopItemSize1() {
		return shopItemSize1;
	}
	public void setShopItemSize1(String shopItemSize1) {
		this.shopItemSize1 = shopItemSize1;
	}
	public String getShopItemSizeAll1() {
		return shopItemSizeAll1;
	}
	public void setShopItemSizeAll1(String shopItemSizeAll1) {
		this.shopItemSizeAll1 = shopItemSizeAll1;
	}
	public String getShopItemSize2() {
		return shopItemSize2;
	}
	public void setShopItemSize2(String shopItemSize2) {
		this.shopItemSize2 = shopItemSize2;
	}
	public String getShopItemSizeAll2() {
		return shopItemSizeAll2;
	}
	public void setShopItemSizeAll2(String shopItemSizeAll2) {
		this.shopItemSizeAll2 = shopItemSizeAll2;
	}
	public String getShopItemFloor() {
		return shopItemFloor;
	}
	public void setShopItemFloor(String shopItemFloor) {
		this.shopItemFloor = shopItemFloor;
	}
	public String getShopItemFloorAll() {
		return shopItemFloorAll;
	}
	public void setShopItemFloorAll(String shopItemFloorAll) {
		this.shopItemFloorAll = shopItemFloorAll;
	}
	public String getShopItemHeating() {
		return shopItemHeating;
	}
	public void setShopItemHeating(String shopItemHeating) {
		this.shopItemHeating = shopItemHeating;
	}
	public String getShopItemBulidCompany() {
		return shopItemBulidCompany;
	}
	public void setShopItemBulidCompany(String shopItemBulidCompany) {
		this.shopItemBulidCompany = shopItemBulidCompany;
	}
	public String getShopItemBulidHallway() {
		return shopItemBulidHallway;
	}
	public void setShopItemBulidHallway(String shopItemBulidHallway) {
		this.shopItemBulidHallway = shopItemBulidHallway;
	}
	public String getShopItemBulidDate() {
		return shopItemBulidDate;
	}
	public void setShopItemBulidDate(String shopItemBulidDate) {
		this.shopItemBulidDate = shopItemBulidDate;
	}
	public String getShopItemMovingDate() {
		return shopItemMovingDate;
	}
	public void setShopItemMovingDate(String shopItemMovingDate) {
		this.shopItemMovingDate = shopItemMovingDate;
	}
	public String getShopItemManage() {
		return shopItemManage;
	}
	public void setShopItemManage(String shopItemManage) {
		this.shopItemManage = shopItemManage;
	}
	public String getShopItemManagePrice() {
		return shopItemManagePrice;
	}
	public void setShopItemManagePrice(String shopItemManagePrice) {
		this.shopItemManagePrice = shopItemManagePrice;
	}
	public String getShopItemManagePriceOption() {
		return shopItemManagePriceOption;
	}
	public void setShopItemManagePriceOption(String shopItemManagePriceOption) {
		this.shopItemManagePriceOption = shopItemManagePriceOption;
	}
	public String getShopItemParking() {
		return shopItemParking;
	}
	public void setShopItemParking(String shopItemParking) {
		this.shopItemParking = shopItemParking;
	}
	public String getShopItemParkingPrice() {
		return shopItemParkingPrice;
	}
	public void setShopItemParkingPrice(String shopItemParkingPrice) {
		this.shopItemParkingPrice = shopItemParkingPrice;
	}
	public String getShopItemAnimal() {
		return shopItemAnimal;
	}
	public void setShopItemAnimal(String shopItemAnimal) {
		this.shopItemAnimal = shopItemAnimal;
	}
	public String getShopItemElevator() {
		return shopItemElevator;
	}
	public void setShopItemElevator(String shopItemElevator) {
		this.shopItemElevator = shopItemElevator;
	}
	public String getShopItemBalcony() {
		return shopItemBalcony;
	}
	public void setShopItemBalcony(String shopItemBalcony) {
		this.shopItemBalcony = shopItemBalcony;
	}
	public String getShopItemBuiltIn() {
		return shopItemBuiltIn;
	}
	public void setShopItemBuiltIn(String shopItemBuiltIn) {
		this.shopItemBuiltIn = shopItemBuiltIn;
	}
	public String getShopItemStructure() {
		return shopItemStructure;
	}
	public void setShopItemStructure(String shopItemStructure) {
		this.shopItemStructure = shopItemStructure;
	}
	public String getShopItemOption() {
		return shopItemOption;
	}
	public void setShopItemOption(String shopItemOption) {
		this.shopItemOption = shopItemOption;
	}
	public String getShopItemLoan() {
		return shopItemLoan;
	}
	public void setShopItemLoan(String shopItemLoan) {
		this.shopItemLoan = shopItemLoan;
	}
	public Date getShopItemRegDate() {
		return shopItemRegDate;
	}
	public void setShopItemRegDate(Date shopItemRegDate) {
		this.shopItemRegDate = shopItemRegDate;
	}
	public Date getShopItemDelDate() {
		return shopItemDelDate;
	}
	public void setShopItemDelDate(Date shopItemDelDate) {
		this.shopItemDelDate = shopItemDelDate;
	}
	public String getShopItemOkState() {
		return shopItemOkState;
	}
	public void setShopItemOkState(String shopItemOkState) {
		this.shopItemOkState = shopItemOkState;
	}
	public String getShopItemSaleState() {
		return shopItemSaleState;
	}
	public void setShopItemSaleState(String shopItemSaleState) {
		this.shopItemSaleState = shopItemSaleState;
	}
}