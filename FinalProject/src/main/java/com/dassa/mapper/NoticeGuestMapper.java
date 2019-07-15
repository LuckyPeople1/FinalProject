package com.dassa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.NoticeVO;
@MapperScan("noticeGuestMapper")
public interface NoticeGuestMapper {

	public ArrayList<NoticeVO> selectAllList(@Param("start") int start,@Param("end") int end) throws Exception;
	public int totalCount() throws Exception;
	public NoticeVO noticeView(int noticeIndex) throws Exception;

}
