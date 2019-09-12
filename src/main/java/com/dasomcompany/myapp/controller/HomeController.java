package com.dasomcompany.myapp.controller;
 
import java.text.DateFormat; 
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dasomcompany.admin.service.AdminService;

@RequestMapping("/")
@Controller
public class HomeController {
	
	@Autowired
	private AdminService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	
	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String main(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "main";
	}
	
	/*
	 * 오시는 길
	 * 
	 * */
	@RequestMapping(value = "direction.do", method = RequestMethod.GET)
	public String direction(Locale locale, Model model) {
		
		
		return "direction";
	}
	

	/*-------------------로그인 매핑-----------------------*/
	@GetMapping("thrmsgh.do")
	public String login() {
			
		return "login";
	}


	@PostMapping("login.do")
	public ModelAndView successLogin(ModelAndView mView, HttpServletRequest request, HttpSession session) {
		service.successLogin(mView, request, session);
		
		return mView;
	}

	@ResponseBody
	@RequestMapping("loginCheck.do")
	public Map<String, Object> loginCheck(String id, String pwd) {

		return service.checkLogin(id, pwd);
	}
	
	/*-------------------로그아웃 매핑-----------------------*/
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		
		service.logout(session);

		return "redirect:main.do";
	}


	
}
