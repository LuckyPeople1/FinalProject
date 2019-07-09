package com.dassa.controller.manage;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.ManageUserService;
import com.dassa.vo.UserOutVO;
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
	public String UserSecssionList(HttpServletRequest request) throws Exception {
		List<UserOutVO> list = manageUserService.getUserSecssionList();
		request.setAttribute("list", list);
		return "manage/user/userSecList";
	}
	
	//회원 탈퇴
	@RequestMapping("/deleteUser")
	public String DeleteUser(HttpServletRequest request) throws Exception {
		int userIdx = Integer.parseInt(request.getParameter("userIdx"));
		System.out.println(userIdx);
		int result = manageUserService.deleteUser(userIdx);
		if(result > 0) {
			request.setAttribute("msg", "회원 탈퇴가 되었습니다.");
			request.setAttribute("loc", "/userManage/userAllList");
			return "guest/common/msg";
		}else {
			request.setAttribute("msg", "회원 탈퇴 실패하였습니다.");
			request.setAttribute("loc", "/userManage/userAllList");
			return "guest/common/msg";
		}
	}
}
