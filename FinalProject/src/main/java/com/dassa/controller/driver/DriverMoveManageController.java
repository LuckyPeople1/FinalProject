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
import com.dassa.vo.DriverMypageReviewVO;
import com.dassa.vo.DriverPageData;
import com.dassa.vo.DriverVO;
import com.dassa.vo.MoveApplyVO;

@Controller
@RequestMapping("/driver")
public class DriverMoveManageController {
	
	@Resource
	private DriverService driverService;
	
		//이사 관리 페이지
		@RequestMapping("/move")
		public String DriverMove(Model model,DriverPageData pagination,HttpServletRequest request,
				 @RequestParam(required = false, defaultValue = "1") int page 
				,@RequestParam(required = false, defaultValue = "1") int range,int driverIdx) throws Exception {
			
			if(pagination.getUserName()==null) {
				pagination.setUserName("");
			}
			
			if(pagination.getMinDate()==null && pagination.getMaxDate()==null) {
				pagination.setMinDate("");
				pagination.setMaxDate("");
			}
			
			int listCnt=driverService.driverMoveTotalCount(pagination);
			pagination.pageInfo(page, range, listCnt);	//page현재 페이지 (현재목록의 페이지번호) range 현재 페이지 범위(각 페이지 범위 시작 번호) listCnt 총 게시물 개수 (전체 게시물의 개수)
			System.out.println("총게시물수:"+listCnt);	//총게시물수!!!
			pagination.setDriverIdx(driverIdx);  	//driverIdx 저장
			List<MoveApplyVO> list=driverService.driverMoveList(pagination);
			
			if(list!=null) {
				model.addAttribute("list", list);
				model.addAttribute("pagination", pagination);
			}
			return "driver/manager/driverMove";
		}
		
		//이사 관리 상세보기.
		@RequestMapping("/driverMoveDetail")
		public String DriverMoveDetail(Model model,int applyIdx,HttpServletRequest request) throws Exception {

			DriverAuctionDetailVO driverAuctionDetail=driverService.driverSelectOne(applyIdx);	//move_apply_tbl 조회 
			
			
			
			List<DriverApplyOptionVO> optionList =driverService.driverOptionList(applyIdx);
			
			List<DriverApplyImgVO> imgList =driverService.driverImgList(applyIdx);
			
			DriverVO driverVO=driverService.driverMoveSelectOne(applyIdx);
			
			
			if(driverAuctionDetail!=null) {
								
				
				model.addAttribute("driverAuctionDetail", driverAuctionDetail);	//move_apply_tbl 정보 selectOne
				model.addAttribute("optionList", optionList);					//move_apply_option_tbl 정보 list
				model.addAttribute("imgList", imgList);							//move_apply_img_tbl 정보 list
				model.addAttribute("driverVO", driverVO);
				
				
				return "driver/manager/driverMoveDetail";
			}else {
				return "driver/manager/driverMove";
			}
			
			
		}
		
		//관리자 페이지 리뷰관리
		@RequestMapping("/review")
		public String DriverReview(int driverIdx,Model model) {
			
			System.out.println(driverIdx);
			List<DriverMypageReviewVO> list =driverService.driverReview(driverIdx);
			
			model.addAttribute("list", list);
			
			return "driver/review/driverReview";
		}
}
