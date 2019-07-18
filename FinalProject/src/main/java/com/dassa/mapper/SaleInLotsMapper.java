package com.dassa.mapper;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.SaleInLotsFaqVO;
import com.dassa.vo.SaleInLotsTremsVO;
import com.dassa.vo.SaleInLotsVO;

@MapperScan("SaleInLotsMapper")
public interface SaleInLotsMapper {
	//브랜드관 페이징
	public int saleInLotsBrandTotalCount(Map<String, Object> str);
	//분양정보
	public ArrayList<SaleInLotsVO> saleInLotsInformation(SaleInLotsVO saleInfo) throws Exception;
	//페이지용 카운터
	public int saleInLotstotalCount(SaleInLotsVO saleInfo) throws Exception;
	//분양 상세페이지
	public SaleInLotsVO saleInLotsDetailInformation(String saleInLotsIDX) throws Exception;
	//분양용어
	public ArrayList<SaleInLotsTremsVO> saleInLotsTerms() throws Exception;
	//분양 자주하는 질문 전체
	public ArrayList<SaleInLotsFaqVO> saleInLotsFaq() throws Exception;
	//분양 자주하는 질문 타입
	public ArrayList<SaleInLotsFaqVO> saleInLotsFaqAjax(SaleInLotsFaqVO sfVo) throws Exception;
	//분양 브랜드 목록
	public ArrayList<SaleInLotsVO> saleInLotsBrand(Map<String, Object> map) throws Exception;
}
