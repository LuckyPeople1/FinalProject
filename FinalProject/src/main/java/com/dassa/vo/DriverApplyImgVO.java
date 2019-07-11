package com.dassa.vo;

public class DriverApplyImgVO {
									//MOVE_APPLY_IMG_TBL
	private int imgIdx;				//이미지 인덱스번호
	private String imgName;			//이미지 이름	(사용자가 올린거)
	private String imgPath;			//이미지 경로	(사용자가 올린거)
	public DriverApplyImgVO(int imgIdx, String imgName, String imgPath) {
		super();
		this.imgIdx = imgIdx;
		this.imgName = imgName;
		this.imgPath = imgPath;
	}
	public DriverApplyImgVO() {
		super();
	}
	public int getImgIdx() {
		return imgIdx;
	}
	public void setImgIdx(int imgIdx) {
		this.imgIdx = imgIdx;
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
