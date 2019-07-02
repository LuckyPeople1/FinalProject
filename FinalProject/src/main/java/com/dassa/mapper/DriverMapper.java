package com.dassa.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.UserVO;

@MapperScan("driverMapper")
public interface DriverMapper {

	UserVO driverMyPage(UserVO userVO);

	
}
