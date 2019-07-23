package com.dassa.vo;

public class SearchQuestionVO {
	private String keyWord;
	private int code;
	private int start;
	private int end;
	private String type;
	public SearchQuestionVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SearchQuestionVO(String keyWord, int code, int start, int end, String type) {
		super();
		this.keyWord = keyWord;
		this.code = code;
		this.start = start;
		this.end = end;
		this.type = type;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
