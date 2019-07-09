package com.dassa.controller.manage;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.ManageUserService;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/userManage")
public class ManageUserConroller {
	
	@Resource
	private ManageUserService manageUserService;
	
	//회원승인 리스트
	@RequestMapping("/userAllList")
	public String UserAllList(HttpServletRequest request) throws Exception {
		List<UserVO> list = manageUserService.getUserList();
		request.setAttribute("list", list);
		return "manage/user/userAllList";
	}
	
	//탈퇴회원 관리 페이지
	@RequestMapping("/userSecssion")
	public String UserSecssionList() {
		return "manage/user/userSecList";
	}
	
	//회원 탈퇴
}
