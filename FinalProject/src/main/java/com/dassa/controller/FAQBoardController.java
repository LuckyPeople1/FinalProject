package com.dassa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manage/notice")
public class FAQBoardController {

	@RequestMapping("/faqManageList")
	public String faqManageList() {
		return "manage/notice/faqManageList";
	}
}
