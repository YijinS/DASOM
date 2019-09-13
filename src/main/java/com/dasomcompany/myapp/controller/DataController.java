package com.dasomcompany.myapp.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dasomcompany.couns.service.CounsService;

@Controller
public class DataController {
	
	
	@Autowired
	private CounsService counsService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/*
	 * 견적문의
	 * 
	 * */
	@RequestMapping(value = "/getCounsDiv.do", method = RequestMethod.GET)
	public ModelAndView direction(HttpServletRequest request, Locale locale, ModelAndView mView) {
		
		counsService.getList(request); 
		mView.setViewName("/ajax/counsTb");
		
		return mView;
	}
	
}
