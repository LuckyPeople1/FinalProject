package com.dassa.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop")
public class ShopPassController {
	
	//부동산 홈 페이지 (main page)
	@RequestMapping("/")
	public String ShopHome() {
		return "shop/shopHome";
	}
	//부동산 설정 페이지(myPage)
	@RequestMapping("/mypage")
	public String ShopSetting() {
		return "shop/shopMypage";
	}
	//부동산 직원관리 페이지(member)
	@RequestMapping("/member")
	public String ShopMember() {
		return "shop/shopMemberList";
	}
	//q부동산 직원등록 페이지(memberJoin)
	@RequestMapping("memberJoin")
	public String ShopMemberJoin() {
		return "shop/shopMemberJoin";
	}
	//부동산 매물관리 페이지(room)
	@RequestMapping("/room")
	public String ShopRoom() {
		return "shop/shopRoomList";
	}
	//부동산 방문관리 페이지(reserve)
	@RequestMapping("/reserve")
	public String ShopReserve() {
		return "shop/shopReserveList";
	}
	//부동산 게시판관리 페이지(board)
	@RequestMapping("/board")
	public String ShopBoard() {
		return "shop/shopBoardList";
	}
	//부동산 상품관리 페이지(item)
	@RequestMapping("/item")
	public String ShopItem() {
		return "shop/shopItemList";
	}
}
