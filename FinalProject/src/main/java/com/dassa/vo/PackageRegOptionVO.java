package com.dassa.vo;

public class PackageRegOptionVO {

	private String packageOptionName;
	private String packageOptionValue;
	private String packageOptionEtc;


	public PackageRegOptionVO(String packageOptionName, String packageOptionValue, String packageOptionEtc) {
		this.packageOptionName = packageOptionName;
		this.packageOptionValue = packageOptionValue;
		this.packageOptionEtc = packageOptionEtc;
	}

	public PackageRegOptionVO() {
		super();
	}

	public String getPackageOptionName() {
		return packageOptionName;
	}

	public void setPackageOptionName(String packageOptionName) {
		this.packageOptionName = packageOptionName;
	}

	public String getPackageOptionValue() {
		return packageOptionValue;
	}

	public void setPackageOptionValue(String packageOptionValue) {
		this.packageOptionValue = packageOptionValue;
	}

	public String getPackageOptionEtc() {
		return packageOptionEtc;
	}

	public void setPackageOptionEtc(String packageOptionEtc) {
		this.packageOptionEtc = packageOptionEtc;
	}
}
