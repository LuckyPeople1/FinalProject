package com.dassa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.FaqVO;
@MapperScan("faqMapper")
public interface FaqMapper {
	//전체를 페이징해서 조회하기
	public ArrayList<FaqVO> selectAllList(@Param("start") int start, @Param("end") int end, @Param("code") int code) throws Exception;
	public int totalCount(@Param("code") int code) throws Exception;
	
	//하나에 정보를 상세보기
	public FaqVO faqView(int faqIndex) throws Exception;
	
	//faq수정
	public int faqUpdate(FaqVO f) throws Exception;
	
	//faq작성
	public int faqInsert(FaqVO f) throws Exception;
	
	//faq삭제(상태만변경)
	public int faqDelete(int faqIndex) throws Exception;
}
