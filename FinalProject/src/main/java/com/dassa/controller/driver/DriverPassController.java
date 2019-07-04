package com.dassa.controller.driver;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dassa.common.FileCommon;
import com.dassa.service.DriverService;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/driver")
public class DriverPassController {
	
	@Resource
	private DriverService driverService;
	
	
	//기사 홈 페이지 (main page)
	@RequestMapping("/")
	public String DriverHome() {
		
		return "driver/driverHome";
	}
	
	//기사설정 페이지(myapge)
	@RequestMapping(value="/mypage")
	public String DriverSetting(HttpSession session,Model model) throws Exception {
		UserVO userVO=(UserVO)session.getAttribute("user");
		UserVO user=driverService.selectOne(userVO);
		model.addAttribute("user", user);  //user값 보내기 requestParam과 같은기능
		return "driver/driverMypage";
	}
	
	@RequestMapping(value="/mypageUpdate")
	@ResponseBody
	public String DriverMypageUpdate(UserVO userVO,HttpServletRequest request,MultipartFile fileImg) throws Exception {
		
		int result=0;
		result=driverService.driverMypageUpdateText(userVO);
		System.out.println(userVO.getUserImagePath());
		if(!fileImg.getOriginalFilename().equals("")){
			String[] fileInfo	=	FileCommon.fileUp(fileImg,request, "driver");
			userVO.setUserImageName(fileInfo[0]);
			userVO.setUserImagePath(fileInfo[1]);
			result=driverService.driverMypageUpdate(userVO);
		}
		
		if(result>0) {
			System.out.println("수정성공");
			
		}else {			
			System.out.println("수정실패");
		}
		System.out.println(result);
		return "rediect:";
	}
	
	//입찰 관리 페이지 
	@RequestMapping("/auction")
	public String DriverAuction() {
		return "driver/driverAuction";
	}
	//입찰관리 상세보기
	@RequestMapping("/auctionDetail")
	public String DriverAuctionDetail() {
		
		return "driver/driverAuctionDetail";
	}
	
	//이사 관리 페이지
	@RequestMapping("/move")
	public String DriverMove() {
		return "driver/driverMove";
	}
	
	@RequestMapping("/driverMoveDetail")
	public String DriverMoveDetail() {
		return "driver/driverMoveDetail";
	}
	
	//@사용자 리뷰 페이지
	@RequestMapping("/review")
	public String DriverReview() {
		return "driver/driverReview";
	}
	
	//통계관리 페이지
	@RequestMapping("/saleList")
	public String DriverSaleList() {
		return "driver/driverSaleList";
	}
	

}
