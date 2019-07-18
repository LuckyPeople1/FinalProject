package com.dassa.controller.driver;
import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.DriverService;
import com.dassa.vo.DriverVO;
@Controller
public class DriverReviewController {

/*	@Resource
	private DriverService driverService;
	
	
	@RequestMapping("/driverReview")
	public String DriverReview(Model model, int applyIdx,int driverIdx,DriverVO driverVO) throws Exception {
		
		
		driverVO.setDriverIdx(driverIdx);
		driverVO.setApplyIdx(applyIdx);
		
		System.out.println(driverVO.getApplyIdx());
		System.out.println(driverVO.getDriverIdx());
		
		 driverVO=driverService.driverReviewWrite(driverVO);
		
		
		if(driverVO!=null) {
			model.addAttribute("driverVO",driverVO);
		}
		
		return "guest/review/driverReview";
	}
	
	@RequestMapping("driverReviewInsert")
	public String driverReviewInsert(DriverReviewVO driverReviewVO) throws Exception {
		
		
		int result =driverService.driverReviewInsert(driverReviewVO);
		
		return "";
		
	}*/
	
}
