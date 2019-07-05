package com.dassa.controller.guest;

import javax.annotation.Resource;

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
			return "guest/insert/commonInsert";
		}else if(userType.equals("2")){
			return "guest/insert/driverInsert";
		}else {
			return "guest/insert/shopInsert";
		}
	}
	
	//일반회원가입 로직
	@RequestMapping(value="/commonInsert")
	public String CommonInsert(@RequestParam UserVO userVO) throws Exception {
		int result = userService.commonInsert(userVO);
		if(result > 0) {
			return "guest/common/msg";
		}else {
			return "redirect:/insert";
		}
	}
}
