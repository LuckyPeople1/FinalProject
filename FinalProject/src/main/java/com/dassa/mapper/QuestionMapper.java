package com.dassa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.QuestionVO;


@MapperScan("questionMapper")
public interface QuestionMapper {
	//관리자 Question 조회하기
	public ArrayList<QuestionVO> selectAllList(@Param("start") int start,@Param("end") int end) throws Exception;
	
	public int totalCount() throws Exception;

	public QuestionVO questionView(int questionsIndex) throws Exception;

	public int questionUpdate(QuestionVO q) throws Exception;
}
