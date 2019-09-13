package com.dasomcompany.dao;

import java.util.List;

import com.dasomcompany.dto.FaqDto;

public interface FaqDao {

	public int getCount(FaqDto dto);

	public List<FaqDto> getList(FaqDto dto);

}
