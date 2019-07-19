package com.dassa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.ManageUserMapper;
import com.dassa.vo.SearchUserVO;
import com.dassa.vo.UserVO;

@Service("ManageUserService")
public class ManageUserService {
	
	@Resource(name="manageUserMapper")
	private ManageUserMapper manageUserMapper;
	
	public List<UserVO> getUserList(String userType) throws Exception {
		return manageUserMapper.getUserList(userType);
	}
	
	public List<UserVO> getUserSecssionList(String userType) throws Exception {
		return manageUserMapper.getUserSecssionList(userType);
	}
	
	public int deleteUser(int userIdx) throws Exception {
		return manageUserMapper.deleteUser(userIdx);
	}

	public List<UserVO> getUserListAll() {
		return manageUserMapper.getUserListAll();
	}

	public List<UserVO> getAllApprobateList() {
		return manageUserMapper.getAllApprobateList();
	}
	
	public List<UserVO> getTypeCheckApprobateList(SearchUserVO searchUserVO){
		return manageUserMapper.getTypeCheckApprobateList(searchUserVO);
	}

	public List<UserVO> getSearchList(SearchUserVO searchUserVO) {
		return manageUserMapper.getSearchList(searchUserVO);
	}

	public List<UserVO> getTypeApprobateList(String userType) {
		return manageUserMapper.getTypeApprobateList(userType);
	}

	public List<UserVO> getSearchUserList(SearchUserVO searchUserVO) {
		return manageUserMapper.getSearchUserList(searchUserVO);
	}

	public List<UserVO> getSearchDate(SearchUserVO searchUserVO) {
		return manageUserMapper.getSearchDate(searchUserVO);
	}
}
