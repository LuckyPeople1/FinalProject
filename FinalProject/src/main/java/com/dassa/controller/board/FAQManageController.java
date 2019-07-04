package com.dassa.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manage/board/faq")
public class FAQManageController {

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
	
	//faq부동산페이지
	@RequestMapping("/faqManageRealestateList")
	public String faqManageRealestateList() {
		return "manage/board/faq/faqManageRealestateList";
	}
	
	//faq기사페이지
	@RequestMapping("/faqManageAriclesList")
	public String faqManageAriclesList() {
		return "manage/board/faq/faqManageAriclesList";		
	}
}
