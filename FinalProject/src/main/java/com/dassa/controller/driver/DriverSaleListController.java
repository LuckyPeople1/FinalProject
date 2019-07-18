package com.dassa.controller.driver;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.DriverService;
import com.dassa.vo.DriverMypageReviewVO;
import com.dassa.vo.MovePaymentVO;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/driver")
public class DriverSaleListController {
	
	@Resource
	private DriverService driverService;
	
	//통계관리 페이지
	@RequestMapping("/saleList")
	public String driverSaleList(Model model,int driverIdx) {
		
		System.out.println(driverIdx);
		
//		List<UserVO> user =driverService.userNameSelectOne();	//유저 이름 뽑아오기.
		
		ArrayList<MovePaymentVO> list =driverService.driverSaleList(driverIdx);
		
//		model.addAttribute("user", user); 						//userName 가져오기 
		model.addAttribute("list", list);
		return "driver/sale/driverSaleList";
	}
}
