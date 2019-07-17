package com.dassa.controller.board;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.NoticeGuestService;
import com.dassa.vo.FaqPageData;
import com.dassa.vo.FaqVO;
import com.dassa.vo.NoticePageData;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.QuestionVO;
@Controller
@RequestMapping("/guest")
public class GuestController {
	@Resource(name="noticeGuestService")
	private NoticeGuestService noticeGuestService;
	//사용자 뷰페이지
	@RequestMapping("/notice/noticeList")
	public ModelAndView noticeList(@RequestParam int reqPage,HttpServletRequest request) {
		ModelAndView ma = new ModelAndView();
		try {
			NoticePageData list = noticeGuestService.selectAllList(reqPage);
			if(!list.isEmpty()) {
				ArrayList<NoticeVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.setViewName("guest/notice/noticeList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	//사용자 공지사항 상세보기
	@RequestMapping("/notice/noticeView")
	public ModelAndView noticeView(@RequestParam int noticeIndex) {
		System.out.println(noticeIndex);
		NoticeVO n;
		ModelAndView ma = new ModelAndView();
		try {
			n = noticeGuestService.noticeView(noticeIndex);
			if(n!=null) {
				ma.addObject("noticeVO",n);
				ma.setViewName("guest/notice/noticeView");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	//사용자 1:1문의하기
	@RequestMapping("/notice/question")
	public String question() {
		return "guest/notice/question";
	}
	//사용자 faq리스트보기
	@RequestMapping("/notice/faqList")
	public ModelAndView faqList(@RequestParam int reqPage,HttpServletRequest request) {
		ModelAndView ma = new ModelAndView();
		try {
			FaqPageData list = noticeGuestService.selectFaqList(reqPage);
			if(!list.isEmpty()) {
				ArrayList<FaqVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.setViewName("guest/notice/faqList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	//사용자1:1문의하기
	@RequestMapping("/notice/questionInsert")
	public String questionInsert(QuestionVO q) {
		int result;
		String view = "";
		try {
			result = noticeGuestService.questionInsert(q);
			if(result>0) {
				view="/guest/notice/questionInsert";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
}
