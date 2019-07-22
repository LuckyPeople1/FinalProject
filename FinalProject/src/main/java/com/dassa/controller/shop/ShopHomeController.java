package com.dassa.controller.shop;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.dassa.service.ShopService;
import com.dassa.vo.JusoDongVO;
import com.dassa.vo.JusoGuVO;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/shop")
public class ShopHomeController {
	@Autowired
	@Qualifier(value="shopService")
	private ShopService shopService;
	//부동산 홈 페이지 (main page)
	@RequestMapping("/home")
	public String ShopHome(@RequestParam(required = false, defaultValue = "1") int range,int userIdx) {
		return "shop/shopHome";
	}
	//부동산 설정 페이지(myPage)
	@RequestMapping("/mypage")
	public String ShopSetting(HttpSession session, Model model) throws Exception{
		UserVO userVO=(UserVO)session.getAttribute("user");

		model.addAttribute("headerNav",1);
		model.addAttribute("subNav",1);
		
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
