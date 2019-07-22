package com.dassa.mapper;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.ShopPaymentVO;
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
	public int shopPayment(ShopPaymentVO spVo) throws Exception;
	/**
	 * 상품 구매 - 파워링크
	 * @param 
	 * @return
	 * @throws Exception
	 */
	public int PowerItemAdd(ShopPowerItemVO powerVo) throws Exception; 
	
	
	//매물 등록 시 현재 매물개수 확인 수정확인
	public ArrayList<ShopPremiumItemVO> shopCount(int userIdx) throws Exception;
		
	//아이템 적용 가능 개수 확인
	public ArrayList<ShopPowerItemVO> powerCount(int userIdx) throws Exception;
	public ArrayList<ShopPaymentVO> ShopPemiumItemList(int userIdx) throws Exception;
}
