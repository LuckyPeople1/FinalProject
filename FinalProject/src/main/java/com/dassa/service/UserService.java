package com.dassa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.UserMapper;
import com.dassa.vo.UserVO;

@Service("UserService")
public class UserService {
	
	@Resource(name = "userMapper") 
	private UserMapper userMapper;

	public UserVO selectOneUser(UserVO userVO) throws Exception {
		
		return (UserVO)userMapper.selectOneUser(userVO);
	}
		
	public UserVO guestLogin(String socialId) throws Exception {
		return userMapper.socialLogin(socialId);
	}

	public int commonInsert(UserVO userVO) throws Exception {
		return userMapper.commonInsert(userVO);
	}

	public UserVO idCheck(String userId) {
		return userMapper.idCheck(userId);
	}

	public int driverInsert(UserVO userVO) {
		return userMapper.driverInsert(userVO);
	}
}
