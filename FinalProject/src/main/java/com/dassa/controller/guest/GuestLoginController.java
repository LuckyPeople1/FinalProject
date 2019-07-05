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
	
	//로그인 홈페이지로 이동
	@RequestMapping(value="/")
	public String GuestLogin() {
		return "guest/login/loginHome";
	}
	
	//메인페이지로 이동
	@RequestMapping(value="/index")
	public String IndexHome() {
		return "redirect:/index.jsp";
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
			view="guest/insert/commonInsert";
		}
		return view;
	}
	
	@RequestMapping(value="/commonLogin")
	public String Login(HttpServletRequest request,String userId,String userPw) throws Exception {
		System.out.println("userId : "+userId);
		System.out.println("userPw : "+userPw);
		UserVO userVO =new UserVO();
		userVO.setUserId(userId);
		userVO.setUserPw(userPw);
		UserVO user =userService.selectOneUser(userVO);
		if(user!=null) {
			HttpSession session =request.getSession();
			session.setAttribute("user", user);
			if(user.getUserType().equals("1")) {
				request.setAttribute("msg", "로그인 되었습니다.");
				request.setAttribute("loc", "/driver/");
				return "guest/common/msg";
			}else if(user.getUserType().equals("2")) {
				request.setAttribute("msg", "로그인 되었습니다.");
				request.setAttribute("loc", "/shop/");
				return "guest/common/msg";
			}else {
				request.setAttribute("msg", "로그인 되었습니다.");
				request.setAttribute("loc", "/login/index");
				return "guest/common/msg";
			}	
		}else {
			request.setAttribute("msg", "아이디 또는 비밀번호를 확인해주세요.");
			request.setAttribute("loc", "/login/");
			return "guest/common/msg";
		}
		
	}
	
	//네이버 로그인 콜백 페이지로 이동
	@RequestMapping(value="/callBack")
	public String CallBack() {
		return "guest/login/callBack";
	}
}
