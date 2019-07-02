package com.dassa.vo;

import java.util.List;

public class PackageSelectVO {

	private int packageIdx;
	private int packageType;
	private String packageName;
	private String packageImgName;
	private String packageImgPath;
	private List<PackageRegOptionVO> packageOptionList;


	public PackageSelectVO() {
		super();
	}


	public PackageSelectVO(int packageIdx, int packageType, String packageName, String packageImgName, String packageImgPath, List<PackageRegOptionVO> packageOptionList) {
		this.packageIdx = packageIdx;
		this.packageType = packageType;
		this.packageName = packageName;
		this.packageImgName = packageImgName;
		this.packageImgPath = packageImgPath;
		this.packageOptionList = packageOptionList;
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

	public List<PackageRegOptionVO> getPackageOptionList() {
		return packageOptionList;
	}

	public void setPackageOptionList(List<PackageRegOptionVO> packageOptionList) {
		this.packageOptionList = packageOptionList;
	}
}
