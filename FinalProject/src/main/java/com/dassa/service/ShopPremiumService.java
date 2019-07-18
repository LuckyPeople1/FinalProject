package com.dassa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.ShopPremiumMapper;
import com.dassa.vo.ShopPremiumItemVO;

@Service("shopPremiumService")
public class ShopPremiumService {
	@Resource(name="shopPremiumMapper")
	private ShopPremiumMapper shopPremiumMapper;
	/**
	 * 상품구매
	 * @param userIdx
	 * @return
	 */
	public int PremiumItemAdd(ShopPremiumItemVO spiVo) throws Exception {
		shopPremiumMapper.PremiumItemAdd(spiVo);
		return shopPremiumMapper.PremiumItemAdd(spiVo);
	}
}
