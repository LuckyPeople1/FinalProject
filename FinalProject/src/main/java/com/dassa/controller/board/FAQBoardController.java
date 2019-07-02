package com.dassa.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manage/board/faq")
public class FAQBoardController {

	//faq관리페이지
	@RequestMapping("/faqManageList")
	public String faqManageList() {
		return "manage/board/faq/faqManageList";
	}
	
	//faq작성페이지
	@RequestMapping("/faqManageWriter")
	public String faqManageWriter() {
		return "manage/board/faq/faqManageWriter";
	}
	
	//faq수정페이지
	@RequestMapping("/faqManageModify")
	public String faqManageModify() {
		return "manage/board/faq/faqManageModify";
	}
}
