package com.dassa.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.NoticeMapper;
import com.dassa.vo.NoticeVO;

@Service("noticeService")
public class NoticeService {

	@Resource(name = "noticeMapper")
	private NoticeMapper noticeMapper;
	
	public ArrayList<NoticeVO> selectAllList() throws Exception {
		return (ArrayList<NoticeVO>)(noticeMapper.selectAllList());
	}
	
	public int noticeUpdate(NoticeVO n) throws Exception {
		return noticeMapper.noticeUpdate(n);
	}
	
	public NoticeVO noticeView(int noticeIndex) throws Exception {
		return noticeMapper.noticeView(noticeIndex);
	}
}
