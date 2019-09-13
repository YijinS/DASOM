package com.dasomcompany.couns.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.dasomcompany.dto.GuestDto;


public interface CounsService {
	public void insertCouns(HttpServletRequest request);

	public void getList(HttpServletRequest request);

	public void getData(int num, ModelAndView mView);

	public void delete(int num);

	public void updateNotice(GuestDto dto);

	public void getUpdateData(int num, ModelAndView mView);
}
