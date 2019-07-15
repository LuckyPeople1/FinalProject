package com.dassa.mapper;



import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.ShopItemVO;

@MapperScan("mapMapper")
public interface MapMapper {
	public ShopItemVO mapSelectOne(String shopItemTitle) throws Exception;
	public ArrayList<ShopItemVO> selectAll() throws Exception;
}
