package com.dassa.vo;

import java.sql.Date;

public class QuestionVO {
	private int questionsIndex;
	private String questionsUserType;
	private String questionsTitle;
	private String questionsContent;
	private String questionsAnswer;
	private String questionsWriter;
	private Date questionsRegDate;
	private String questionsState;
	private int rnum;
	public QuestionVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QuestionVO(int questionsIndex, String questionsUserType, String questionsTitle, String questionsContent,
			String questionsAnswer, String questionsWriter, Date questionsRegDate, String questionsState, int rnum) {
		super();
		this.questionsIndex = questionsIndex;
		this.questionsUserType = questionsUserType;
		this.questionsTitle = questionsTitle;
		this.questionsContent = questionsContent;
		this.questionsAnswer = questionsAnswer;
		this.questionsWriter = questionsWriter;
		this.questionsRegDate = questionsRegDate;
		this.questionsState = questionsState;
		this.rnum = rnum;
	}
	public int getQuestionsIndex() {
		return questionsIndex;
	}
	public void setQuestionsIndex(int questionsIndex) {
		this.questionsIndex = questionsIndex;
	}
	public String getQuestionsUserType() {
		return questionsUserType;
	}
	public void setQuestionsUserType(String questionsUserType) {
		this.questionsUserType = questionsUserType;
	}
	public String getQuestionsTitle() {
		return questionsTitle;
	}
	public void setQuestionsTitle(String questionsTitle) {
		this.questionsTitle = questionsTitle;
	}
	public String getQuestionsContent() {
		return questionsContent;
	}
	public void setQuestionsContent(String questionsContent) {
		this.questionsContent = questionsContent;
	}
	public String getQuestionsAnswer() {
		return questionsAnswer;
	}
	public void setQuestionsAnswer(String questionsAnswer) {
		this.questionsAnswer = questionsAnswer;
	}
	public String getQuestionsWriter() {
		return questionsWriter;
	}
	public void setQuestionsWriter(String questionsWriter) {
		this.questionsWriter = questionsWriter;
	}
	public Date getQuestionsRegDate() {
		return questionsRegDate;
	}
	public void setQuestionsRegDate(Date questionsRegDate) {
		this.questionsRegDate = questionsRegDate;
	}
	public String getQuestionsState() {
		return questionsState;
	}
	public void setQuestionsState(String questionsState) {
		this.questionsState = questionsState;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
}
