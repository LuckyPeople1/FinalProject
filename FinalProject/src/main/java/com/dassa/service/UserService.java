package com.dassa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.UserMapper;
import com.dassa.vo.UserVO;

@Service("UserService")
public class UserService {
	
	@Resource(name = "userMapper") 
	private UserMapper userMapper;

	public UserVO selectOneUser(UserVO userVO) throws Exception {
		
		return userMapper.selectOneUser(userVO);
	}
		

}
