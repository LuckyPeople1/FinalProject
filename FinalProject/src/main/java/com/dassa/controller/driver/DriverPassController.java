package com.dassa.controller.driver;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/driver")
public class DriverPassController {
	
	//기사 홈 페이지 (main page)
	@RequestMapping("/")
	public String DriverHome() {
		
		return "driver/driverHome";
	}
	
	//기사설정 페이지(myapge)
	@RequestMapping("/mypage")
	public String DriverSetting() {
		
		return "driver/driverMypage";
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
