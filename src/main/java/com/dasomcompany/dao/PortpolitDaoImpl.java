package com.dasomcompany.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dasomcompany.dto.PortpolioDto;

@Repository
public class PortpolitDaoImpl implements PortpolioDao{
	
	@Autowired
	private SqlSession session;

	@Override
	public void insert(PortpolioDto portpolioDto) {
		session.insert("portpolio.insert", portpolioDto);
		
	}

	@Override
	public List<PortpolioDto> getList(PortpolioDto dto) {
		List<PortpolioDto> list = session.selectList("portpolio.getList",dto);
		return list;
	}

	@Override
	public PortpolioDto getData(int num) {
		PortpolioDto dto = session.selectOne("portpolio.getData",num);
		return dto;
	}

	@Override
	public void delete(int num) {
		session.delete("portpolio.delete", num);
		
	}

	@Override
	public void update(PortpolioDto dto) {

		session.update("portpolio.update", dto);
		
	}

}
