package com.dassa.service;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.MapMapper;
import com.dassa.vo.SearchMapVO;
import com.dassa.vo.ShopItemVO;

@Service("mapService")
public class MapService {
	@Resource(name="mapMapper")
	private MapMapper mapMapper;	
	
	public ArrayList<ShopItemVO> mapType(SearchMapVO searchMapVO) throws Exception{
		ArrayList<ShopItemVO> list = mapMapper.mapType(searchMapVO);		
		return list;
	}
	
	
	public ArrayList<ShopItemVO> selectAll() throws Exception {
		ArrayList<ShopItemVO> list = mapMapper.selectAll();
		return list;
	}
	public ArrayList<ShopItemVO> selectOne(String shopItemAddr1) throws Exception {
		ArrayList<ShopItemVO> list = mapMapper.selectOne(shopItemAddr1);
		return list;
	}
	
	public ArrayList<ShopItemVO> mapAll() throws Exception {
		ArrayList<ShopItemVO> list = mapMapper.mapAll();
		return list;
	}
	
	public ArrayList<ShopItemVO> mapSelectList(Map<String, Object> map) throws Exception {
		ArrayList<ShopItemVO> list = mapMapper.mapSelectList(map);	
		return list;			
		
	}
	public ArrayList<ShopItemVO> mapSelectOne(Map<String, Object> map) throws Exception {		
		ArrayList<ShopItemVO> list = mapMapper.mapSelectOne(map);		
		return list;
		
	}


	
}
