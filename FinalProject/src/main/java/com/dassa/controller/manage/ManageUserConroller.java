package com.dassa.controller.manage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String UserAllList(Model model) throws Exception {
		List<UserVO> list = manageUserService.getUserListAll();
		model.addAttribute("list", list);
		return "manage/user/userAllList";
	}
	
	//회원승인 리스트
	@RequestMapping("/userListAll")
	@ResponseBody
	public Object UserListAll(Map<String,Object> map, String type) throws Exception {
		List<UserVO> list = manageUserService.getUserListAll();
		Map<String, Object> retVal = new HashMap<String, Object>();
		retVal.put("list", list);
		return retVal;
	}
	
	@RequestMapping("/userCheckList")
	@ResponseBody
	public Object UserCheckList(Map<String,Object> map, String type) throws Exception {
		System.out.println(type);
		String userType = null;
		
		if(type.equals("운송기사")) {
			userType = "1";
		}else if(type.equals("부동산")) {
			userType = "2";
		}else if(type.equals("일반회원")) {
			userType = "3";
		}
		
		System.out.println(userType);
		Map<String, Object> retVal = new HashMap<String, Object>();
		if(userType.equals("1")) {
			List<UserVO> list = manageUserService.getUserList(userType);
			retVal.put("list", list);
		}else if(userType.equals("2")) {
			List<UserVO> list = manageUserService.getUserList(userType);
			retVal.put("list", list);
		}else if(userType.equals("3")) {
			List<UserVO> list = manageUserService.getUserList(userType);
			retVal.put("list", list);
		}
		return retVal;
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
