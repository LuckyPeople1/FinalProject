package com.dassa.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/manage/board/notice")
public class NoticeController {
//	@Autowired
//	@Qualifier("noticeService")
//	public NoticeService noticeService;
//	@RequestMapping("/noticeList")
//	public ModelAndView noticeList() {
//		ArrayList<NoticeVO> list = noticeService.noticeList();
//		ModelAndView mav = new ModelAndView();
//		if(!list.isEmpty()) {
//			mav.addObject("list",list);
//			mav.setViewName("notice/noticeList");
//		}else {
//			mav.setViewName("notice/error");
//		}
//		return mav;
//	}
	//관리자 공지사항 페이지
	@RequestMapping("/noticeManageList")//noticeManageList를 맵핑
	public String noticeMangeList() {
		return "manage/board/notice/noticeManageList";
	}
	
	//관리자 공지사항 수정페이지로 넘어가기
	@RequestMapping("/noticeManageModify")
	public String noticeManageModify() {
		return "manage/board/notice/noticeManageModify";
	}
}
