package com.dassa.mapper;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.JusoDongVO;
import com.dassa.vo.JusoGuVO;
import com.dassa.vo.ShopItemImgVO;
import com.dassa.vo.ShopItemVO;

@MapperScan("shopMapper")
public interface ShopMapper {
	//주소 구 조회
	public List<JusoGuVO> getJusoGuList(String jusoCityCode) throws Exception;
	
	//주소 동 조회
	public List<JusoDongVO> getJusoDongList(String jusoGuCode) throws Exception;
	
	//매물 등록
	public int shopItemAdd(ShopItemVO sItem) throws Exception;
	
	//매물 이미지 등록
	public int shopItemImgAdd(List<ShopItemImgVO> sItemImgList) throws Exception;
	
	//매물 전체 수
	public int shopItemTotalCount() throws Exception;
	
	//매물 조회
	public ArrayList<ShopItemVO> selectAllList(int start, int end) throws Exception;
}
