package com.dassa.vo;

public class DriverApplyOptionVO {
	// MOVE_APPLY_OPTION_TBL;
	private int packageIdx;			//패키지 인덱스 번호
	private int packageType;		//패키지 타입 가전/가구 
	private String packageName;		//세탁기,냉장고,모니터
	private String packageOption;	//용량200, 김치냉장고
	private String packageImgPath;	//이미지 경로	(관리자가 올린거)
	
	public DriverApplyOptionVO(int packageIdx, int packageType, String packageName, String packageOption,
			String packageImgPath) {
		super();
		this.packageIdx = packageIdx;
		this.packageType = packageType;
		this.packageName = packageName;
		this.packageOption = packageOption;
		this.packageImgPath = packageImgPath;
	}
	public DriverApplyOptionVO() {
		super();
	}
	public int getPackageIdx() {
		return packageIdx;
	}
	public void setPackageIdx(int packageIdx) {
		this.packageIdx = packageIdx;
	}
	public int getPackageType() {
		return packageType;
	}
	public void setPackageType(int packageType) {
		this.packageType = packageType;
	}
	public String getPackageName() {
		return packageName;
	}
	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}
	public String getPackageOption() {
		return packageOption;
	}
	public void setPackageOption(String packageOption) {
		this.packageOption = packageOption;
	}
	public String getPackageImgPath() {
		return packageImgPath;
	}
	public void setPackageImgPath(String packageImgPath) {
		this.packageImgPath = packageImgPath;
	}
	
}
