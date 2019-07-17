package com.dassa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.NoticeVO;
import com.dassa.vo.SearchNoticeVO;
@MapperScan("noticeMapper")
public interface NoticeMapper {
	
	//관리자 공지사항 조회하기
	public ArrayList<NoticeVO> selectAllList(@Param("start") int start,@Param("end") int end,@Param("code") int code) throws Exception;
	
	public int totalCount(@Param("code") int code) throws Exception;
	
	//업데이트 수정하기
	public int noticeUpdate(NoticeVO n) throws Exception;

	//하나에 정보를 상세하게 보기
	public NoticeVO noticeView(int noticeIndex) throws Exception;

	//작성 인서트하기
	public int noticeInsert(NoticeVO n) throws Exception;
	
	//삭제
	public int noticeDelete(int noticeIndex) throws Exception;

/*	//검색
	public ArrayList<NoticeVO> searchKeywordTitle(@Param("start") int start,@Param("end") int end,@Param("code") int code, String keyword) throws Exception;
	//제목으로
	public int titleCount(@Param("code") int code, String keyword) throws Exception;
*/
	//검색
	public ArrayList<NoticeVO> searchKeywordTitle(SearchNoticeVO s) throws Exception;
	//제목으로
	public int titleCount(SearchNoticeVO s) throws Exception;

}
