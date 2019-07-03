package com.dassa.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/manage/board/question")
public class questionManageController {
	//1:1문의관리
	@RequestMapping("/questionManageList")
	public String questionManageList() {
		return "manage/board/question/questionManageList";
	}
	
	@RequestMapping("/questionManageView")
	public String questionManageView() {
		return "manage/board/question/questionManageView";
	}
}
