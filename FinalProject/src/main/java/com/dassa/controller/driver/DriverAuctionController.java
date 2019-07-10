package com.dassa.controller.driver;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dassa.service.DriverService;
import com.dassa.vo.DriverPageData;
import com.dassa.vo.DriverSearchVO;
import com.dassa.vo.MoveApplyVO;

@Controller
@RequestMapping("/driver")
public class DriverAuctionController {
	
	@Resource
	private DriverService driverService;
	
	//입찰 관리 페이지 
		@RequestMapping("/auction")
		public String DriverAuction(Model model,DriverPageData pagination,
				HttpServletRequest request,
				@RequestParam(required = false, defaultValue = "1") int page 
				,@RequestParam(required = false, defaultValue = "1") int range) throws Exception {
			
			
			
			if(pagination.getUserName()==null) {
				pagination.setUserName("");
			}
			
			if(pagination.getMinDate()==null && pagination.getMaxDate()==null) {
				pagination.setMinDate("");
				pagination.setMaxDate("");
			}
			
			
			int listCnt=driverService.driverTotalCount(pagination);
			/*System.out.println("총게시물수:"+listCnt);*/
			pagination.pageInfo(page, range, listCnt);
			List<MoveApplyVO> list =driverService.drvierAuctionList(pagination);
			
			if(list!=null) {
				model.addAttribute("list", list);
				model.addAttribute("pagination", pagination);
			}
			
			return "driver/auction/driverAuction";
		}
		
		//입찰관리 상세보기
		@RequestMapping("/auctionDetail")
		public String DriverAuctionDetail() {
			
			return "driver/auction/driverAuctionDetail";
		}
		
}
