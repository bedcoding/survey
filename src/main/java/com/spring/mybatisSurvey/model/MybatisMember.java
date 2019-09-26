package com.spring.mybatisSurvey.model;

import javax.persistence.Entity;

@Entity
public class MybatisMember {
	private int answernum;
	private int answer;
	private String question;
	private String gender;
	private int result;  // 통계1 (답변)
	private int result2; // 통계2 (남녀)
	

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public int getResult2() {
		return result2;
	}

	public void setResult2(int result2) {
		this.result2 = result2;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
}