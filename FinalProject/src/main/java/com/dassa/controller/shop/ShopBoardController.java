package com.dassa.controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.ShopService;

@Controller
@RequestMapping("/shop")
public class ShopBoardController {
	@Autowired
	@Qualifier(value="shopService")
	private ShopService shopService;

	//부동산 게시판관리 페이지(board)
	@RequestMapping("/board")
	public String ShopBoard() {
		return "shop/borad/shopBoardList";
	}

}
