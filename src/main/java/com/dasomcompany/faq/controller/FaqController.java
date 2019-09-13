package com.dasomcompany.faq.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dasomcompany.faq.service.FaqService;

@RequestMapping("/")
@Controller
public class FaqController {
	
	@Autowired
	private FaqService faqService;
	
	/*-------------------견적문의 매핑-----------------------*/
	@RequestMapping("faq.do")
	public ModelAndView faq(HttpServletRequest request, ModelAndView mView) {
		faqService.getList(request); 
		mView.setViewName("faq");
		return mView;
		
	}
}
