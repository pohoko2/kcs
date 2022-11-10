package com.fish.web.dao;

import org.apache.ibatis.annotations.Select;

public interface TimeDAO {

	@Select("SELECT sysdate() FROM dual")
	public String getTime();
	
}
