package com.dasomcompany.portpolio.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.dasomcompany.dto.PortpolioDto;

public interface PortpolioService {

	public void insertPort(HttpServletRequest request);

	public void getList(HttpServletRequest request);

	public void getData(int num, ModelAndView mView);

	public void delete(int num);

	public void getUpdateData(int num, ModelAndView mView);

	public void updateNotice(PortpolioDto dto);
}
