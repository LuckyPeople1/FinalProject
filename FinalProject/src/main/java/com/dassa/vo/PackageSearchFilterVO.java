package com.dassa.vo;

public class PackageSearchFilterVO {

	private String packageName;
	private String[] packageType;
	private String minDate;
	private String maxDate;

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	public String[] getPackageType() {
		return packageType;
	}

	public void setPackageType(String[] packageType) {
		this.packageType = packageType;
	}

	public String getMinDate() {
		return minDate;
	}

	public void setMinDate(String minDate) {
		this.minDate = minDate;
	}

	public String getMaxDate() {
		return maxDate;
	}

	public void setMaxDate(String maxDate) {
		this.maxDate = maxDate;
	}
}
