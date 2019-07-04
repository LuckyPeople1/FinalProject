package com.dassa.controller.guest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/insert")
public class GuestInsertController {
	
	//약관 동의 페이지로 이동
	@RequestMapping(value="/accept")
	public String GuestAccept() {
		return "guest/insert/accept";
	}
	
	//회원가입 페이지로 이동
	@RequestMapping(value="/insert")
	public String GuestCommonInsertHome(@RequestParam String userType) {
		UserVO userVO = new UserVO();
		userVO.setUserType(userType);
		if(userType.equals("1")) {
			
		}
		return "guest/insert/insertHome";
	}
}
