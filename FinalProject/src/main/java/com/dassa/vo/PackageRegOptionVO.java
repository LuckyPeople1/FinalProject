package com.dassa.vo;

public class PackageRegOptionVO {

	private String[] packageOptionValue;
	private String packageOptionEtc;

	public PackageRegOptionVO() {
		super();
	}

	public PackageRegOptionVO(String[] packageOptionValue, String packageOptionEtc) {
		this.packageOptionValue = packageOptionValue;
		this.packageOptionEtc = packageOptionEtc;
	}

	public String[] getPackageOptionValue() {
		return packageOptionValue;
	}

	public void setPackageOptionValue(String[] packageOptionValue) {
		this.packageOptionValue = packageOptionValue;
	}

	public String getPackageOptionEtc() {
		return packageOptionEtc;
	}

	public void setPackageOptionEtc(String packageOptionEtc) {
		this.packageOptionEtc = packageOptionEtc;
	}
}
