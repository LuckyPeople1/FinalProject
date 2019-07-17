package com.dassa.mapper;



import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.ShopItemVO;

@MapperScan("mapMapper")
public interface MapMapper {
	public ArrayList<ShopItemVO> mapSelectList(String shopItemAddr1) throws Exception;
	public ShopItemVO mapSelectOne(int shopItemIdx) throws Exception;
	public ArrayList<ShopItemVO> selectAll() throws Exception;
}
