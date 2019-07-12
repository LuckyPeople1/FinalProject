package com.dassa.controller.driver;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.DriverService;
import com.dassa.vo.MovePaymentVO;


@Controller
public class DriverReviewController {

	@Resource
	private DriverService driverService;
	
	
	@RequestMapping("/driverReview")
	public String DriverReview(Model model, int applyIdx) throws Exception {
		
		System.out.println(applyIdx);
		
		MovePaymentVO movePaymentVO=driverService.driverReview(applyIdx);
		
		if(movePaymentVO!=null) {
			model.addAttribute("movePaymentVO", movePaymentVO);
		}
		
		
		
		
		
		return "guest/review/driverReview";
	}
	
}
