package com.dassa.controller.guest;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dassa.service.GuestMoveService;
import com.dassa.vo.MovePaymentVO;
import com.dassa.vo.UserVO;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
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
	public String pwChkProc (){

		return "Y";
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
	 */
	@RequestMapping("/moveList")
	public String moveList(Model model){

		model.addAttribute("tab","2");

		return "/guest/mypage/myMoveList";
	}


	/**
	 * 입찰내역
	 * @param model
	 * @return
	 */
	@RequestMapping("/auctionList")
	public String moveAuction(Model model){

		model.addAttribute("tab","2");

		return "/guest/mypage/myMoveAuctionList";
	}

	/**
	 * 입찰 상세보기
	 * @return
	 */
	@RequestMapping("/auctionInfo")
	public String moveAuctionInfo(Model model){

		model.addAttribute("tab","2");

		return "/guest/mypage/myMoveAuctionInfo";
	}


	/**
	 * 이사 상세정보 보기
	 * @param model
	 * @param moveIdx
	 * @return
	 */
	@RequestMapping("/moveInfo")
	public String moveinfo(Model model, @RequestParam int moveIdx){

		return "/guest/mypage/myMoveInfo";

	}


	/**
	 * 입찰 결제
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/guestMovePayment")
	public void guestMovePayment(String movePaymentimpUid,int applyIdx,int driverIdx) {
		testGetToken();
		String imp_uid = movePaymentimpUid;
		try {
			IamportResponse<Payment> payment_response = client.paymentByImpUid(imp_uid);

			System.out.println(payment_response);
			System.out.println(payment_response.getResponse());
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

			int result = guestMoveService.guestMovePayment(mpVo);
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
	 * 결제 내역 조회를 위한 토근 생성
	 * @return
	 */
	public void testGetToken() {
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
}
