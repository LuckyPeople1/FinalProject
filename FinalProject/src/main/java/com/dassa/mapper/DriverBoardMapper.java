package com.dassa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.FaqVO;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.QuestionVO;

@MapperScan("driverBoardMapper")
public interface DriverBoardMapper {
	//기사 공지사항 리스트
	public ArrayList<NoticeVO> selectNoticeList(@Param("start") int start,@Param("end") int end) throws Exception;
	public int totalCount() throws Exception;
	
	//기사 공지사항 인서트
	public int driverNoticeInsert(NoticeVO n) throws Exception;
	
	//기사 공지사항 상세보기
	public NoticeVO driverNoticeView(int noticeIndex) throws Exception;
	
	//기사 공지사항 업데이트
	public int driverNoticeUpdate(NoticeVO n) throws Exception;
	
	//기사 공지사항 삭제
	public int driverNoticeDelete(int noticeIndex) throws Exception;

	//기사 faq 리스트
	public ArrayList<FaqVO> driverFaqList(@Param("start") int start,@Param("end") int end) throws Exception;
	public int faqTotalCount() throws Exception;

	//기사 1:1문의 리스트
	public ArrayList<QuestionVO> driverQuestionList(@Param("start") int start,@Param("end") int end) throws Exception;
	public int questionTotalCount() throws Exception;
	
	//기사 1:1문의 상세보기
	public QuestionVO driverQuestionView(int questionsIndex) throws Exception;
	
	//기사 1:1 문의 삭제하기
	public int driverQuestionDelete(int questionsIndex) throws Exception;
	
	//기사 1:1문의 작성하기
	public int driverQuestionInsert(QuestionVO q) throws Exception;
}
