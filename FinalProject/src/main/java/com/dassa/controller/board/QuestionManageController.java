package com.dassa.controller.board;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.QuestionService;
import com.dassa.vo.QuestionPageData;
import com.dassa.vo.QuestionVO;

@Controller
@RequestMapping("/manage/board/question")
public class QuestionManageController {
	
	@Resource(name="questionService")
	private QuestionService questionService;
	
	//1:1문의관리
	@RequestMapping("/questionManageList")
	public ModelAndView questionManageList(@RequestParam int reqPage) {
		ModelAndView ma = new ModelAndView();
		try {
			QuestionPageData list = questionService.selectAllList(reqPage);
			if(!list.isEmpty()) {
				ArrayList<QuestionVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.setViewName("manage/board/question/questionManageList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
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
