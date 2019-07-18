package com.dassa.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import com.dassa.mapper.ShopMemberMapper;
import com.dassa.vo.ShopMemberVO;
import org.springframework.stereotype.Service;

import com.dassa.mapper.EmployeeMapper;
import com.dassa.vo.EmployeePageDate;
import com.dassa.vo.EmployeeVO;
import com.dassa.vo.NoticeVO;

@Service("shopMemberService")
public class ShopMemberService {

	@Resource
	private ShopMemberMapper shopMemberMapper;



	public int memberReg(ShopMemberVO shopMemberVO) throws Exception {
		return shopMemberMapper.memberReg(shopMemberVO);
	}

	public List<ShopMemberVO> getMember(int userIdx) throws Exception {
		return shopMemberMapper.getMember(userIdx);

	}
}
