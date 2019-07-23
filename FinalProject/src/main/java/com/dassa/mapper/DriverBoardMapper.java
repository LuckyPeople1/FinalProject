package com.dassa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.FaqVO;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.QuestionVO;
import com.dassa.vo.SearchNoticeVO;
import com.dassa.vo.SearchQuestionVO;

@MapperScan("driverBoardMapper")
public interface DriverBoardMapper {
	//기사 공지사항 리스트
	public ArrayList<NoticeVO> selectNoticeList(@Param("start") int start,@Param("end") int end) throws Exception;
	public int totalCount() throws Exception;
	
	//기사 공지사항 상세보기
	public NoticeVO driverNoticeView(int noticeIndex) throws Exception;
	
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
	
	//기사 공지사항 검색
	public ArrayList<NoticeVO> searchKeywordTitle(SearchNoticeVO s) throws Exception;
	public int titleCount(SearchNoticeVO s) throws Exception;
	
	//기사 문의타입검색
	public ArrayList<QuestionVO> searchQuestionTitle(SearchQuestionVO s) throws Exception;
	public int questionCount(SearchQuestionVO s) throws Exception;
}
