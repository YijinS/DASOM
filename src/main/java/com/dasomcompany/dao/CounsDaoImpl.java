package com.dasomcompany.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dasomcompany.dto.CounsDto;

@Repository
public class CounsDaoImpl implements CounsDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public void insert(CounsDto guestDto) {
		
		session.insert("couns.insert", guestDto);
	}

	@Override
	public int getCount(CounsDto dto) {
		return session.selectOne("couns.getCount", dto);
	}

	@Override
	public List<CounsDto> getList(CounsDto dto) {
		List<CounsDto> list = session.selectList("couns.getList",dto);
		return list;
	}

	@Override
	public CounsDto getData(int num) {
		CounsDto dto = session.selectOne("couns.getData",num);
		return dto;
	}

	@Override
	public void delete(int num) {
		session.delete("couns.delete", num);
		
	}

	@Override
	public void update(CounsDto dto) {
		session.update("couns.update", dto);
		
	}

}
