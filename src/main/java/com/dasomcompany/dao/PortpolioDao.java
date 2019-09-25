package com.dasomcompany.dao;

import java.util.List;
import com.dasomcompany.dto.PortpolioDto;

public interface PortpolioDao {
	
	public void insert(PortpolioDto portpolioDto);

	public List<PortpolioDto> getList(PortpolioDto dto);

	public PortpolioDto getData(int num);

	public void delete(int num);

	public void update(PortpolioDto dto);


}
