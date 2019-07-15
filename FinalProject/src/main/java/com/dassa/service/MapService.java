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
	public ShopItemVO mapSelectOne(String shopItemTitle) throws Exception {
		System.out.println("service : "+shopItemTitle );
		return mapMapper.mapSelectOne(shopItemTitle);			
		
	}
}
