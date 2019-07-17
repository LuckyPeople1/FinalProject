package com.dassa.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.MapMapper;
import com.dassa.vo.ShopItemVO;

@Service("mapService")
public class MapService {
	@Resource(name="mapMapper")
	private MapMapper mapMapper;	
	
	public ArrayList<ShopItemVO> selectAll() throws Exception {
		ArrayList<ShopItemVO> list = mapMapper.selectAll();
		return list;
	}
	public ArrayList<ShopItemVO> mapSelectList(String shopItemAddr1) throws Exception {
		System.out.println("service: "+shopItemAddr1);
		ArrayList<ShopItemVO> list = mapMapper.mapSelectList(shopItemAddr1);
		System.out.println("service 맵퍼 들리고: "+list);
		return list;			
		
	}
	public ShopItemVO mapSelectOne(int shopItemIdx) throws Exception {
		System.out.println("service : "+shopItemIdx );
		return mapMapper.mapSelectOne(shopItemIdx);			
		
	}
}
