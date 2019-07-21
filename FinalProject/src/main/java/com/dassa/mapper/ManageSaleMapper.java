package com.dassa.mapper;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.DriverSaleVO;
import com.dassa.vo.ManageSalePageData;
import com.dassa.vo.MovePaymentVO;
import com.dassa.vo.ShopPaymentVO;

@MapperScan("manageSaleMapper")
public interface ManageSaleMapper {
	public ArrayList<ShopPaymentVO> salePremiumList(Map<String, Object> parameters);
	public int manageSaleShopTotalCount(ManageSalePageData pagination);
	public int manageSaleTotalCount(ManageSalePageData pagination);
	public ArrayList<MovePaymentVO> manageSaleMoveList(Map<String, Object> parameters);
	public ArrayList<DriverSaleVO> manageSaleMoveYearSum(Map<String, Object> parameters);
	public ArrayList<DriverSaleVO> manageSaleMoveMonthSum(Map<String, Object> parameters);
}
