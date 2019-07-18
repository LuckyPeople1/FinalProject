package com.dassa.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.ShopPremiumItemVO;

@MapperScan("shopPremiumMapper")
public interface ShopPremiumMapper {
	/**
	 * 상품 구매
	 * @param userIdx
	 * @return
	 * @throws Exception
	 */
	public int PremiumItemAdd(ShopPremiumItemVO spiVo) throws Exception;
}
