package com.dassa.controller.shop;

import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.ShopService;
import com.dassa.vo.JusoDongVO;
import com.dassa.vo.JusoGuVO;
import com.dassa.vo.NoticePageData;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/shop")
public class ShopHomeController {
	@Autowired
	@Qualifier(value="shopService")
	private ShopService shopService;
	//부동산 홈 페이지 (main page)
	@RequestMapping("/home")
	public String ShopHome(HttpSession session) {
		String str = "";
		System.out.println(session);
		if(session.getAttribute("user")==null) {
			return  "guest/login/loginHome";
		}
		else{
			UserVO userVO = (UserVO) session.getAttribute("user");
			System.out.println("들어옴 "+userVO.getUserType());
			if(userVO.getUserType().equals("2")) {
				str = "redirect:/shop/mypage";
			}else {
				str =  "redirect:/";
			} 	
		}
		return str;
	}
	//부동산 설정 페이지(myPage)
	@RequestMapping("/mypage")
	public ModelAndView ShopSetting(HttpSession session, Model model) throws Exception{
		UserVO userVO=(UserVO)session.getAttribute("user");
		int userIdx = userVO.getUserIdx();
		UserVO item = shopService.selectOne(userIdx);
		ModelAndView mav = new ModelAndView();
		model.addAttribute("headerNav",1);
		model.addAttribute("subNav",1);
		
		StringTokenizer token2 = new StringTokenizer(userVO.getCompFilepath(), ",");
		
		String compFilepath1 = token2.nextToken();
		
		String compFilepath2 = token2.nextToken();
		System.out.println("파일1보자"+compFilepath1);
		System.out.println("파일2"+compFilepath2);
		mav.addObject("compFilepath1",compFilepath1);
		mav.addObject("compFilepath2",compFilepath2);
		mav.addObject("item",item);
		mav.setViewName("shop/setting/shopMypage");
		return mav;
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
