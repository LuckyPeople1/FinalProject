package com.dassa.vo;

import java.sql.Date;

public class FaqVO {
	private int faqIndex;
	private String faqUserType;
	private String faqQuestion;
	private String faqAnswer;
	private String faqState;
	private Date faqRegDate;
	public FaqVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public FaqVO(int faqIndex, String faqUserType, String faqQuestion, String faqAnswer, String faqState,
			Date faqRegDate) {
		super();
		this.faqIndex = faqIndex;
		this.faqUserType = faqUserType;
		this.faqQuestion = faqQuestion;
		this.faqAnswer = faqAnswer;
		this.faqState = faqState;
		this.faqRegDate = faqRegDate;
	}
	public int getFaqIndex() {
		return faqIndex;
	}
	public void setFaqIndex(int faqIndex) {
		this.faqIndex = faqIndex;
	}
	public String getFaqUserType() {
		return faqUserType;
	}
	public void setFaqUserType(String faqUserType) {
		this.faqUserType = faqUserType;
	}
	public String getFaqQuestion() {
		return faqQuestion;
	}
	public void setFaqQuestion(String faqQuestion) {
		this.faqQuestion = faqQuestion;
	}
	public String getFaqAnswer() {
		return faqAnswer;
	}
	public void setFaqAnswer(String faqAnswer) {
		this.faqAnswer = faqAnswer;
	}
	public String getFaqState() {
		return faqState;
	}
	public void setFaqState(String faqState) {
		this.faqState = faqState;
	}
	public Date getFaqRegDate() {
		return faqRegDate;
	}
	public void setFaqRegDate(Date faqRegDate) {
		this.faqRegDate = faqRegDate;
	}
}
