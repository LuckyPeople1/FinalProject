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
			return "guest/insert/commonInsert";
		}else if(userType.equals("2")){
			return "guest/insert/driverInsert";
		}else {
			return "guest/insert/shopInsert";
		}
	}
	
	//일반회원가입 로직
	@RequestMapping(value="/commonInsert")
	public String CommonInsert(HttpServletRequest request, @RequestParam String userId, String userPw, String userName, String userPhone, String userAddr, String userdetailAddr, String userExtraAddr,String userEmail, String userType) throws Exception {
		UserVO userVO = new UserVO();
		userVO.setUserId(userId);
		userVO.setUserPw(userPw);
		userVO.setUserName(userName);
		userVO.setUserPhone(userPhone);
		userVO.setUserAddr(userAddr);
		String addr = userAddr+userdetailAddr+userExtraAddr;
		userVO.setUserAddr(addr);
		userVO.setUserEmail(userEmail);
		userVO.setUserType(userType);
		System.out.println("여기는 commonInsert 컨트롤러임");
		System.out.println(userId);
		System.out.println(userPw);
		System.out.println(userName);
		System.out.println(userPhone);
		System.out.println(addr);
		System.out.println(userEmail);
		System.out.println(userType);
		
		int result = userService.commonInsert(userVO);
		if(result > 0) {
			request.setAttribute("msg", "회원가입이 완료 되었습니다.");
			request.setAttribute("loc", "/login/index");
			return "guest/common/msg";
		}else {
			return "redirect:/insert";
		}
	}
}
