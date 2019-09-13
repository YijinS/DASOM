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
import com.dasomcompany.dto.GuestDto;

@RequestMapping("/")
@Controller
public class CounsController {
	
	@Autowired
	private CounsService counsService;
	
	/*-------------------寃ъ쟻臾몄쓽 留ㅽ븨-----------------------*/
	@RequestMapping("couns.do")
	public ModelAndView couns(HttpServletRequest request, ModelAndView mView) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		counsService.getList(request); 
		
		mView.setViewName("couns");
		return mView;
		
	}
	
	/*-------------------寃ъ쟻臾몄쓽 �엯�젰 留ㅽ븨-----------------------*/
	@RequestMapping("counsform.do")
	public ModelAndView counsform(ModelAndView mView) {
		
		mView.setViewName("couns_writeform");
		return mView;
		
	}

	
	 @RequestMapping(value="counsinsert.do", method = RequestMethod.POST) 
	 public ModelAndView insert(HttpServletRequest request, ModelAndView mView) throws UnsupportedEncodingException {
		 
		 request.setCharacterEncoding("UTF-8");
		 counsService.insertCouns(request); 
		 
		 mView.setViewName("couns_write");
		
		 return mView;
	 }
	 
	 /*-------------------寃ъ쟻臾몄쓽 異쒕젰 留ㅽ븨-----------------------*/
	 	
		@RequestMapping("detail.do")
		public ModelAndView detail(@RequestParam int num, ModelAndView mView) {
			counsService.getData(num, mView);
			System.out.println("而⑦듃濡ㅻ윭�쓽 num"+num);
			mView.setViewName("couns_detail");
			return mView;
		}
		
		
	/*-------------------寃ъ쟻臾몄쓽 �궘�젣-----------------------*/
		
		@RequestMapping("delete.do")
		public String delete(@RequestParam int num) {
			counsService.delete(num);
			
			System.out.print("�궘�젣 �셿猷�");
			
			return "couns_delete";
		}
		

		@RequestMapping("updateform.do")
		public ModelAndView updateform(@RequestParam int num, ModelAndView mView) {
			
			counsService.getUpdateData(num, mView);
			mView.setViewName("couns_updateform");
			return mView;
		}
	
		 @RequestMapping("update.do") 
		 public ModelAndView update(HttpServletRequest request,  @ModelAttribute GuestDto dto) throws UnsupportedEncodingException {
			 request.setCharacterEncoding("UTF-8");
			 String title = request.getParameter("title");
			 System.out.println("title >> " + title);
			 
			 counsService.updateNotice(dto); 
			 return new ModelAndView("couns_update"); 
		  
		 }
	 
	
}
