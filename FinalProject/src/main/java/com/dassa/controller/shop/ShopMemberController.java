package com.dassa.controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/shop")
public class ShopMemberController {
	@Autowired
	@Qualifier(value="shopService")
	//부동산 직원관리 페이지(member)
	@RequestMapping("/member")
	public String ShopMember() {
		return "shop/member/shopMemberList";
	}
	//부동산 직원등록 페이지(memberAdd)
	@RequestMapping("/memberAdd")
	public String ShopMemberAdd() {
		return "shop/member/shopMemberAdd";
	}
	//부동산 직원 상세페이지(memberInfo)
	@RequestMapping("/memberInfo")
	public String ShopMemberInfo() {
		return "shop/member/shopMemberInfo";
	}
}
