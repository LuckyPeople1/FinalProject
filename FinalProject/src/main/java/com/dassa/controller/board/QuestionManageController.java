package com.dassa.controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/manage/board/question")
public class QuestionManageController {
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
	@RequestMapping("/realestate/questionManageRealestateList")
	public String questionManageRealestateList() {
		return "manage/board/question/realestate/questionManageRealestateList";
	}
	
	//1:1기사관리페이지
	@RequestMapping("/articles/questionManageAriticlesList")
	public String questionManageAriticlesList() {
		return "manage/board/question/articles/questionManageAriticlesList";
	}
}
