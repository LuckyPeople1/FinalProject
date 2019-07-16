package com.dassa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.FaqVO;
import com.dassa.vo.NoticeVO;
@MapperScan("noticeGuestMapper")
public interface NoticeGuestMapper {
	
	//사용자 공지사항 전체리스트
	public ArrayList<NoticeVO> selectAllList(@Param("start") int start,@Param("end") int end) throws Exception;
	//토탈카운터
	public int totalCount() throws Exception;
	//사용자 하나 공지사항 상세보기
	public NoticeVO noticeView(int noticeIndex) throws Exception;
	//사용자 FAQ전체 리스트
	public ArrayList<FaqVO> selectFaqList(@Param("start") int start,@Param("end") int end) throws Exception;
	public int totalCount1() throws Exception;

}
