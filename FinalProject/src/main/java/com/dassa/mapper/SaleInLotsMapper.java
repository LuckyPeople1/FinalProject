package com.dassa.mapper;

import java.util.ArrayList;


import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.SaleInLotsVO;

@MapperScan("SaleInLotsMapper")
public interface SaleInLotsMapper {
	public ArrayList<SaleInLotsVO> saleInLotsInformation(SaleInLotsVO saleInfo) throws Exception;
	public int saleInLotstotalCount() throws Exception;
}
