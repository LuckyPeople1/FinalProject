package com.dassa.controller.manage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manage")
public class ManageHomeController {

	@RequestMapping("/")
	public String ManageHome(){

		return "manage/manageHome";

	}
	
	//승인관리 페이지
	@RequestMapping("/user/userList")
	public String ManageUserList() {
		return "manage/user/userList";
	}
	
	//회원 전체 조회
	@RequestMapping("/user/userAllList")
	public String UserAllList() {
		return "manage/user/userAllList";
	}

}
