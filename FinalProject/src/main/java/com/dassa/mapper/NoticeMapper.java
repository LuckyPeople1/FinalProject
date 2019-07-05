package com.dassa.mapper;

import java.util.List;

import com.dassa.vo.NoticeVO;

public interface NoticeMapper {
	
	//관리자 공지사항 조회하기
	public List<NoticeVO> selectAllList() throws Exception;
	
	//업데이트 수정하기
	public int noticeUpdate(NoticeVO n) throws Exception;

	//하나에 정보를 상세하게 보기
	public NoticeVO noticeView(int noticeIndex) throws Exception;

	//작성 인서트하기
	public int noticeInsert(NoticeVO n) throws Exception;

}
