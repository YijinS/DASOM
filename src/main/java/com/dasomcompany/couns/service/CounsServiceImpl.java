package com.dasomcompany.couns.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.dasomcompany.dao.CounsDao;
import com.dasomcompany.dto.GuestDto;

@Service
public class CounsServiceImpl implements CounsService{
	
	@Autowired
	private CounsDao counsDao;
	
	// 한 페이지에 나타낼 row 의 갯수
	static final int PAGE_ROW_COUNT = 5;
	// 하단 디스플레이 페이지 갯수
	static final int PAGE_DISPLAY_COUNT = 5;


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

	@Override
	public void getList(HttpServletRequest request) {
		GuestDto dto = new GuestDto();
		
		// 보여줄 페이지의 번호
		int pageNum = 1;
		//보여줄 페이지의 번호가 파라미터로 전달되는지 읽어와 본다.	
		String strPageNum=request.getParameter("pageNum");
		if(strPageNum != null){//페이지 번호가 파라미터로 넘어온다면
		//페이지 번호를 설정한다.
		pageNum=Integer.parseInt(strPageNum);
		}
		// 보여줄 페이지 데이터의 시작 ResultSet row 번호
		int startRowNum = 1 + (pageNum - 1) * PAGE_ROW_COUNT;
		// 보여줄 페이지 데이터의 끝 ResultSet row 번호
		int endRowNum = pageNum * PAGE_ROW_COUNT;

		// 전체 row 의 갯수를 읽어온다. 
		int totalRow = counsDao.getCount(dto);
		// 전체 페이지의 갯수 구하기
		int totalPageCount = (int) Math.ceil(totalRow / (double) PAGE_ROW_COUNT);
		// 시작 페이지 번호
		int startPageNum = 1 + ((pageNum - 1) / PAGE_DISPLAY_COUNT) * PAGE_DISPLAY_COUNT;
		// 끝 페이지 번호
		int endPageNum = startPageNum + PAGE_DISPLAY_COUNT - 1;
		// 끝 페이지 번호가 잘못된 값이라면
		if (totalPageCount < endPageNum) {
			endPageNum = totalPageCount; // 보정해준다.
		}

		// startRowNum 과 endRowNum 을 CafeDto 객체에 담고
		dto.setStartRowNum(startRowNum);
		dto.setEndRowNum(endRowNum);
		
		List<GuestDto> list = counsDao.getList(dto);
		
		//view 페이지에서 필요한 값을 request 에 담고 
		request.setAttribute("list", list);
		request.setAttribute("startPageNum", startPageNum);
		request.setAttribute("endPageNum", endPageNum);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("totalPageCount", totalPageCount);	
		//전체 글의 갯수도 request 에 담는다.
		request.setAttribute("totalRow", totalRow);
		
	}

	@Override
	public void getData(int num, ModelAndView mView) {
		GuestDto dto = counsDao.getData(num);
		System.out.println("Asdffffff"+num);
		mView.addObject("dto", dto);
		
		
	}

	@Override
	public void delete(int num) {
		counsDao.delete(num);
		
	}
	
	@Override
	public void getUpdateData(int num, ModelAndView mView) {
		
		GuestDto dto = counsDao.getData(num);
		System.out.println("Asdffffff"+num);
		mView.addObject("dto", dto);
		
	}

	@Override
	public void updateNotice(GuestDto dto) {
		counsDao.update(dto);
		
	}



}
