package com.dassa.controller.board;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.NoticeService;
import com.dassa.vo.NoticeVO;


@Controller
@RequestMapping("/manage/board/notice")
public class NoticeController {

	@Resource
	private NoticeService noticeService;
	
	//관리자 공지사항 페이지
	@RequestMapping("/noticeManageList")//noticeManageList를 맵핑
	public ModelAndView noticeMangeList() {
		ArrayList<NoticeVO> list;
		ModelAndView ma = new ModelAndView();
		try {
			list = noticeService.selectAllList();
			if(!list.isEmpty()) {
				ma.addObject("list", list);
				ma.setViewName("manage/board/notice/noticeManageList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	//관리자 공지사항 수정페이지로 넘어가기
	@RequestMapping("/noticeManageModify")
	public ModelAndView noticeManageModify(@RequestParam int noticeIndex) {
		System.out.println(noticeIndex);
		NoticeVO n;
		ModelAndView ma = new ModelAndView();
		try {
			n = noticeService.noticeView(noticeIndex);
			if(n!=null) {
				ma.addObject("noticeVO",n);
				ma.setViewName("manage/board/notice/noticeManageModify");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	//업데이트를 실행하는 컨트롤러
	@RequestMapping("/noticeUpdate")
	public String noticeUpdate(NoticeVO n) {
		System.out.println("ti:"+n.getNoticeTitle());
		System.out.println("co:"+n.getNoticeContent());
		String view = "";
		try {
			int result = noticeService.noticeUpdate(n);
			System.out.println("result:"+result);
			if(result>0) {
				view = "manage/board/notice/updateSuccess";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
	
	//관리자 공지사항 작성페이지
	@RequestMapping("/noticeManageWriter")
	public String noticeManageWriter() {
		return "manage/board/notice/noticeManageWriter";
	}
	
	
	//부동산 공지사항 페이지
	@RequestMapping("/noticeManageRealestateList")
	public String noticeManageRealestateList() {
		return "manage/board/notice/noticeManageRealestateList";
	}
	
	
	
	
	//기사 공지사항 페이지
	@RequestMapping("/noticeManageArticlesList")
	public String noticeManageArticlesList() {
		return "manage/board/notice/noticeManageArticlesList";
	}
}
