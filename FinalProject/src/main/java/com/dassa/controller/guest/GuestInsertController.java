package com.dassa.controller.guest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dassa.common.FileCommon;
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
	public String CommonInsert(HttpServletRequest request, @RequestParam String userId,
								String userPw, String userName, String userPhone, String userAddr, String userPostCode,
								String userdetailAddr, String userEmail, String compFilename, String compFilepath,
								String userType, String socialId)
	throws Exception {
		UserVO userVO = new UserVO();
		if(socialId != "" && socialId != null) {
			userVO.setSocialId(socialId);
		}else {
			userVO.setUserId(userId);
			userVO.setUserPw(userPw);
		}
		String addr = userAddr+userdetailAddr;
		userVO.setUserName(userName); 
		userVO.setUserPhone(userPhone);
		userVO.setUserAddr(addr);
		userVO.setAddrCode(userPostCode);
		userVO.setUserEmail(userEmail);
		userVO.setUserType(userType);
		
		int result = userService.driverInsert(userVO);
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
	
	//기사 회원가입 로직
	@RequestMapping(value="/driverInsert")
	public String DriverInsert(HttpServletRequest request, @RequestParam String userId, String userPw, String userName, String userPhone,
								String userAddr, String userPostCode, String userdetailAddr, String userEmail, String userIntro, String userCar, 
								String regisNum, MultipartFile compFilename, String userType)
	throws Exception {
		String[] fileInfo = FileCommon.fileUp(compFilename, request, "driver");
		UserVO userVO = new UserVO();
		userVO.setUserId(userId);
		userVO.setUserPw(userPw);
		String addr = userAddr+userdetailAddr;	
		userVO.setUserName(userName);
		userVO.setAddrCode(userPostCode);
		userVO.setUserPhone(userPhone);
		userVO.setUserAddr(addr);
		userVO.setUserEmail(userEmail);
		userVO.setUserIntroduce(userIntro);
		userVO.setUserCar(userCar);
		userVO.setRegistrationNumber(regisNum);
		userVO.setCompFilename(fileInfo[0]);
		userVO.setCompFilepath(fileInfo[1]);
		userVO.setUserType(userType);
		
		int result = userService.driverInsert(userVO);
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
	
	//부동산 회원가입 로직
	@RequestMapping(value="/shopInsert")
	public String ShopInsert(HttpServletRequest request, @RequestParam String userId, String userPw, String userName, 
			String userPhone, String userAddr, String userdetailAddr, String userEmail, String userIntro, String userPostCode,
			String regisNum, String busNum, MultipartFile compFilename, MultipartFile compFilename1, String userType)
	throws Exception {
		String[] fileInfo = FileCommon.fileUp(compFilename, request, "shop");
		String[] fileInfo1 = FileCommon.fileUp(compFilename1, request, "shop");
		UserVO userVO = new UserVO();
		userVO.setUserId(userId);
		userVO.setUserPw(userPw);
		String addr = userAddr+userdetailAddr;	
		userVO.setUserName(userName);
		userVO.setUserPhone(userPhone);
		userVO.setUserAddr(addr);
		userVO.setAddrCode(userPostCode);
		userVO.setUserEmail(userEmail);
		userVO.setUserIntroduce(userIntro);
		userVO.setRegistrationNumber(regisNum);
		userVO.setBusinessNumber(busNum);
		userVO.setCompFilename(fileInfo[0]+","+fileInfo1[0]);
		userVO.setCompFilepath(fileInfo[1]+","+fileInfo1[1]);
		userVO.setUserType(userType);
		
		int result = userService.shopInsert(userVO);
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
}
