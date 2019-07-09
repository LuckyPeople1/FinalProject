package com.dassa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.ManageUserMapper;
import com.dassa.vo.UserOutVO;
import com.dassa.vo.UserVO;

@Service("ManageUserService")
public class ManageUserService {
	
	@Resource(name="manageUserMapper")
	private ManageUserMapper manageUserMapper;
	
	public List<UserVO> getUserList() throws Exception {
		return manageUserMapper.getUserList();
	}
	
	public List<UserOutVO> getUserSecssionList() throws Exception {
		return manageUserMapper.getUserSecssionList();
	}
	
	public int deleteUser(int userIdx) throws Exception {
		return manageUserMapper.deleteUser(userIdx);
	}

	

}
