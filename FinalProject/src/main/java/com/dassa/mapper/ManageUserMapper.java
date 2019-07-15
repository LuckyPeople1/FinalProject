package com.dassa.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.UserOutVO;
import com.dassa.vo.UserVO;

@MapperScan("manageUserMapper")
public interface ManageUserMapper {
	
	public List<UserVO> getUserList(String userType) throws Exception;

	public List<UserOutVO> getUserSecssionList(String userType) throws Exception;

	public int deleteUser(int userIdx) throws Exception;

	public List<UserVO> getUserListAll();

	public List<UserVO> getAllApprobateList(String status);
	
	public List<UserVO> getTypeApprobateList(String userType);

}
