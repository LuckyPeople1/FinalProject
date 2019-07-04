package com.dassa.vo;

import java.util.List;

public class PackageSelectVO {

	private int packageIdx;
	private int packageType;
	private String packageName;
	private String packageImgPath;
	private String packageAmount;

	public PackageSelectVO() {
		super();
	}

	public PackageSelectVO(int packageIdx, int packageType, String packageName, String packageImgPath, String packageAmount) {
		this.packageIdx = packageIdx;
		this.packageType = packageType;
		this.packageName = packageName;
		this.packageImgPath = packageImgPath;
		this.packageAmount = packageAmount;
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

	public String getPackageImgPath() {
		return packageImgPath;
	}

	public void setPackageImgPath(String packageImgPath) {
		this.packageImgPath = packageImgPath;
	}

	public String getPackageAmount() {
		return packageAmount;
	}

	public void setPackageAmount(String packageAmount) {
		this.packageAmount = packageAmount;
	}
}
