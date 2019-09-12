package com.dasomcompany.dao;

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

}
