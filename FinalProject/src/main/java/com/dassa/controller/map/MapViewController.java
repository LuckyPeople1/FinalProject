package com.dassa.controller.map;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.MapService;
import com.dassa.service.ShopService;
import com.dassa.vo.MapImageData;
import com.dassa.vo.ShopItemImgVO;
import com.dassa.vo.ShopItemVO;

@Controller

public class MapViewController {
	
	@Autowired
	@Qualifier(value="mapService")
	
	@Resource
	private MapService mapService;
	
	@Resource
	private ShopService shopService;
	
	
	@RequestMapping(value="/mapView")
	public ModelAndView MapView(@RequestParam String shopItemAddr1) throws Exception {
		System.out.println("shopItemAddr1 : "+shopItemAddr1);
		ModelAndView mav = new ModelAndView();
		List<ShopItemImgVO> siiList; // shop_item_tbl
		ArrayList<ShopItemVO> list; //shop_item_img_tbl	
		ArrayList<String> imgList = new ArrayList<String>(); 
		if(shopItemAddr1=="") {
			System.out.println("널");
			list = mapService.selectAll();	
		}else {
			System.out.println("낫널");			
			list = mapService.selectOne(shopItemAddr1);
		}		
		for(int i=0;i<list.size();i++) {			
		siiList = shopService.shopItemImgList(list.get(i).getShopItemIdx());
		String img_path = siiList.get(0).getShopImgPath();		
		imgList.add(img_path);		
		}		
		MapImageData mid = new MapImageData(imgList, list);
		mav.addObject("mid",mid);
		mav.addObject("shopItemAddr1",shopItemAddr1);
		mav.setViewName("/map/mapView3");		
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/mapAll")
	public MapImageData MapAll() throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		List<ShopItemImgVO> siiList; // shop_item_tbl
		ArrayList<ShopItemVO> list;
		ArrayList<String> imgList = new ArrayList<String>(); 
		list = mapService.mapAll();
		for(int i=0;i<list.size();i++) {			
			siiList = shopService.shopItemImgList(list.get(i).getShopItemIdx());
			String img_path = siiList.get(0).getShopImgPath();		
			imgList.add(img_path);		
			}
		MapImageData mid = new MapImageData(imgList, list);		
		return mid;
	}
	
	@ResponseBody
	@RequestMapping(value="/mapAView")
	public MapImageData MapAView(String shopItemAddr1, String shopItemAddr2) throws Exception {
		ArrayList<ShopItemVO> list;
		List<ShopItemImgVO> siiList; // shop_item_tbl
		ArrayList<String> imgList = new ArrayList<String>(); 
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("shopItemAddr1", shopItemAddr1);
		map.put("shopItemAddr2", shopItemAddr2);
		list = mapService.mapSelectList(map);		
		for(int i=0;i<list.size();i++) {			
			siiList = shopService.shopItemImgList(list.get(i).getShopItemIdx());
			String img_path = siiList.get(0).getShopImgPath();		
			imgList.add(img_path);		
			}
		MapImageData mid = new MapImageData(imgList, list);		
		return mid;
	}
	
	@ResponseBody
	@RequestMapping(value="/mapSelectOne")
	public MapImageData MapSelectOne(String shopItemAddr1) throws Exception {		
		ArrayList<ShopItemVO> list;
		List<ShopItemImgVO> siiList; // shop_item_tbl
		ArrayList<String> imgList = new ArrayList<String>();
		Map<String, Object> map = new HashMap<String, Object>();		
		map.put("shopItemAddr1", shopItemAddr1);
		list = mapService.mapSelectOne(map);				
		for(int i=0;i<list.size();i++) {			
			siiList = shopService.shopItemImgList(list.get(i).getShopItemIdx());
			String img_path = siiList.get(0).getShopImgPath();		
			imgList.add(img_path);		
			}
		MapImageData mid = new MapImageData(imgList, list);		
		return mid;		
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
