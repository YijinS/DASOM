package com.dasomcompany.dto;

import oracle.sql.DATE;

public class PortpolioDto {
	private int num;
	private String title;
	private String content;
	private DATE reg_Date;
	private String main_photo;
	
	public PortpolioDto() {}

	public PortpolioDto(int num, String title, String content, DATE reg_Date, String main_photo) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.reg_Date = reg_Date;
		this.main_photo = main_photo;
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

	public DATE getReg_Date() {
		return reg_Date;
	}

	public void setReg_Date(DATE reg_Date) {
		this.reg_Date = reg_Date;
	}

	public String getMain_photo() {
		return main_photo;
	}

	public void setMain_photo(String main_photo) {
		this.main_photo = main_photo;
	}


	
	
	
	
}
