package com.dasomcompany.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dasomcompany.dto.GuestDto;

@Repository
public class CounsDaoImpl implements CounsDao {
	
	@Autowired
	private SqlSession session;

	@Override
	public void insert(GuestDto guestDto) {
		
		session.insert("couns.insert", guestDto);
	}

	@Override
	public int getCount(GuestDto dto) {
		return session.selectOne("couns.getCount", dto);
	}

	@Override
	public List<GuestDto> getList(GuestDto dto) {
		List<GuestDto> list = session.selectList("couns.getList",dto);
		return list;
	}

	@Override
	public GuestDto getData(int num) {
		GuestDto dto = session.selectOne("couns.getData",num);
		System.out.println("Asdffffff"+num);
		return dto;
	}

	@Override
	public void delete(int num) {
		session.delete("couns.delete", num);
		
	}

	@Override
	public void update(GuestDto dto) {
		System.out.println("Asdffffff"+dto.getNum());
		session.update("couns.update", dto);
		
	}

}
