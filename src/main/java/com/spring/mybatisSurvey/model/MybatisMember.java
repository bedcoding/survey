package com.spring.mybatisSurvey.model;

import javax.persistence.Entity;

@Entity
public class MybatisMember {
	private int answernum;
	private int answer;
	private String question;
	private int result;
	
	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public int getAnswernum() {
		return answernum;
	}
	
	public void setAnswernum(int answernum) {
		this.answernum = answernum;
	}
	
	public int getAnswer() {
		return answer;
	}
	
	public void setAnswer(int answer) {
		this.answer = answer;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}
}