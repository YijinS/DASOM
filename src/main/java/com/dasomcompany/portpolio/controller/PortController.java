package com.dasomcompany.portpolio.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dasomcompany.myapp.controller.HomeController;

@Controller
public class PortController {

	
	/*
	 * 시공사진
	 * 
	*/
	@RequestMapping(value = "portpolio.do", method = RequestMethod.GET)
	public String portpolio(Locale locale, Model model) {
		
		
		return "portpolio/portpolio";
	}
}
