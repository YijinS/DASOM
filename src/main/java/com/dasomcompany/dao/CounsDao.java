package com.dasomcompany.dao;

import java.util.List;
import com.dasomcompany.dto.CounsDto;

public interface CounsDao {

	public void insert(CounsDto guestDto);
	// 글의 갯수
	public int getCount(CounsDto dto);
	//글 목록을 리턴하는 메소드
	public List<CounsDto> getList(CounsDto dto);
	public CounsDto getData(int num);
	public void delete(int num);
	public void update(CounsDto dto);


}
