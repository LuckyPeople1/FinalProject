package com.dassa.mapper;

import java.util.ArrayList;
import java.util.Map;


import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.ShopItemVO;

@MapperScan("manageShopMapper")
public interface ManageShopMapper {
	
	//전체아이템매물뿌리기
	public ArrayList<ShopItemVO> selectAllList(Map<String, Object> map) throws Exception;
	
	//전체 매물 개수
	public int shopItemTotalCount() throws Exception;
}
