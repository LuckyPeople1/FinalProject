package com.dassa.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.ShopMapper;
import com.dassa.vo.JusoDongVO;
import com.dassa.vo.JusoGuVO;
import com.dassa.vo.SaleInLotsPageDataVO;
import com.dassa.vo.SaleInLotsVO;
import com.dassa.vo.ShopItemImgVO;
import com.dassa.vo.ShopItemPageDataVO;
import com.dassa.vo.ShopItemVO;

@Service("shopService")
public class ShopService {

	@Resource(name="shopMapper")
	private ShopMapper shopMapper;
	/**
	 * 중개사페이지 - 도시 선택 시 해당 구 가져오기
	 * @param jusoCityCode
	 * @return
	 * @throws Exception
	 */
	public List<JusoGuVO> getJusoGuList(String jusoCityCode) throws Exception{
		return shopMapper.getJusoGuList(jusoCityCode);
	}
	
	/**
	 * 중개사페이지 - 구 선택 시 해당 동 가져오기
	 * @param jusoGuCode
	 * @return
	 * @throws Exception
	 */
	public List<JusoDongVO> getJusoDongList(String jusoGuCode) throws Exception{
		return shopMapper.getJusoDongList(jusoGuCode);
	}
	/**
	 * 중개사페이지 - 매물등록 
	 * @param sItem
	 * @return
	 * @throws Exception
	 */
	public int shopItemAdd(ShopItemVO sItem, List<ShopItemImgVO> sItemImgList) throws Exception {
		shopMapper.shopItemAdd(sItem);
		return shopMapper.shopItemImgAdd(sItemImgList);
		
	}
	/**
	 * 
	 */
	public int shopItemImgAdd(List<ShopItemImgVO> sItemImgList) throws Exception{
		return shopMapper.shopItemImgAdd(sItemImgList);
	}
}
