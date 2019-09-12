package com.dasomcompany.dto;

import java.util.Date;

public class GuestDto {
	
	private int num;
	private String title;
	private String content;
	private String name;
	private String pwd;
	private Date redDate;
	private int hit;
	
	public GuestDto() {}

	public GuestDto(int num, String title, String content, String name, String pwd, Date redDate, int hit) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.name = name;
		this.pwd = pwd;
		this.redDate = redDate;
		this.hit = hit;
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
	
	

}
