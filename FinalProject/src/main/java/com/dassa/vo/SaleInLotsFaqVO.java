package com.dassa.vo;

public class SaleInLotsFaqVO {
	private int saleInLotsFaqIdx;
	private String saleInLotsFaqType;
	private String saleInLotsFaqTitle;
	private String saleInLotsFaqContent;
	public SaleInLotsFaqVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SaleInLotsFaqVO(int saleInLotsFaqIdx, String saleInLotsFaqType, String saleInLotsFaqTitle,
			String saleInLotsFaqContent) {
		super();
		this.saleInLotsFaqIdx = saleInLotsFaqIdx;
		this.saleInLotsFaqType = saleInLotsFaqType;
		this.saleInLotsFaqTitle = saleInLotsFaqTitle;
		this.saleInLotsFaqContent = saleInLotsFaqContent;
	}
	public int getSaleInLotsFaqIdx() {
		return saleInLotsFaqIdx;
	}
	public void setSaleInLotsFaqIdx(int saleInLotsFaqIdx) {
		this.saleInLotsFaqIdx = saleInLotsFaqIdx;
	}
	public String getSaleInLotsFaqType() {
		return saleInLotsFaqType;
	}
	public void setSaleInLotsFaqType(String saleInLotsFaqType) {
		this.saleInLotsFaqType = saleInLotsFaqType;
	}
	public String getSaleInLotsFaqTitle() {
		return saleInLotsFaqTitle;
	}
	public void setSaleInLotsFaqTitle(String saleInLotsFaqTitle) {
		this.saleInLotsFaqTitle = saleInLotsFaqTitle;
	}
	public String getSaleInLotsFaqContent() {
		return saleInLotsFaqContent;
	}
	public void setSaleInLotsFaqContent(String saleInLotsFaqContent) {
		this.saleInLotsFaqContent = saleInLotsFaqContent;
	}
	
}
