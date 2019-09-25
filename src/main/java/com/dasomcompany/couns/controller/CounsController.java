package com.dasomcompany.couns.controller;


import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.dasomcompany.couns.service.CounsService;
import com.dasomcompany.dto.CounsDto;

@RequestMapping("/")
@Controller
public class CounsController {
	
	@Autowired
	private CounsService counsService;
	
	@RequestMapping("couns.do")
	public ModelAndView couns(HttpServletRequest request, ModelAndView mView) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		counsService.getList(request); 
		
		mView.setViewName("couns/couns");
		return mView;
		
	}
	
	@RequestMapping("counsform.do")
	public ModelAndView counsform(ModelAndView mView) {
		
		mView.setViewName("couns/couns_writeform");
		return mView;
		
	}
	
	 @RequestMapping(value="counsinsert.do", method = RequestMethod.POST) 
	 public ModelAndView insert(HttpServletRequest request, ModelAndView mView) throws UnsupportedEncodingException {
		 
		 request.setCharacterEncoding("UTF-8");
		 counsService.insertCouns(request); 
		 
		 mView.setViewName("couns/couns_write");
		
		 return mView;
	 }
	 	
		@RequestMapping("detail.do")
		public ModelAndView detail(@RequestParam int num, ModelAndView mView) {
			counsService.getData(num, mView);
			mView.setViewName("couns/couns_detail");
			return mView;
		}
	
		
		@RequestMapping("delete.do")
		public String delete(@RequestParam int num) {
			counsService.delete(num);
			return "couns/couns_delete";
		}
		

		@RequestMapping("updateform.do")
		public ModelAndView updateform(@RequestParam int num, ModelAndView mView) {
			
			counsService.getUpdateData(num, mView);
			mView.setViewName("couns/couns_updateform");
			return mView;
		}
	
		 @RequestMapping("update.do") 
		 public ModelAndView update(HttpServletRequest request,  @ModelAttribute CounsDto dto) throws UnsupportedEncodingException {
			 request.setCharacterEncoding("UTF-8");
			 
			 counsService.updateNotice(dto); 
			 return new ModelAndView("couns/couns_update"); 
		  
		 }
	 
	
}
