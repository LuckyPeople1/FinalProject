package com.dassa.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.JusoDongVO;
import com.dassa.vo.JusoGuVO;
import com.dassa.vo.ShopItemVO;

@MapperScan("shopMapper")
public interface ShopMapper {
	public List<JusoGuVO> getJusoGuList(String jusoCityCode) throws Exception;
	public List<JusoDongVO> getJusoDongList(String jusoGuCode) throws Exception;
	public int shopItemAdd(ShopItemVO sItem) throws Exception;
}
