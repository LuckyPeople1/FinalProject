package com.dassa.mapper;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.ShopPowerItemVO;
import com.dassa.vo.ShopPremiumItemVO;

@MapperScan("shopPremiumMapper")
public interface ShopPremiumMapper {
	/**
	 * 상품 구매 - 등록개수
	 * @param 
	 * @return
	 * @throws Exception
	 */
	public int PremiumItemAdd(ShopPremiumItemVO spiVo) throws Exception;
	
	/**
	 * 상품 구매 - 파워링크
	 * @param 
	 * @return
	 * @throws Exception
	 */
	public int PowerItemAdd(ShopPowerItemVO powerVo) throws Exception; 
}
