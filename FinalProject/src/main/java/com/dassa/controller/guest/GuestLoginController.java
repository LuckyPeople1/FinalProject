package com.dassa.controller.guest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	//이전페이지로 이동할때 사용
	@RequestMapping(value="/reLogin")
	public String RedirectLogin(Model model, HttpServletRequest request ) {
		String referer = request.getHeader("Referer");
		model.addAttribute("referer", referer);
		return "guest/login/loginHome";
	}
	
	@RequestMapping(value="/logout")
	public String GuestLogout(HttpSession session, Model model) {
		session.invalidate();
		model.addAttribute("msg", "로그아웃 되었습니다.");
		model.addAttribute("loc", "/login/index");
		return "guest/common/msg";
	}
	
	//메인페이지로 이동
	@RequestMapping(value="/index")
	public String IndexHome() {
		return "redirect:/index.jsp";
	}
	
	//socialLogin
	@RequestMapping(value="/socialLogin")
	public String LoginHome(HttpSession session, Model model, @RequestParam String socialId) throws Exception{
		UserVO user = userService.guestLogin(socialId);
		String view = "";
		if(user != null) {
			session.setAttribute("user", user);
			model.addAttribute("msg", "로그인 되었습니다.");
			model.addAttribute("loc", "/login/index");
			view= "guest/common/msg";
		} else {
			model.addAttribute("socialId", socialId);
			view="guest/insert/commonInsert";
		}
		return view;
	}
	
	@RequestMapping(value="/commonLogin")
	public String Login(HttpSession session, Model model,String userId,String userPw, String referer) throws Exception {
		System.out.println("userId : "+userId);
		System.out.println("userPw : "+userPw);
		System.out.println("loc : "+ referer);
		UserVO userVO =new UserVO();
		userVO.setUserId(userId);
		userVO.setUserPw(userPw);
		UserVO user =userService.selectOneUser(userVO);
		if(user!=null) {
			session.setAttribute("user", user);
			if(referer == "") {
				session.setAttribute("user", user);
				model.addAttribute("msg", "로그인 되었습니다.");
				model.addAttribute("loc", "/login/index");
				return "guest/common/msg";
			}else {
				model.addAttribute("msg", "로그인 되었습니다.");
				model.addAttribute("loc", referer);
				return "guest/common/msg";
			}
				
		}else {
			model.addAttribute("msg", "아이디와 비밀번호를 확인해주세요");
			model.addAttribute("loc", "/login/");
			return "guest/common/msg";
		}
		
	}
	
	//네이버 로그인 콜백 페이지로 이동
	@RequestMapping(value="/callBack")
	public String CallBack() {
		return "guest/login/callBack";
	}
}
