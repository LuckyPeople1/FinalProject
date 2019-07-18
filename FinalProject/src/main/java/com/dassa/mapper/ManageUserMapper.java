package com.dassa.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.SearchUserVO;
import com.dassa.vo.UserVO;

@MapperScan("manageUserMapper")
public interface ManageUserMapper {
	
	public List<UserVO> getUserList(String userType) throws Exception;

	public List<UserVO> getUserSecssionList(String userType) throws Exception;

	public int deleteUser(int userIdx) throws Exception;

	public List<UserVO> getUserListAll();

	public List<UserVO> getAllApprobateList();
	
	public List<UserVO> getTypeCheckApprobateList(SearchUserVO searchUserVO);

	public List<UserVO> getSearchList(SearchUserVO searchUserVO);

	public List<UserVO> getTypeApprobateList(String userType);

	public List<UserVO> getSearchUserList(SearchUserVO searchUserVO);

	public List<UserVO> getSearchDate(SearchUserVO searchUserVO);

}
