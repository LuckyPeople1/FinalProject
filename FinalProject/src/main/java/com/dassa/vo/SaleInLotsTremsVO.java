package com.dassa.vo;

public class SaleInLotsTremsVO {
	private int saleInLotsTermsIdx;
	private String saleInLotsTermsType;
	private String saleInLotsTermsTitle;
	private String saleInLotsTermsContent;
	public SaleInLotsTremsVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SaleInLotsTremsVO(int saleInLotsTermsIdx, String saleInLotsTermsType, String saleInLotsTermsTitle,
			String saleInLotsTermsContent) {
		super();
		this.saleInLotsTermsIdx = saleInLotsTermsIdx;
		this.saleInLotsTermsType = saleInLotsTermsType;
		this.saleInLotsTermsTitle = saleInLotsTermsTitle;
		this.saleInLotsTermsContent = saleInLotsTermsContent;
	}
	public int getSaleInLotsTermsIdx() {
		return saleInLotsTermsIdx;
	}
	public void setSaleInLotsTermsIdx(int saleInLotsTermsIdx) {
		this.saleInLotsTermsIdx = saleInLotsTermsIdx;
	}
	public String getSaleInLotsTermsType() {
		return saleInLotsTermsType;
	}
	public void setSaleInLotsTermsType(String saleInLotsTermsType) {
		this.saleInLotsTermsType = saleInLotsTermsType;
	}
	public String getSaleInLotsTermsTitle() {
		return saleInLotsTermsTitle;
	}
	public void setSaleInLotsTermsTitle(String saleInLotsTermsTitle) {
		this.saleInLotsTermsTitle = saleInLotsTermsTitle;
	}
	public String getSaleInLotsTermsContent() {
		return saleInLotsTermsContent;
	}
	public void setSaleInLotsTermsContent(String saleInLotsTermsContent) {
		this.saleInLotsTermsContent = saleInLotsTermsContent;
	}
	
}
