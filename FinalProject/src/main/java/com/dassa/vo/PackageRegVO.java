package com.dassa.vo;

import java.util.HashMap;

public class PackageRegVO {

	private int packageIdx;
	private int packageType;
	private String packageName;
	private String packageImgName;
	private String packageImgPath;
	private HashMap<String, PackageRegOptionVO> packageOptionList;
	private int packageStatus;
	private String packageRegDate;
	private String packageDeleteDate;

	public PackageRegVO() {
		super();
	}

	public PackageRegVO(int packageIdx, int packageType, String packageName, String packageImgName, String packageImgPath, HashMap<String, PackageRegOptionVO> packageOptionList, int packageStatus, String packageRegDate, String packageDeleteDate) {
		this.packageIdx = packageIdx;
		this.packageType = packageType;
		this.packageName = packageName;
		this.packageImgName = packageImgName;
		this.packageImgPath = packageImgPath;
		this.packageOptionList = packageOptionList;
		this.packageStatus = packageStatus;
		this.packageRegDate = packageRegDate;
		this.packageDeleteDate = packageDeleteDate;
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

	public String getPackageImgName() {
		return packageImgName;
	}

	public void setPackageImgName(String packageImgName) {
		this.packageImgName = packageImgName;
	}

	public String getPackageImgPath() {
		return packageImgPath;
	}

	public void setPackageImgPath(String packageImgPath) {
		this.packageImgPath = packageImgPath;
	}

	public HashMap<String, PackageRegOptionVO> getPackageOptionList() {
		return packageOptionList;
	}

	public void setPackageOptionList(HashMap<String, PackageRegOptionVO> packageOptionList) {
		this.packageOptionList = packageOptionList;
	}

	public int getPackageStatus() {
		return packageStatus;
	}

	public void setPackageStatus(int packageStatus) {
		this.packageStatus = packageStatus;
	}

	public String getPackageRegDate() {
		return packageRegDate;
	}

	public void setPackageRegDate(String packageRegDate) {
		this.packageRegDate = packageRegDate;
	}

	public String getPackageDeleteDate() {
		return packageDeleteDate;
	}

	public void setPackageDeleteDate(String packageDeleteDate) {
		this.packageDeleteDate = packageDeleteDate;
	}
}
