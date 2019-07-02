package com.dassa.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manage/board/faq")
public class FAQBoardController {

	@RequestMapping("/faqManageList")
	public String faqManageList() {
		return "manage/board/faq/faqManageList";
	}
}
