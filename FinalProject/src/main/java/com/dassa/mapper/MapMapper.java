package com.dassa.mapper;



import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.ShopItemVO;

@MapperScan("mapMapper")
public interface MapMapper {
	public ArrayList<ShopItemVO> mapSelectList(Map<String, Object> map) throws Exception;
	public ArrayList<ShopItemVO> mapSelectOne(Map<String, Object> map) throws Exception;
	public ArrayList<ShopItemVO> selectAll() throws Exception;
	public ArrayList<ShopItemVO> mapAll() throws Exception;
}
