package com.dassa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.NoticeVO;
@MapperScan("noticeMapper")
public interface NoticeMapper {
	
	//관리자 공지사항 조회하기
	public ArrayList<NoticeVO> selectAllList(@Param("start") int start,@Param("end") int end,@Param("code") int code) throws Exception;
	
	public ArrayList<NoticeVO> realestateSelectAllList(@Param("start") int start,@Param("end") int end) throws Exception;

	public int totalCount(@Param("code") int code) throws Exception;
	
	//업데이트 수정하기
	public int noticeUpdate(NoticeVO n) throws Exception;

	//하나에 정보를 상세하게 보기
	public NoticeVO noticeView(int noticeIndex) throws Exception;

	//작성 인서트하기
	public int noticeInsert(NoticeVO n) throws Exception;
	
	//삭제
	public int noticeDelete(int noticeIndex) throws Exception;

}
