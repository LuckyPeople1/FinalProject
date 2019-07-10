package com.dassa.controller.shop;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.dassa.service.ShopService;
import com.dassa.vo.JusoDongVO;
import com.dassa.vo.JusoGuVO;

@Controller
@RequestMapping("/shop")
public class ShopHomeController {
	@Autowired
	@Qualifier(value="shopService")
	private ShopService shopService;
	//부동산 홈 페이지 (main page)
	@RequestMapping("/")
	public String ShopHome() {
		return "shop/shopHome";
	}
	//부동산 설정 페이지(myPage)
	@RequestMapping("/mypage")
	public String ShopSetting() {
		return "shop/setting/shopMypage";
	}
	//주소 구 리스트 Ajax
	@ResponseBody
	@RequestMapping("/jusoGuList")
	public ArrayList<JusoGuVO> getJusoGuList(String jusoCityCode) throws Exception {
		ArrayList<JusoGuVO> data = (ArrayList<JusoGuVO>) shopService.getJusoGuList(jusoCityCode);
		return  data;
	}
	//주소 동 Ajax
	@ResponseBody
	@RequestMapping("/jusoDongList")
	public ArrayList<JusoDongVO> getJusoDongList(String jusoGuCode) throws Exception {
		ArrayList<JusoDongVO> data = (ArrayList<JusoDongVO>) shopService.getJusoDongList(jusoGuCode);
		return  data;
	}
	
}
