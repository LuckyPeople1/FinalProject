package com.dassa.mapper;

import java.util.List;

import com.dassa.vo.NoticeVO;

public interface NoticeMapper {
	
	public List<NoticeVO> selectAllList() throws Exception;
	
	public int noticeUpdate(NoticeVO n) throws Exception;

	public NoticeVO noticeView(int noticeIndex) throws Exception;

}
