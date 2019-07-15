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
	
	
	
	@RequestMapping(value="/mapView",produces = "application/text; charset=utf8")
	public ModelAndView MapView() throws Exception {
		ModelAndView mav = new ModelAndView();
		ArrayList<ShopItemVO> list;
		list = mapService.selectAll();			
		mav.addObject("list",list);
		mav.setViewName("/map/mapView3");		
		return mav;
	}
	
	@RequestMapping(value="/mapSelectOne", produces = "application/text; charset=utf8")
	public ModelAndView mapSelectOne(@RequestParam int shopItemIdx) throws Exception {
		System.out.println(shopItemIdx);
		ShopItemVO item;
		ModelAndView mav = null;
		item = mapService.mapSelectOne(shopItemIdx);
		mav = new ModelAndView();
		mav.addObject("item",item);
		mav.setViewName("/map/mapView3");
		return mav;		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/mapSelectList")
	public ModelAndView mapSelectList(@RequestParam String shopItemAddr1) throws Exception{
		System.out.println(shopItemAddr1);
		ModelAndView mav = new ModelAndView();
		ArrayList<ShopItemVO> item;		
		item = mapService.mapSelectList(shopItemAddr1);			
		mav.addObject("item",item);
		mav.setViewName("/map/mapView3");
		return mav;
	}
}
