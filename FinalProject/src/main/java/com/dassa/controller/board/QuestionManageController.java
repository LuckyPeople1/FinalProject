package com.dassa.controller.board;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
	public ModelAndView questionManageList(@RequestParam int reqPage,HttpServletRequest request) {
		int code;
		try {
			code = Integer.parseInt(request.getParameter("code"));
		}catch (NumberFormatException e) {
			code=0;
		}
		ModelAndView ma = new ModelAndView();
		try {
			QuestionPageData list = questionService.selectAllList(reqPage, code);
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
	public ModelAndView questionManageView(@RequestParam int questionsIndex) {
		QuestionVO q;
		ModelAndView ma = new ModelAndView();
		try {
			q = questionService.questionView(questionsIndex);
			if(q!=null) {
				ma.addObject("questionVO", q);
				ma.setViewName("manage/board/question/questionManageView");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	//1:1문의 답변등록
	@RequestMapping("/questionUpdate")
	public String questionUpdate(QuestionVO q) {
		int result;
		String view="";
		try {
			result = questionService.questionUpdate(q);
			if(result>0) {
				view="manage/board/question/updateSuccess";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
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
