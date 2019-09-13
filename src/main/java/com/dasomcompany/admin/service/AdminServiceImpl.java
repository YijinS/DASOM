package com.dasomcompany.admin.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.dasomcompany.dao.AdminDao;
import com.dasomcompany.dto.AdminDto;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDao adminDao;

	@Override
	public Map<String, Object> checkID(String id) {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", adminDao.isExist(id));
		return map;
	}

	@Override
	public Map<String, Object> checkLogin(String id, String pwd) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		AdminDto dto = adminDao.getData(id);
		System.out.println(" dto.getPwd()"+ dto.getPwd()+ dto.getId());
		if(dto != null)
			if(BCrypt.checkpw(pwd, dto.getPwd())) { //해시사용 패스워드 비교
				map.put("check", true);
				return map;
			}

		map.put("check", false);
		return map;
	}

	@Override
	public void successLogin(ModelAndView mView, HttpServletRequest request, HttpSession session) {
		String id = request.getParameter("id");
		session.setAttribute("admin", adminDao.getData(id));
		String url = request.getParameter("url");
		
		if(url != null && url != "")
			mView.setViewName("redirect:"+url);
		else 
			mView.setViewName("redirect:/main.do");

		
	}

	@Override
	public void logout(HttpSession session) {
		session.removeAttribute("admin");
		session.removeAttribute("check");
		
	}

}
