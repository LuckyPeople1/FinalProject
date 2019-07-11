package com.dassa.vo;

public class Page {
	
	int start;
	int end;
	public Page(int start, int end) {
		super();
		this.start = start;
		this.end = end;
	}
	public Page() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	
	

}
