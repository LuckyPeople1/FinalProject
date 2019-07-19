package com.dassa.controller.map;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

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
	
	
	
	@RequestMapping(value="/mapView",produces = "application/text;  charset=utf8")
	public ModelAndView MapView() throws Exception {
		ModelAndView mav = new ModelAndView();
		ArrayList<ShopItemVO> list;
		list = mapService.selectAll();			
		mav.addObject("list",list);
		mav.setViewName("/map/mapView3");		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/mapAll")
	public ArrayList<ShopItemVO> MapAll() throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		ArrayList<ShopItemVO> list;
		list = mapService.mapAll();
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="/mapAView")
	public ArrayList<ShopItemVO> MapAView(String shopItemAddr1, String shopItemAddr2) throws Exception {
		System.out.println(shopItemAddr1);
		ArrayList<ShopItemVO> list;				
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("shopItemAddr1", shopItemAddr1);
		map.put("shopItemAddr2", shopItemAddr2);
		list = mapService.mapSelectList(map);		
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="/mapSelectOne")
	public ArrayList<ShopItemVO> MapSelectOne(String shopItemAddr1) throws Exception {		
		ArrayList<ShopItemVO> list;
		System.out.println(shopItemAddr1);
		Map<String, Object> map = new HashMap<String, Object>();		
		map.put("shopItemAddr1", shopItemAddr1);
		list = mapService.mapSelectOne(map);				
		return list;		
	}
	
	

	/*@RequestMapping(value="/mapSelectList")
	public ModelAndView mapSelectList(@RequestParam String shopItemAddr1) throws Exception{
		System.out.println(shopItemAddr1);
		ModelAndView mav = new ModelAndView();
		ArrayList<ShopItemVO> item;		
		item = mapService.mapSelectList(shopItemAddr1);			
		mav.addObject("item",item);
		mav.setViewName("/map/mapView3");
		return mav;
	}*/
}
