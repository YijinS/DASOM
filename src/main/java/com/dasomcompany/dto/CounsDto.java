package com.dasomcompany.dto;

import java.util.Date;

public class CounsDto {
	
	private int num;
	private String title;
	private String content;
	private String name;
	private String pwd;
	private Date redDate;
	private int hit;
	
	// 페이징 처리를 위한 필드
	private int startRowNum;
	private int endRowNum;
	
	// 이전글, 다음글의 글번호를 담을 필드
	private int prevNum;
	private int nextNum;
	//이전 다음 제목
	private String prevTitle;
	private String nextTitle;
	
	public CounsDto() {}

	public CounsDto(int num, String title, String content, String name, String pwd, Date redDate, int hit,
			int startRowNum, int endRowNum, int prevNum, int nextNum, String prevTitle, String nextTitle) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.name = name;
		this.pwd = pwd;
		this.redDate = redDate;
		this.hit = hit;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
		this.prevNum = prevNum;
		this.nextNum = nextNum;
		this.prevTitle = prevTitle;
		this.nextTitle = nextTitle;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public Date getRedDate() {
		return redDate;
	}

	public void setRedDate(Date redDate) {
		this.redDate = redDate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
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

	public int getPrevNum() {
		return prevNum;
	}

	public void setPrevNum(int prevNum) {
		this.prevNum = prevNum;
	}

	public int getNextNum() {
		return nextNum;
	}

	public void setNextNum(int nextNum) {
		this.nextNum = nextNum;
	}

	public String getPrevTitle() {
		return prevTitle;
	}

	public void setPrevTitle(String prevTitle) {
		this.prevTitle = prevTitle;
	}

	public String getNextTitle() {
		return nextTitle;
	}

	public void setNextTitle(String nextTitle) {
		this.nextTitle = nextTitle;
	}

	
	
	

}
