package com.dassa.controller.driver;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.DriverBoardService;
import com.dassa.vo.FaqPageData;
import com.dassa.vo.FaqVO;
import com.dassa.vo.NoticePageData;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.QuestionPageData;
import com.dassa.vo.QuestionVO;

@Controller
@RequestMapping("/driver/board")
public class DriverBoardController {

	@Resource
	private DriverBoardService driverBoardService;

	// 기사 공지사항 리스트
	@RequestMapping("/driverBoardList")
	public ModelAndView driverNoticeList(@RequestParam int reqPage, HttpServletRequest request) {
		ModelAndView ma = new ModelAndView();
		try {
			NoticePageData list = driverBoardService.selectNoticeList(reqPage);
			if (!list.isEmpty()) {
				ArrayList<NoticeVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.addObject("subNavi", 6);
				ma.addObject("subNav", 1);
				ma.setViewName("driver/board/driverBoardList");

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}

	
	//기사 공지사항 상세보기
	@RequestMapping("/driverNoticeView")
	public ModelAndView driverNoticeView(@RequestParam int noticeIndex) {
		NoticeVO n;
		ModelAndView ma = null;
		try {
			n = driverBoardService.driverNoticeView(noticeIndex);
			ma = new ModelAndView();
			if(n!=null) {
				ma.addObject("noticeVO",n);
				ma.setViewName("driver/board/driverNoticeView");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}

	
	//기사 faq리스트
	@RequestMapping("/faq/driverFaqList")
	public ModelAndView driverFaqList(@RequestParam int reqPage,HttpServletRequest request) {
		ModelAndView ma = new ModelAndView();
		try {
			FaqPageData list = driverBoardService.driverFaqList(reqPage);
			if(!list.isEmpty()) {
				ArrayList<FaqVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.addObject("subNavi", 6);
				ma.addObject("subNav", 3);
				ma.setViewName("driver/board/faq/driverFaqList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	//1:1문의리스트
	@RequestMapping("/question/driverQuestionList")
	public ModelAndView driverQuestionList(@RequestParam int reqPage,HttpServletRequest request) {
		ModelAndView ma = new ModelAndView();
		try {
			QuestionPageData list = driverBoardService.driverQuestionList(reqPage);
			if(!list.isEmpty()) {
				ArrayList<QuestionVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.addObject("subNavi", 6);
				ma.addObject("subNav", 2);
				ma.setViewName("driver/board/question/driverQuestionList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	
	//1:1문의뷰
	@RequestMapping("/question/driverQuestionView")
	public ModelAndView driverQuestionView(@RequestParam int questionsIndex) {
		QuestionVO q;
		ModelAndView ma = new ModelAndView();
		try {
			q = driverBoardService.driverQuestionView(questionsIndex);
			if(q!=null) {
				ma.addObject("questionVO", q);
				ma.setViewName("driver/board/question/driverQuestionView");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	//1:1문의삭제하기
	@RequestMapping("/question/driverQuestionDelete")
	public String driverQuestionDelete(@RequestParam int questionsIndex) {
		int result;
		String view="";
		try {
			result = driverBoardService.driverQuestionDelete(questionsIndex);
			System.out.println(result);
			if(result>0) {
				view="driver/board/question/driverQuestionDelete";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
	
	//1:1문의작성하기
	@RequestMapping("/question/driverQuestionWriter")
	public String driverQuestionWriter() {
		return "driver/board/question/driverQuestionWriter";
	}
	//1:1문의인서트
	@RequestMapping("/question/driverQuestionInsert")
	public String driverQuestionInsert(QuestionVO q) {
		int result;
		String view = "";
		try {
			String ti = q.getQuestionsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n\r", "<br/>");
			q.setQuestionsTitle(ti);
			String con = q.getQuestionsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n\r", "<br/>");
			q.setQuestionsContent(con);
			result = driverBoardService.driverQuestionInsert(q);
			if(result>0) {
				view="driver/board/question/driverQuestionInsert";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}	
}
