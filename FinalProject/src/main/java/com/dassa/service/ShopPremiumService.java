package com.dassa.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.ShopPremiumMapper;
import com.dassa.vo.ShopPowerItemVO;
import com.dassa.vo.ShopPremiumItemVO;

@Service("shopPremiumService")
public class ShopPremiumService {
	@Resource(name="shopPremiumMapper")
	private ShopPremiumMapper shopPremiumMapper;
	/**
	 * 상품 구매 - 등록개수
	 * @param spiVo
	 * @return
	 * @throws Exception
	 */
	public int PremiumItemAdd(ShopPremiumItemVO spiVo) throws Exception {
		shopPremiumMapper.PremiumItemAdd(spiVo);
		return shopPremiumMapper.PremiumItemAdd(spiVo);
	}
	/**
	 * 상품 구매 - 파워링크
	 * @param spiVo
	 * @return
	 * @throws Exception
	 */
	public int PowerItemAdd(ShopPowerItemVO powerVo) throws Exception {
		return shopPremiumMapper.PowerItemAdd(powerVo);
	}
	/**
	 * 등록 가능 매물 개수
	 * @param userIdx
	 * @return
	 * @throws Exception
	 */
	public int shopCount(int userIdx) throws Exception{
		ArrayList<ShopPremiumItemVO> list = shopPremiumMapper.shopCount(userIdx);
		int arrSize = list.size();
		System.out.println("service userIdx : "+userIdx);
		System.out.println("return count : "+arrSize);
		return arrSize;
	}
	/**
	 * 아이템 적용 가능 매물 개수
	 * @param userIdx
	 * @return
	 * @throws Exception
	 */
	public int powerCount(int userIdx) throws Exception{
		ArrayList<ShopPowerItemVO> list = shopPremiumMapper.powerCount(userIdx);
		int arrSize = list.size();
		System.out.println("service userIdx : "+userIdx);
		System.out.println("return count : "+arrSize);
		return arrSize;
	}
}
