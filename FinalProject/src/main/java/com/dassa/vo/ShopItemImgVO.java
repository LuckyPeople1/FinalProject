package com.dassa.vo;

public class ShopItemImgVO {
	private int imgIdx;
	private int itemIdx;
	private String imgName;
	private String imgPath;
	public ShopItemImgVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShopItemImgVO(int imgIdx, int itemIdx, String imgName, String imgPath) {
		super();
		this.imgIdx = imgIdx;
		this.itemIdx = itemIdx;
		this.imgName = imgName;
		this.imgPath = imgPath;
	}
	public int getImgIdx() {
		return imgIdx;
	}
	public void setImgIdx(int imgIdx) {
		this.imgIdx = imgIdx;
	}
	public int getItemIdx() {
		return itemIdx;
	}
	public void setItemIdx(int itemIdx) {
		this.itemIdx = itemIdx;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
}
