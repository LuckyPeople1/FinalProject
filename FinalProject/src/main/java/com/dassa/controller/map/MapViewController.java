package com.dassa.controller.map;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.MapService;
import com.dassa.vo.ShopItemVO;

@Controller

public class MapViewController {
	
	@Autowired
	@Qualifier(value="mapService")
	
	@Resource
	private MapService mapService;
	
	
	
	@RequestMapping(value="/mapView")
	public ModelAndView MapView() throws Exception {
		ModelAndView mav = new ModelAndView();
		ArrayList<ShopItemVO> list;
		list = mapService.selectAll();			
		mav.addObject("list",list);
		mav.setViewName("/map/mapView3");
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/mapSelectOne",produces = "application/text; charset=utf8")
	public String mapSelectOne(HttpServletRequest request, @RequestParam String shopItemTitle,Model model) throws Exception{
		ShopItemVO item;		
		item = mapService.mapSelectOne(shopItemTitle);			
		model.addAttribute("item", item);		
		return item.getShopItemAddr1();
	}
}
