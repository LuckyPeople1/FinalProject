package com.dassa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.FaqVO;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.QuestionVO;
import com.dassa.vo.SearchNoticeVO;
import com.dassa.vo.SearchQuestionVO;

@MapperScan("shopBoardMapper")
public interface ShopBoardMapper {

	//부동산페이지에서 공지사항 조회
	public ArrayList<NoticeVO> selectNoticeList(@Param("start") int start,@Param("end") int end) throws Exception;
	public int totalCount() throws Exception;
	
	//인서트
	public int shopNoticeInsert(NoticeVO n) throws Exception;
	
	//상세보기
	public NoticeVO shopNoticeView(int noticeIndex) throws Exception;
	
	//수정업데이트
	public int shopNoticeUpdate(NoticeVO n) throws Exception;
	
	//삭제
	public int shopNoticeDelete(int noticeIndex) throws Exception;
	
	//faq리스트
	public ArrayList<FaqVO> shopFaqList(@Param("start") int start,@Param("end") int end) throws Exception;
	public int faqTotalCount() throws Exception;
	
	//1:1문의리스트
	public ArrayList<QuestionVO> shopQuestion(@Param("start") int start,@Param("end") int end) throws Exception;
	public int questionTotalCount() throws Exception;
	
	//1:1문의뷰
	public QuestionVO shopQuestionView(int questionsIndex) throws Exception;
	
	//1:1문의삭제
	public int shopQuestionDelete(int questionsIndex) throws Exception;
	
	//1:1문의인서트
	public int shopQuestionInsert(QuestionVO q) throws Exception;
	
	//부동산 공지사항 검색
	public ArrayList<NoticeVO> searchKeywordTitle(SearchNoticeVO s) throws Exception;
	public int titleCount(SearchNoticeVO s) throws Exception;
	
	//1:1문의 타입검색
	public ArrayList<QuestionVO> searchShopTitle(SearchQuestionVO s) throws Exception;
	public int ShopCount(SearchQuestionVO s) throws Exception;

}
