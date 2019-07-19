package com.dassa.service;

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
}
