package com.dassa.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.UserVO;

@MapperScan("userMapper")
public interface UserMapper {
	
	//mapper.xml의  ID를 의미하는 것은->selectOneUser
	public UserVO selectOneUser(UserVO userVO) throws Exception;

	public UserVO socialLogin(String socialId);

}
