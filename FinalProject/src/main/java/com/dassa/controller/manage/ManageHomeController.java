package com.dassa.controller.manage;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.ManageUserService;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/manage")
public class ManageHomeController {
	
	@Resource
	private ManageUserService manageUserService;
	
	@RequestMapping("/")
	public String ManageHome(){
		return "manage/manageHome";
	}
	
	//승인관리 페이지
	/*@RequestMapping("/user/userApprobate")
	public String UserApprobateList(Model model) throws Exception {
		List<UserVO> list = manageUserService.getUserListAll();
		model.addAttribute("list", list);
		return "manage/user/userApprobateList";
	}*/
	
	//회원 전체 조회
	@RequestMapping("/user/userAllList")
	public String UserAllList() {
		return "manage/user/userAllList";
	}
	
	
}
