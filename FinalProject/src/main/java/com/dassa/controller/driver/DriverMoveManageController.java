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
public class DriverMoveManageController {
	
	@Resource
	private DriverService driverService;
	
	//이사 관리 페이지
		@RequestMapping("/move")
		public String DriverMove(Model model) throws Exception {
			List<MoveApplyVO> list=driverService.driverMoveList();
			if(list!=null) {
				model.addAttribute("list", list);
			}
			return "driver/manager/driverMove";
		}
		
		//이사 관리 상세보기.
		@RequestMapping("/driverMoveDetail")
		public String DriverMoveDetail() {
			return "driver/manager/driverMoveDetail";
		}
		
		//@사용자 리뷰 페이지
		@RequestMapping("/review")
		public String DriverReview() {
			return "driver/review/driverReview";
		}
}
