package com.dasomcompany.myapp.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DataController {

	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/*
	 * 견적문의
	 * 
	 * */
	@RequestMapping(value = "/getCounsDiv.do", method = RequestMethod.GET)
	public String direction(Locale locale, Model model) {
		
		
		
		return "/ajax/counsTb";
	}
	
}
