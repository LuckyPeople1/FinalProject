package com.dassa.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.NoticeService;
import com.dassa.vo.NoticeVO;

@Controller
public class NoticeController {
	@Autowired
	@Qualifier("noticeService")
	public NoticeService noticeService;
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
}
