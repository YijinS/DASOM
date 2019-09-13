package com.dasomcompany.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dasomcompany.dto.AdminDto;

@Repository
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public boolean isExist(String inputId) {
		String id = sqlSession.selectOne("admin.isExist", inputId);
		if(id != null && id != "")	
			return true;
		else
			return false;
	}

	@Override
	public AdminDto getData(String id) {
		AdminDto dto = sqlSession.selectOne("admin.getData", id);
		
		return dto;
	}
	

}
