package com.dasomcompany.admin.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

public interface AdminService {
	public Map<String,Object> checkID(String id);
	public Map<String,Object> checkLogin(String id,String pwd);
	public void successLogin(ModelAndView mView,HttpServletRequest request,HttpSession session);
	public void logout(HttpSession session);
}
