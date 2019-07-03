package com.dassa.controller.guest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dassa.service.UserService;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/login")
public class GuestLoginController {
	
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/")
	public String GuestInsert() {
		return "guest/loginHome";
	}
	
	//socialLogin
	@RequestMapping(value="/socialLogin")
	public String LoginHome(HttpServletRequest request, @RequestParam String socialId) throws Exception{
		UserVO userVO = userService.guestLogin(socialId);
		HttpSession session = request.getSession();
		String view = "";
		if(userVO != null) {
			session.setAttribute("userVO", userVO);
			view="redirect:/index.jsp";
		} else {
			request.setAttribute("socialId", socialId);
			System.out.println(socialId);
			view="guest/insertHome";
		}
		return view;
	}
	//
	@RequestMapping(value="/commonLogin")
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
	
	@RequestMapping(value="/callBack")
	public String CallBack() {
		return "guest/callBack";
	}
}
