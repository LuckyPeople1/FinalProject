package com.dassa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.DriverMapper;
import com.dassa.vo.UserVO;

@Service("DriverService")
public class DriverService {
	
	@Resource(name="DriverMapper")
	private DriverMapper driverMapper;
	
	public UserVO selectOne(UserVO userVO) throws Exception {
		
		return driverMapper.driverMyPage(userVO);
	}

}
