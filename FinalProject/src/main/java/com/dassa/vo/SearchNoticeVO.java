package com.dassa.vo;

public class SearchNoticeVO {
	private String keyWord;
	private int code;
	private int start;
	private int end;
	public SearchNoticeVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SearchNoticeVO(String keyWord, int code, int start, int end) {
		super();
		this.keyWord = keyWord;
		this.code = code;
		this.start = start;
		this.end = end;
	}
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
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
