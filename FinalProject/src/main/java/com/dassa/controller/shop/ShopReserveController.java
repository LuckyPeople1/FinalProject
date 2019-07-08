package com.dassa.controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.ShopService;

@Controller
@RequestMapping("/shop")
public class ShopReserveController {
	@Autowired
	@Qualifier(value="shopService")
	private ShopService shopService;
	//부동산 방문관리 페이지(reserve)
	@RequestMapping("/reserve")
	public String ShopReserve() {
		return "shop/reserve/shopReserveList";
	}
	//부동산 방문등록 페이지(reserve)
	@RequestMapping("/reserveAdd")
	public String ShopReserveJoin() {
		return "shop/reserve/shopReserveAdd";
	}
	//부동산 방문상세페이지(reserve)
	@RequestMapping("/reserveInfo")
	public String ShopReserveInfo() {
		return "shop/reserve/shopReserveInfo";
	}

}
