package com.dasomcompany.dao;

import com.dasomcompany.dto.AdminDto;

public interface AdminDao {

		public boolean isExist(String inputId);

		public AdminDto getData(String id);
		
}
