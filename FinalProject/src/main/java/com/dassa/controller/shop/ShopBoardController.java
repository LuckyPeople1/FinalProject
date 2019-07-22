package com.dassa.controller.shop;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.ShopBoardService;
import com.dassa.vo.FaqPageData;
import com.dassa.vo.FaqVO;
import com.dassa.vo.NoticePageData;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.QuestionPageData;
import com.dassa.vo.QuestionVO;

@Controller
@RequestMapping("/shop/board")
public class ShopBoardController {
	@Autowired
	@Qualifier(value="shopBoardService")
	private ShopBoardService shopBoardService;

	//부동산 게시판관리 페이지(board)
	@RequestMapping("/shopBoardList")
	public ModelAndView ShopBoard(@RequestParam int reqPage,HttpServletRequest request) {
		ModelAndView ma = new ModelAndView();
		try {
			NoticePageData list = shopBoardService.selectNoticeList(reqPage);
			if(!list.isEmpty()) {
				ArrayList<NoticeVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.addObject("headerNav", 5);
				ma.addObject("subNav", 1);
				ma.setViewName("shop/board/shopBoardList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	//부동산에서 공지사항 뷰보기
	@RequestMapping("/shopNoticeView")
	public ModelAndView shopNoticeView(@RequestParam int noticeIndex) {
		NoticeVO n;
		ModelAndView ma = null;
		try {
			n = shopBoardService.shopNoticeView(noticeIndex);
			ma = new ModelAndView();
			if(n!=null) {
				ma.addObject("noticeVO",n);
				ma.setViewName("shop/board/shopNoticeView");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}

	//faq리스트
	@RequestMapping("/faq/shopFaqList")
	public ModelAndView shopFaqList(@RequestParam int reqPage,HttpServletRequest request) {
		ModelAndView ma = new ModelAndView();
		try {
			FaqPageData list = shopBoardService.shopFaqList(reqPage);
			if(!list.isEmpty()) {
				ArrayList<FaqVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.addObject("headerNav", 5);
				ma.addObject("subNav", 3);
				ma.setViewName("shop/board/faq/shopFaqList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	//1:1문의리스트
	@RequestMapping("/question/shopQuestion")
	public ModelAndView shopQuestion(@RequestParam int reqPage,HttpServletRequest request) {
		ModelAndView ma = new ModelAndView();
		try {
			QuestionPageData list = shopBoardService.shopQuestion(reqPage);
			if(!list.isEmpty()) {
				ArrayList<QuestionVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.addObject("headerNav", 5);
				ma.addObject("subNav", 2);
				ma.setViewName("shop/board/question/shopQuestion");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	//1:1문의뷰
	@RequestMapping("/question/shopQuestionView")
	public ModelAndView shopQuestionView(@RequestParam int questionsIndex) {
		QuestionVO q;
		ModelAndView ma = new ModelAndView();
		try {
			q = shopBoardService.shopQuestionView(questionsIndex);
			if(q!=null) {
				ma.addObject("questionVO", q);
				ma.setViewName("shop/board/question/shopQuestionView");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	//1:1문의작성하기
	@RequestMapping("/question/shopQuestionWriter")
	public String shopQuestionWriter() {
		return "shop/board/question/shopQuestionWriter";
	}
	//1:1문의인서트
	@RequestMapping("/question/shopQuestionInsert")
	public String shopQuestionInsert(QuestionVO q) {
		int result;
		String view = "";
		try {
			String ti = q.getQuestionsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n\r", "<br/>");
			q.setQuestionsTitle(ti);
			String con = q.getQuestionsContent().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n\r", "<br/>");
			q.setQuestionsContent(con);
			result = shopBoardService.shopQuestionInsert(q);
			if(result>0) {
				view="shop/board/question/shopQuestionInsert";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}	
	
	//1:1문의삭제하기
	@RequestMapping("/question/shopQuestionDelete")
	public String shopQuestionDelete(@RequestParam int questionsIndex) {
		int result;
		String view="";
		try {
			result = shopBoardService.shopQuestionDelete(questionsIndex);
			System.out.println(result);
			if(result>0) {
				view="shop/board/question/shopQuestionDelete";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
}
