package com.dassa.controller.driver;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.DriverService;
import com.dassa.vo.MoveApplyVO;

@Controller
@RequestMapping("/driver")
public class DriverAuctionController {
	
	@Resource
	private DriverService driverService;
	
	//입찰 관리 페이지 
		@RequestMapping("/auction")
		public String DriverAuction(Model model) throws Exception {
			
			List<MoveApplyVO> list =driverService.drvierAuctionList();
					
			if(list!=null) {
				model.addAttribute("list", list);
				
			}
			
			return "driver/auction/driverAuction";
		}
		//입찰관리 상세보기
		@RequestMapping("/auctionDetail")
		public String DriverAuctionDetail() {
			
			return "driver/auction/driverAuctionDetail";
		}

}
