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
	//1:1문의관리뷰
	@RequestMapping("/questionManageView")
	public String questionManageView() {
		return "manage/board/question/questionManageView";
	}
	
	//1:1부동산관리페이지
	@RequestMapping("questionManageRealestateList")
	public String questionManageRealestateList() {
		return "manage/board/question/questionManageRealestateList";
	}
	
	//1:1기사관리페이지
	@RequestMapping("questionManageAriticlesList")
	public String questionManageAriticlesList() {
		return "manage/board/question/questionManageAriticlesList";
	}
}
