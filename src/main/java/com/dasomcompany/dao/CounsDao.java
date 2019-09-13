package com.dasomcompany.dao;

import java.util.List;

import com.dasomcompany.dto.GuestDto;

public interface CounsDao {

	public void insert(GuestDto guestDto);
	// 글의 갯수
	public int getCount(GuestDto dto);
	//글 목록을 리턴하는 메소드
	public List<GuestDto> getList(GuestDto dto);
	public GuestDto getData(int num);
	public void delete(int num);
	public void update(GuestDto dto);


}
