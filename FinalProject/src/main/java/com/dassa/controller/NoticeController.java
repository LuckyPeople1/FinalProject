package com.dassa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/manage/notice")
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
	
	@RequestMapping("/noticeManageList")
	public String noticeMangeList() {
		return "manage/notice/noticeManageList";
	}
}
