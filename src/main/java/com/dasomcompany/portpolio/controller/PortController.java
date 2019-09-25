package com.dasomcompany.portpolio.controller;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.dasomcompany.dto.PortpolioDto;
import com.dasomcompany.portpolio.service.PortpolioService;

@Controller
public class PortController {
	
	@Autowired
	private PortpolioService portpolioService;
	
	/*
	 * 시공사진
	 * 
	*/
	@RequestMapping(value = "portpolio.do", method = RequestMethod.GET)
	public ModelAndView portpolio(Locale locale, HttpServletRequest request, ModelAndView mView) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		portpolioService.getList(request); 
		
		mView.setViewName("portpolio/portpolio");
		return mView;
	}
	
	
	@RequestMapping("portpolioform.do")
	public ModelAndView counsform(ModelAndView mView) {
		
		mView.setViewName("portpolio/portpolio_writeform");
		return mView;
		
	}
	
	 @RequestMapping(value="portpolioinsert.do", method = RequestMethod.POST) 
	 public ModelAndView insert(HttpServletRequest request, ModelAndView mView) throws IOException, Exception {
		
		 
		 request.setCharacterEncoding("UTF-8");
		 portpolioService.insertPort(request); 
		 
		 mView.setViewName("portpolio/portpolio_write");
		
		 return mView;
	 }
	 
		@RequestMapping("portpoliodetail.do")
		public ModelAndView detail(@RequestParam int num, ModelAndView mView) {
			portpolioService.getData(num, mView);
			mView.setViewName("portpolio/portpolio_detail");
			return mView;
		}
		

		@RequestMapping("portpoliodelete.do")
		public String delete(@RequestParam int num) {
			portpolioService.delete(num);
			return "portpolio/portpolio_delete";
		}
		

		@RequestMapping("portpolioupdateform.do")
		public ModelAndView updateform(@RequestParam int num, ModelAndView mView) {
			
			portpolioService.getUpdateData(num, mView);
			mView.setViewName("portpolio/portpolio_updateform");
			return mView;
		}
	
		 @RequestMapping("portpolioupdate.do") 
		 public ModelAndView update(HttpServletRequest request,  @ModelAttribute PortpolioDto dto) throws UnsupportedEncodingException {
			 request.setCharacterEncoding("UTF-8");
			 portpolioService.updateNotice(dto); 
			 return new ModelAndView("portpolio/portpolio_update"); 
		  
		 }
	
}
