package com.dassa.controller.guest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.UserService;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/login")
public class GuestLoginController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping("/")
	public String LoginHome() {
		return "guest/loginHome";
	}
	
	@RequestMapping(value="/driver")
	public String Login(HttpServletRequest request,String userId,String userPw) throws Exception {
		UserVO userVO =new UserVO();
		userVO.setUserId(userId);
		userVO.setUserPw(userPw);
		
		UserVO user =userService.selectOneUser(userVO);
		if(user!=null) {
			HttpSession session =request.getSession();
			session.setAttribute("user", user);
			
		}
		return "driver/driverHome";
	}
}
