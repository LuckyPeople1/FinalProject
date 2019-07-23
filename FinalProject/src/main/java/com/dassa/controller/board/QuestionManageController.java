package com.dassa.controller.board;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.QuestionService;
import com.dassa.vo.QuestionPageData;
import com.dassa.vo.QuestionVO;
import com.dassa.vo.SearchQuestionVO;

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
	//1:1문의 타입으로 검색
	@RequestMapping("/searchKeyword")
	@ResponseBody
	public ModelAndView searchKeyword(@RequestParam int reqPage,HttpServletRequest request,@RequestParam String keyWord, String type) {
		int code;
		SearchQuestionVO s = new SearchQuestionVO();
		s.setKeyWord(keyWord);
		s.setType(type);
		System.out.println(s.getKeyWord());
		System.out.println("타입-"+type);
		System.out.println("컨트롤러-"+reqPage);
		try {
			code = Integer.parseInt(request.getParameter("code"));
			System.out.println("코드는"+code);
		}catch (NumberFormatException e) {
			code=0;
		}
		ModelAndView ma = new ModelAndView();
		try {
			QuestionPageData list = questionService.searchKeyword(reqPage,s);
			System.out.println("컨트롤러-"+list);
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
			String an = q.getQuestionsAnswer().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n\r", "<br/>");
			q.setQuestionsAnswer(an);
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
	
	//1:1문의 삭제
	@RequestMapping("/questionManageDelete")
	public String questionManageDelete(@RequestParam int questionsIndex) {
		int result;
		String view="";
		try {
			result = questionService.questionManageDelete(questionsIndex);
			System.out.println(result);
			if(result>0) {
				view="manage/board/question/shopQuestionDelete";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
}
