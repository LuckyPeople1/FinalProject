package com.dassa.controller.manage;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.ManageUserService;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/userAll")
public class ManageUserConroller {
	
	@Resource
	private ManageUserService manageUserService;
	
	@RequestMapping("/userAllList")
	public String UserAllList(HttpServletRequest request) throws Exception {
		List<UserVO> list = manageUserService.getUserList();
		request.setAttribute("list", list);
		return "manage/user/userAllList";
	}
}
