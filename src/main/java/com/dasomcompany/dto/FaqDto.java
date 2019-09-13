package com.dasomcompany.dto;

public class FaqDto {
	
	private int num;
	private String question;
	private String answer;
	

	// 페이징 처리를 위한 필드
	private int startRowNum;
	private int endRowNum;
	
	public FaqDto() {}

	public FaqDto(int num, String question, String answer, int startRowNum, int endRowNum) {
		super();
		this.num = num;
		this.question = question;
		this.answer = answer;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getStartRowNum() {
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum() {
		return endRowNum;
	}

	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}
	
	
	

}
