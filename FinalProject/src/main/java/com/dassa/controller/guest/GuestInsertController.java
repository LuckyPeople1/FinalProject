package com.dassa.controller.guest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dassa.service.UserService;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/insert")
public class GuestInsertController {
	
	@Resource
	private UserService userService;
	
	//약관 동의 페이지로 이동
	@RequestMapping(value="/accept")
	public String GuestAccept() {
		return "guest/insert/accept";
	}
	
	//회원가입 페이지로 이동
	@RequestMapping(value="/insert")
	public String GuestInsertHome(@RequestParam String userType) {
		UserVO userVO = new UserVO();
		userVO.setUserType(userType);
		if(userType.equals("1")) {
			return "guest/insert/driverInsert";
		}else if(userType.equals("2")){
			return "guest/insert/shopInsert";
		}else {
			return "guest/insert/commonInsert";
		}
	}
	
	//일반회원가입 로직
	@RequestMapping(value="/commonInsert")
	public String CommonInsert(HttpServletRequest request, @RequestParam String userName, String userPhone, String userAddr, String userdetailAddr, String userExtraAddr,String userEmail) throws Exception {
		String userId = request.getParameter("userId");
		String userPw = request.getParameter("userPw");
		String socialId = request.getParameter("socialId");
		String userType = request.getParameter("userType");
		UserVO userVO = new UserVO();
		if(socialId != "" && socialId != null) {
			System.out.println("commonInsert: "+socialId);
			System.out.println("ㅎㅇ");
			userVO.setSocialId(socialId);
		}else {
			System.out.println("ㅂ2");
			userVO.setUserId(userId);
			userVO.setUserPw(userPw);
		}
		String addr = userAddr+userdetailAddr+userExtraAddr;	
		userVO.setUserName(userName);
		userVO.setUserPhone(userPhone);
		userVO.setUserAddr(userAddr);
		userVO.setUserAddr(addr);
		userVO.setUserEmail(userEmail);
		userVO.setUserType(userType);
		System.out.println(userVO.getType());
		
		
		int result = userService.commonInsert(userVO);
		if(result > 0) {
			request.setAttribute("msg", "회원가입이 완료 되었습니다.");
			request.setAttribute("loc", "/login/");
			return "guest/common/msg";
		}else {
			request.setAttribute("msg", "회원가입이 실패 하였습니다.");
			request.setAttribute("loc", "redirect:/insert");
			return "guest/common/msg";
		}
	}
	
	/*//소셜회원가입 로직
	@RequestMapping(value="/socialInsert")
	public String SocialInsert(HttpServletRequest request, @RequestParam String userName, String userPhone, String userAddr, String userdetailAddr, String userExtraAddr,String userEmail, String userType, String socialId) throws Exception {
		UserVO userVO = new UserVO();
		userVO.setUserName(userName);
		userVO.setUserPhone(userPhone);
		userVO.setUserAddr(userAddr);
		String addr = userAddr+userdetailAddr+userExtraAddr;
		userVO.setUserAddr(addr);
		userVO.setUserEmail(userEmail);
		userVO.setUserType(userType);
		userVO.setSocialId(socialId);
		int result = userService.commonInsert(userVO);
		if(result > 0) {
			request.setAttribute("msg", "회원가입이 완료 되었습니다.");
			request.setAttribute("loc", "/login/index");
			return "guest/common/msg";
		}else {
			return "redirect:/insert";
		}
	}*/
}
