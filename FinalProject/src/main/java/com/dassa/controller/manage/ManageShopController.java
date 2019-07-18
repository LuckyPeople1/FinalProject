package com.dassa.controller.manage;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.ShopService;

@Controller
@RequestMapping("/shopManage")
public class ManageShopController {
	@Resource
	private ShopService shopService;
	
	//부동산 매물 뿌리기
	@RequestMapping("/shopAllList")
	public String shopAllList() throws Exception{
		return "manage/shop/shopAllList";
	}
}
