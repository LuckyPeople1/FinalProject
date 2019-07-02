package com.dassa.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/manage/board/question")
public class questionManageController {

	@RequestMapping("/questionManageList")
	public String questionManageList() {
		return "manage/board/question/questionManageList";
	}
}
