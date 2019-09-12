package com.dasomcompany.couns.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.dasomcompany.couns.service.CounsService;

@RequestMapping("/")
@Controller
public class CounsController {
	
	@Autowired
	private CounsService counsService;
	
	/*-------------------견적문의 매핑-----------------------*/
	@RequestMapping("couns.do")
	public ModelAndView couns(ModelAndView mView) {
		
		mView.setViewName("couns");
		return mView;
		
	}
	
	/*-------------------견적문의 입력 매핑-----------------------*/
	@RequestMapping("counsform.do")
	public ModelAndView counsform(ModelAndView mView) {
		
		mView.setViewName("couns_writeform");
		return mView;
		
	}

	
	 @RequestMapping(value="counsinsert.do", method = RequestMethod.POST) 
	 public ModelAndView insert(HttpServletRequest request, ModelAndView mView) {
		 
		 counsService.insertCouns(request); 
		 
		 mView.setViewName("couns_write");
		
		 return mView;
	 }
	 
	 /*-------------------견적문의 출력 매핑-----------------------*/
//	 
//	 @RequestMapping("counslist")
//	 public ModelAndView list(HttpServletRequest request, ModelAndView mView) {
//		 
//		 counsService.getList(request); 
//		 
//		 mView.setViewName("counsTb");
//		
//		 return mView;
//	 }
//	 

	
}
