package org.used.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {
	
	//������̼����� sqló���ϱ�
	@Select("SELECT sysdate FROM dual")
	public String getTime();
	
	//xml ������� sqló���ϱ�
	public String getTime2();
	
}
