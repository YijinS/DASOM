package com.dasomcompany.couns.service;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dasomcompany.dao.CounsDao;
import com.dasomcompany.dto.GuestDto;

@Service
public class CounsServiceImpl implements CounsService{
	
	@Autowired
	private CounsDao counsDao;

	@Override
	public void insertCouns(HttpServletRequest request) {
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		GuestDto guestDto = new GuestDto();
		guestDto.setName(name);
		guestDto.setPwd(pwd);
		guestDto.setTitle(title);
		guestDto.setContent(content);
		System.out.println();
		System.out.println();
		System.out.println("***********ㅈㅈㅈㅈㅈㅈㅈㅈㅈ    "+name+"***********ㅈㅈㅈㅈㅈㅈㅈㅈㅈ    ");
		System.out.println("***********ㅈㅈㅈㅈㅈㅈㅈㅈㅈ    "+pwd+"***********ㅈㅈㅈㅈㅈㅈㅈㅈㅈ    ");
		System.out.println("***********ㅈㅈㅈㅈㅈㅈㅈㅈㅈ    "+title+"***********ㅈㅈㅈㅈㅈㅈㅈㅈㅈ    ");
		System.out.println("***********ㅈㅈㅈㅈㅈㅈㅈㅈㅈ    "+content+"***********ㅈㅈㅈㅈㅈㅈㅈㅈㅈ    ");
		System.out.println();
		System.out.println();
		
		counsDao.insert(guestDto);
		
		
	}

}
