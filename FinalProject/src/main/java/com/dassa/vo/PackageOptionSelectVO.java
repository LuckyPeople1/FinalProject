package com.dassa.vo;


/**
 * 최종적으로 짐에 대한 옵션을 선택한 객체
 */
public class PackageOptionSelectVO {

	private int packageIdx;
	private int packageType;
	private String packageName;
	private String packageOption;
	private String packageImgPath;

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
