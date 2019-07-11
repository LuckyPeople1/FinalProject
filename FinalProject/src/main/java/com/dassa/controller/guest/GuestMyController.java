package com.dassa.controller.guest;

import com.dassa.vo.UserVO;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/my")
public class GuestMyController {

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


	@RequestMapping("/moveInfo")
	public String moveinfo(Model model, @RequestParam int moveIdx){

		return "/guest/mypage/myMoveInfo";

	}

}
