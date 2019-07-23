package com.dassa.controller.guest;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.RequestPartServletServerHttpRequest;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.common.FileCommon;
import com.dassa.service.GuestMoveService;
import com.dassa.vo.DriverMypageReviewVO;
import com.dassa.vo.DriverReviewVO;
import com.dassa.vo.DriverVO;
import com.dassa.vo.MoveApplyPage;
import com.dassa.vo.MoveAuctionListVO;
import com.dassa.vo.MoveAuctionReview;
import com.dassa.vo.MoveAuctionVO;
import com.dassa.vo.MoveInfoTotalData;
import com.dassa.vo.MovePaymentVO;
import com.dassa.vo.QuestionPageData;
import com.dassa.vo.QuestionVO;
import com.dassa.vo.ShopReservationPageDataVO;
import com.dassa.vo.ShopReservationVO;
import com.dassa.vo.UserVO;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.CancelData;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
@RequestMapping("/my")
public class GuestMyController {

	private IamportClient client; // 결제 라이브 러리
	@Resource
	private GuestMoveService guestMoveService;

	/**
	 * 마이페이지 메인
	 * @param httpSession
	 * @return
	 */

	@RequestMapping("/")
	public String home(HttpSession httpSession){


		UserVO userVO	=	(UserVO)httpSession.getAttribute("user");

		// 비회원일경우 막음
		if(userVO == null){
			return "redirect:/";
		}

		return "/guest/mypage/myHome";

	}


	/**
	 * 비밀번호 확인 페이지
	 * @param model
	 * @return
	 */
	@RequestMapping("/pwChk")
	public String pwChk (Model model){

		model.addAttribute("tab","0");

		return "/guest/mypage/myPwChk";

	}

	/**
	 * 비밀번호 확인
	 * @return
	 */
	@RequestMapping("/pwChkProc")
	@ResponseBody
	public String pwChkProc (Model model, UserVO userVO){
		userVO = guestMoveService.getPwChkProc(userVO);
		model.addAttribute("user", userVO);
		if(userVO != null) {
			return "Y";
		}else {
			return "N";
		}
		
	}
	
	/**
	 * 정보 수정
	 * @param userIdx, userName, userPw, proFilename
	 * @return
	 */
	@RequestMapping("/modiUser")
	public String modiUser(Model model, HttpServletRequest request, @RequestParam int userIdx, String userName, String userPw, MultipartFile proFilename) {
		String referer = request.getHeader("Referer");
		UserVO userVO = new UserVO();
		int result=0;
		userVO.setUserIdx(userIdx);
		userVO.setUserName(userName);
		userVO.setUserPw(userPw);
		result=guestMoveService.getModiUser(userVO);
		System.out.println(proFilename);
		if(!proFilename.getOriginalFilename().equals("")){
			System.out.println("이거 타니?");
			String[] fileInfo	=	FileCommon.fileUp(proFilename,request, "driver");
			userVO.setProFilename(fileInfo[0]);
			userVO.setProFilepath(fileInfo[1]);
			result=guestMoveService.getImgModiUser(userVO);
		}
		if(result > 0) {
			model.addAttribute("msg", "정보 수정이 완료 되었습니다.");
			model.addAttribute("loc", "/");
			return "guest/common/msg";
		}else {
			model.addAttribute("msg", "정보수정을 실패 하였습니다.");
			model.addAttribute("loc", referer);
			return "guest/common/msg";
		}
	}

	/**
	 * 내 정보
	 * @param model
	 * @return
	 */
	@RequestMapping("/info")
	public String info(Model model){

		model.addAttribute("tab","0");

		return "/guest/mypage/myInfo";
	}


	/**
	 * 이사 리스트
	 * @param model
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/moveList")
	public String moveList(Model model,int guestIdx,@RequestParam(defaultValue="1") int reqPage) throws Exception{
		MoveApplyPage moPage = new MoveApplyPage();
		MoveApplyPage movePage = guestMoveService.moveList(guestIdx,reqPage,moPage);
		model.addAttribute("movePage",movePage);

		return "/guest/mypage/myMoveList";
	}


	/**
	 * 입찰내역
	 * @param model
	 * @return
	 */
	@RequestMapping("/auctionList")
	public String moveAuction(Model model, @RequestParam int applyIdx){

		MoveAuctionListVO list = guestMoveService.moveAuction(applyIdx);
		model.addAttribute("list", list);
		model.addAttribute("applyIdx",applyIdx);

		return "/guest/mypage/myMoveAuctionList";
	}

	/**
	 * 입찰 상세보기
	 * @return
	 */
	@RequestMapping("/auctionInfo")
	public String moveAuctionInfo(Model model, @RequestParam int applyIdx){
		MoveAuctionVO maVO = guestMoveService.moveAuctionInfo(applyIdx);
		MoveAuctionReview reVO = guestMoveService.moveAuctionReview(maVO.getDriverIdx());
		model.addAttribute("item",maVO);
		model.addAttribute("reitem",reVO);

		return "/guest/mypage/myMoveAuctionInfo";
	}


	/**
	 * 이사 상세정보 보기
	 * @param model
	 * @param moveIdx
	 * @return
	 */
	@RequestMapping("/moveInfo")
	public String moveInfo(Model model, @RequestParam int applyIdx) throws Exception{
		MoveInfoTotalData mitd = guestMoveService.moveInfo(applyIdx);
		model.addAttribute("moveInfo", mitd);
		return "/guest/mypage/myMoveInfo";

	}
	
	//후기 작성할때 필요한 정보 가져오기.
	@RequestMapping("/driverReview")
	public String DriverReview(Model model, int applyIdx,int driverIdx,DriverVO driverVO) throws Exception {
		
		
		driverVO.setDriverIdx(driverIdx);
		driverVO.setApplyIdx(applyIdx);
		
		System.out.println(driverVO.getApplyIdx());
		System.out.println(driverVO.getDriverIdx());
		
		 driverVO=guestMoveService.driverReviewWrite(driverVO);
		
		
		if(driverVO!=null) {
			model.addAttribute("driverVO",driverVO);
		}
		
		return "guest/review/driverReview";
	}
	
	//후기 작성하기 insert
	@RequestMapping("driverReviewInsert")
	public String driverReviewInsert(DriverReviewVO driverReviewVO) throws Exception {
		
		
		int result =guestMoveService.driverReviewInsert(driverReviewVO);
		if(result>0) {
			
			return "guest/mypage/myReview"; 
		}
		
		return "guest/mypage/myReview";
		
	}
	
	@RequestMapping("/review")
	public String driverMyreview(Model model,int guestIdx,DriverReviewVO DriverReview) throws Exception {
		//guestIdx
		List<DriverMypageReviewVO> list =guestMoveService.applyIdxSelectList(guestIdx);

		
		if(!list.isEmpty()) {
			
			model.addAttribute("list",list);
			return "guest/mypage/myReview";
			
		}
			return "guest/mypage/myReview";
		
		
	}
	/**
	 * 입찰 결제
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/guestMovePayment")
	public void guestMovePayment(String impUid,int applyIdx,int driverIdx,HttpServletResponse response) {
		GetToken();
		String imp_uid = impUid;
		try {
			IamportResponse<Payment> payment_response = client.paymentByImpUid(imp_uid);

			System.out.println(payment_response);
			System.out.println(payment_response.getResponse());
			System.out.println(payment_response.getResponse().getCardCode());
			System.out.println(payment_response.getResponse().getCardQuota());
			String movePaymentPg = payment_response.getResponse().getPgProvider();
			String movePaymentMerchantUid = payment_response.getResponse().getMerchantUid();
			String movePaymentPayMethod = payment_response.getResponse().getPayMethod();
			String movePaymentCardName = payment_response.getResponse().getCardName();
			String movePaymentPgNumber = payment_response.getResponse().getApplyNum();
			BigDecimal movePaymentAmount = payment_response.getResponse().getAmount();
			Date movePaymentDate = payment_response.getResponse().getPaidAt();
			String movePaymentStatus = payment_response.getResponse().getStatus();
			MovePaymentVO mpVo = new MovePaymentVO();
			mpVo.setApplyIdx(applyIdx);
			mpVo.setDriverIdx(driverIdx);
			mpVo.setMovePaymentImpUid(imp_uid);
			mpVo.setMovePaymentMerchantUid(movePaymentMerchantUid);
			mpVo.setMovePaymentPayMethod(movePaymentPayMethod);
			mpVo.setMovePaymentPg(movePaymentPg);
			mpVo.setMovePaymentPgNumber(movePaymentPgNumber);
			mpVo.setMovePaymentCardName(movePaymentCardName);
			mpVo.setMovePaymentAmount(movePaymentAmount.intValue());
			mpVo.setMovePaymentDate(movePaymentDate);
			mpVo.setMovePaymentStatus(movePaymentStatus);

			int result = guestMoveService.guestMovePayment(mpVo,applyIdx);
			PrintWriter out = response.getWriter();
			if(result > 0) {
				out.print("1");
			}else {
				out.print("0");
			}
		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());

			switch(e.getHttpStatusCode()) {
			case 401 :
				//TODO
				break;
			case 500 :
				//TODO
				break;
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 입찰 결제 취소
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/guestMovePaymentCencel")
	public void guestMovePaymentCencel(String impUid,int applyIdx,HttpServletResponse response) {
		GetToken();

		String cancelled_imp_uid = impUid;
		System.out.println(cancelled_imp_uid);
		CancelData cancel_data = new CancelData(cancelled_imp_uid, true); //imp_uid를 통한 전액취소
	
		try {
			IamportResponse<Payment> payment_response = client.cancelPaymentByImpUid(cancel_data);
			System.out.println(payment_response.getResponse());
			PrintWriter out = response.getWriter();	
			int result = 0;
			if(payment_response.getResponse() != null) {
				System.out.println("null이 아닐떄 : " + payment_response.getResponse().getStatus());
				MovePaymentVO mpVo = new MovePaymentVO();
				mpVo.setMovePaymentStatus(payment_response.getResponse().getStatus());
				mpVo.setMovePaymentImpUid(cancelled_imp_uid);
				result = guestMoveService.guestMovePaymentCencel(mpVo,applyIdx);
				System.out.println("컨트롤 끝난후 result" + result);
			}
			if(result > 0) {
				out.print("1");
			}else {
				out.print("0");
			}
			
		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());
			
			switch(e.getHttpStatusCode()) {
			case 401 :
				//TODO
				break;
			case 500 :
				//TODO
				break;
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * 결제 준비
	 * @return
	 */
	public void setup() {
		String test_api_key = "2987424337635438";
		String test_api_secret = "nA2wYOmcKgUcvjvQ29dzywr6X1ppCUf0uiwt6TFQ9A2ETyuWHIvgfXmcZMBCHRCb99Ef2k6bU9QOHlLp";
		client = new IamportClient(test_api_key, test_api_secret);
	}
	/**
	 * 결제 내역 조회를 위한 토근 발급
	 * @return
	 */
	public void GetToken() {
		setup();
		try {
			IamportResponse<AccessToken> auth_response = client.getAuth();
			System.out.println(auth_response.getResponse());
			System.out.println(auth_response.getResponse().getToken());

		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());

			switch(e.getHttpStatusCode()) {
			case 401 :
				//TODO
				break;
			case 500 :
				//TODO
				break;
			}
		} catch (IOException e) {
			//서버 연결 실패
			e.printStackTrace();
		}
	}
	
	/**
	 * 방문 리스트 뿌리기
	 * @param request
	 * @param httpSession
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/reserList")
	public ModelAndView ShopReserve(HttpServletRequest request, HttpSession httpSession)throws Exception {
		int reqPage;
		try {
			reqPage=Integer.parseInt(request.getParameter("reqPage"));
		}catch(NumberFormatException e){
			reqPage=1;
		}
		UserVO userVO = (UserVO)httpSession.getAttribute("user");
		ModelAndView mav = new ModelAndView();
		ShopReservationPageDataVO sipd = guestMoveService.selectReservationAllList(reqPage,userVO);
		if(!sipd.isEmpty()) {
			ArrayList<ShopReservationVO> sItemList = sipd.getList();
			String pageNavi = sipd.getPageNavi();
			mav.addObject("list",sItemList);
			mav.addObject("pageNavi",pageNavi);
			mav.setViewName("guest/mypage/myReserveList");
		}
		return mav;
	}
	//예약 삭제
		@RequestMapping("/reservationDel")
		public String reservationDel(@RequestParam int shopReservationIdx)throws Exception {
			int result = guestMoveService.reservationDel(shopReservationIdx);
			if(result>0) {
				return "redirect:/my/reserList";
			}
			return "redirect:/my/reserList";
		}
		
		
		//유저 마이페이지에 내가쓴문의
		@RequestMapping("/myQuestion")
		public ModelAndView myQuestion(@RequestParam int reqPage,HttpServletRequest request) {
			ModelAndView ma = new ModelAndView();
			try {
				QuestionPageData list = guestMoveService.selectQuestionList(reqPage);
				if(!list.isEmpty()) {
					ArrayList<QuestionVO> arrlist = list.getList();
					String pageNavi = list.getPageNavi();
					ma.addObject("list", arrlist);
					ma.addObject("pageNavi", pageNavi);
					ma.addObject("tab","4");
					ma.setViewName("guest/mypage/myQuestion");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return ma;
		}
		
		//유저 마이페이지 내가쓴문의 뷰
		@RequestMapping("/myQuestionView")
		public ModelAndView myQuestionView(@RequestParam int questionsIndex) {
			QuestionVO q;
			ModelAndView ma = new ModelAndView();
			try {
				q = guestMoveService.questionView(questionsIndex);
				if(q!=null) {
					ma.addObject("questionVO", q);
					ma.addObject("tab","4");
					ma.setViewName("guest/mypage/myQuestionView");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return ma;
		}
}
