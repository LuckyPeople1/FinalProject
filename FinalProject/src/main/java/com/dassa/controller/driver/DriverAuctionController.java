package com.dassa.controller.driver;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dassa.service.DriverService;
import com.dassa.vo.DriverApplyImgVO;
import com.dassa.vo.DriverApplyOptionVO;
import com.dassa.vo.DriverAuctionDetailVO;
import com.dassa.vo.DriverPageData;
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
		public String DriverAuctionDetail(Model model,int applyIdx,HttpServletRequest request) throws Exception {
			
			System.out.println("컨트롤러"+applyIdx);
			
			DriverAuctionDetailVO driverAuctionDetail=driverService.driverSelectOne(applyIdx);	//move_apply_tbl 조회 
			
			List<DriverApplyOptionVO> optionList =driverService.driverOptionList(applyIdx);
			
			List<DriverApplyImgVO> imgList =driverService.driverImgList(applyIdx);
			
			/*List<DriverAuctionDetailVO> list =driverService.driverAuctionDetailMoveApply(applyIdx);*/
			if(driverAuctionDetail!=null) {
								
				
				model.addAttribute("driverAuctionDetail", driverAuctionDetail);	//move_apply_tbl 정보 selectOne
				model.addAttribute("optionList", optionList);					//move_apply_option_tbl 정보 list
				model.addAttribute("imgList", imgList);							//move_apply_img_tbl 정보 list
				return "driver/auction/driverAuctionDetail";
			}else {
				return "driver/auction/driverAuction";
			}
			
		}
		
}
