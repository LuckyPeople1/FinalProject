package com.dassa.vo;

import java.sql.Date;

public class NoticeVO {
	private int noticeIndex;
	private String noticeType;
	private String noticeTitle;
	private String noticeContent;
	private String noticeWriter;
	private String noticeFilename;
	private String noticeFilepath;
	private int noticeHit;
	private Date noticeRegDate;
	private String noticeState;
	private int rownum;
	
	public NoticeVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticeVO(int noticeIndex, String noticeType, String noticeTitle, String noticeContent, String noticeWriter,
			String noticeFilename, String noticeFilepath, int noticeHit, Date noticeRegDate, String noticeState, int rownum) {
		super();
		this.noticeIndex = noticeIndex;
		this.noticeType = noticeType;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeWriter = noticeWriter;
		this.noticeFilename = noticeFilename;
		this.noticeFilepath = noticeFilepath;
		this.noticeHit = noticeHit;
		this.noticeRegDate = noticeRegDate;
		this.noticeState = noticeState;
		this.rownum = rownum;
	}
	public int getNoticeIndex() {
		return noticeIndex;
	}
	public void setNoticeIndex(int noticeIndex) {
		this.noticeIndex = noticeIndex;
	}
	public String getNoticeType() {
		return noticeType;
	}
	public void setNoticeType(String noticeType) {
		this.noticeType = noticeType;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeWriter() {
		return noticeWriter;
	}
	public void setNoticeWriter(String noticeWriter) {
		this.noticeWriter = noticeWriter;
	}
	public String getNoticeFilename() {
		return noticeFilename;
	}
	public void setNoticeFilename(String noticeFilename) {
		this.noticeFilename = noticeFilename;
	}
	public String getNoticeFilepath() {
		return noticeFilepath;
	}
	public void setNoticeFilepath(String noticeFilepath) {
		this.noticeFilepath = noticeFilepath;
	}
	public int getNoticeHit() {
		return noticeHit;
	}
	public void setNoticeHit(int noticeHit) {
		this.noticeHit = noticeHit;
	}
	public Date getNoticeRegDate() {
		return noticeRegDate;
	}
	public void setNoticeRegDate(Date noticeRegDate) {
		this.noticeRegDate = noticeRegDate;
	}
	public String getNoticeState() {
		return noticeState;
	}
	public void setNoticeState(String noticeState) {
		this.noticeState = noticeState;
	}
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	
}
