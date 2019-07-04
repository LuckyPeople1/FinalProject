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
	
	//관리자 공지사항 전체조회
	public ArrayList<NoticeVO> selectAllList() throws Exception {
		return (ArrayList<NoticeVO>)(noticeMapper.selectAllList());
	}
	//수정하는 업데이트
	public int noticeUpdate(NoticeVO n) throws Exception {
		return noticeMapper.noticeUpdate(n);
	}
	//하나에 정보를 상세보기
	public NoticeVO noticeView(int noticeIndex) throws Exception {
		return noticeMapper.noticeView(noticeIndex);
	}
	//등록 인서트하기
	public int noticeInsert(NoticeVO n) throws Exception{
		return noticeMapper.noticeInsert(n);
	}

}
