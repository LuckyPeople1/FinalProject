package com.dassa.controller.driver;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dassa.service.DriverService;
import com.dassa.vo.DriverApplyImgVO;
import com.dassa.vo.DriverApplyOptionVO;
import com.dassa.vo.DriverAuctionDetailVO;
import com.dassa.vo.DriverPageData;
import com.dassa.vo.DriverVO;
import com.dassa.vo.MoveApplyVO;
import com.dassa.vo.UserVO;

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
		@RequestMapping("/auctioninsert")
		public String DriverAuctionInsert(DriverVO driverVO,int applyIdx,HttpSession session,HttpServletRequest request) throws Exception {
			
			session=request.getSession();
			UserVO userVO =(UserVO)session.getAttribute("user");
			driverVO.setDriverIdx(userVO.getUserIdx());	//세션값 userIdx driver_idx로  driverVO에 저장하기
			
			
			System.out.println("드라이버메세지"+driverVO.getDriverMessage());
			System.out.println("사다리"+driverVO.getLadderState());
			System.out.println("견적금액"+driverVO.getEstimateAmount());
			System.out.println("driver_idx"+driverVO.getDriverIdx());
			System.out.println("상품번호"+driverVO.getApplyIdx());
			
			int result=driverService.driverAuctionInsert(driverVO) ;
			if(result>0) {
				int update=driverService.driverAuctionUpdate(applyIdx);
				
					return "driver/manager/driverMove";
				
			}else {
				
				return "driver/auction/driverAuctionDetail";
			}
										
		}
		
}
