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
import com.dassa.vo.SearchMapVO;
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
	//ajax로 체크한 타입 확인
	@RequestMapping("/mapType")
	@ResponseBody
	public MapImageData MapType(String shopItemType1) throws Exception{
		SearchMapVO searchMapVO =null;
		shopItemType1=shopItemType1.replace("투쓰리룸", "투룸,쓰리룸");
		String[] iType = shopItemType1.split(",");		
		String siType1 =null;
		String siType2 =null;
		String siType3 =null;
		String siType4 =null;		
		
		if(iType.length==1) {
			searchMapVO = new SearchMapVO();
			siType1 = shopItemType1;
			searchMapVO.setSiType1(siType1);			
			List<ShopItemImgVO> siiList; // shop_item_tbl
			ArrayList<ShopItemVO> list;						
			list = mapService.mapType(searchMapVO);
			ArrayList<String> imgList = new ArrayList<String>();
			for(int i=0;i<list.size();i++) {			
				siiList = shopService.shopItemImgList(list.get(i).getShopItemIdx());
				String img_path = siiList.get(0).getShopImgPath();		
				imgList.add(img_path);		
				}
			MapImageData mid = new MapImageData(imgList, list);			
			return mid;
		}else if(iType.length==2){
			searchMapVO = new SearchMapVO();
			siType1=iType[0];
			siType2=iType[1];
			searchMapVO.setSiType1(siType1);
			searchMapVO.setSiType2(siType2);	
			List<ShopItemImgVO> siiList; // shop_item_tbl
			ArrayList<ShopItemVO> list;						
			list = mapService.mapType(searchMapVO);
			ArrayList<String> imgList = new ArrayList<String>();
			MapImageData mid = new MapImageData(imgList, list);
			return mid;
		}else if(iType.length==3){
			searchMapVO = new SearchMapVO();
			siType1=iType[0];
			siType2=iType[1];
			siType3=iType[2];			
			searchMapVO.setSiType1(siType1);
			searchMapVO.setSiType2(siType2);
			searchMapVO.setSiType3(siType3);				
			ArrayList<ShopItemVO> list;			
			list = mapService.mapType(searchMapVO);			
			ArrayList<String> imgList = new ArrayList<String>();
			MapImageData mid = new MapImageData(imgList, list);
			return mid;		
		}else if(iType.length==4){
			searchMapVO = new SearchMapVO();
			siType1=iType[0];
			siType2=iType[1];
			siType3=iType[2];
			siType4=iType[3];
			searchMapVO.setSiType1(siType1);
			searchMapVO.setSiType2(siType2);
			searchMapVO.setSiType3(siType3);
			searchMapVO.setSiType4(siType4);			
			ArrayList<ShopItemVO> list;						
			list = mapService.mapType(searchMapVO);
			ArrayList<String> imgList = new ArrayList<String>();
			MapImageData mid = new MapImageData(imgList, list);
			return mid;		
		}else{			
			ArrayList<ShopItemVO> list;					
			list = mapService.selectAll();
			ArrayList<String> imgList = new ArrayList<String>();
			MapImageData mid = new MapImageData(imgList, list);
			return mid;
		}
		
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
