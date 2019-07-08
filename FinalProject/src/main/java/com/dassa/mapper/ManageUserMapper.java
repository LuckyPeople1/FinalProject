package com.dassa.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.UserVO;

@MapperScan("manageUserMapper")
public interface ManageUserMapper {
	
	public List<UserVO> getUserList() throws Exception;

}
