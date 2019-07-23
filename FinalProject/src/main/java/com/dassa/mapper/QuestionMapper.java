package com.dassa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.QuestionVO;
import com.dassa.vo.SearchQuestionVO;


@MapperScan("questionMapper")
public interface QuestionMapper {
	//관리자 Question 조회하기
	public ArrayList<QuestionVO> selectAllList(@Param("start") int start,@Param("end") int end,@Param("code") int code) throws Exception;
	
	public int totalCount(@Param("code") int code) throws Exception;

	public QuestionVO questionView(int questionsIndex) throws Exception;

	public int questionUpdate(QuestionVO q) throws Exception;

	public int questionManageDelete(int questionsIndex) throws Exception;

	//1:1문의 검색
	public ArrayList<QuestionVO> searchKeywordTitle(SearchQuestionVO s) throws Exception;
	public int titleCount(SearchQuestionVO s) throws Exception;

}
