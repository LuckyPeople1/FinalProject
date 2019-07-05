package com.dassa.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.UserVO;

@MapperScan("driverMapper")
public interface DriverMapper {
 //mapper.xml의 ID을 의미하는 것은 driverMyapge
 public UserVO driverMyPage(UserVO userVO) throws Exception;

 public int driverMypageUpdate(UserVO userVO)throws Exception;

public int driverMypageUpdateText(UserVO userVO) throws Exception;	
}
