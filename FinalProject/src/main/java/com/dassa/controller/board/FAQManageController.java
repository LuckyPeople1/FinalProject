package com.dassa.controller.board;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.FaqService;
import com.dassa.vo.FaqPageData;
import com.dassa.vo.FaqVO;
import com.dassa.vo.NoticePageData;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.SearchNoticeVO;


@Controller
@RequestMapping("/manage/board/faq")
public class FAQManageController {

	@Resource(name="faqService")
	private FaqService faqService;
	//faq관리페이지
	@RequestMapping("/faqManageList")
	public ModelAndView faqManageList(@RequestParam int reqPage,HttpServletRequest request) {
		int code;
		try {
			code = Integer.parseInt(request.getParameter("code"));
		}catch (NumberFormatException e) {
			code=0;
		}
		ModelAndView ma = new ModelAndView();
		try {
			FaqPageData list = faqService.selectAllList(reqPage,code);
			if(!list.isEmpty()) {
				ArrayList<FaqVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				System.out.println("컨트롤러arrlist-"+arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.setViewName("manage/board/faq/faqManageList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	//faq검색
	@RequestMapping("/searchKeyword")
	@ResponseBody
	public ModelAndView searchKeyword(@RequestParam int reqPage,HttpServletRequest request,@RequestParam String keyWord) {
		int code;
		SearchNoticeVO s = new SearchNoticeVO();
		s.setKeyWord(keyWord);
		System.out.println(s.getKeyWord());
		System.out.println("컨트롤러-"+reqPage);
		try {
			code = Integer.parseInt(request.getParameter("code"));
			System.out.println("코드는"+code);
		}catch (NumberFormatException e) {
			code=0;
		}
		ModelAndView ma = new ModelAndView();
		try {
			FaqPageData list = faqService.searchKeyword(reqPage,s);
			System.out.println("컨트롤러-"+list);
			if(!list.isEmpty()) {
				ArrayList<FaqVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.setViewName("manage/board/faq/faqManageList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	
	//상세보기
	@RequestMapping("/faqManageView")
	public ModelAndView faqManageView(@RequestParam int faqIndex) {
		ModelAndView ma = null;
		try {
			FaqVO f = faqService.faqView(faqIndex);
			ma = new ModelAndView();
			if(f!=null) {
				ma.addObject("faqVO",f);
				ma.setViewName("manage/board/faq/faqManageView");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	//faq작성페이지
	@RequestMapping("/faqManageWriter")
	public String faqManageWriter() {
		return "manage/board/faq/faqManageWriter";
	}
	//faq인서트
	@RequestMapping("/faqInsert")
	public String faqInsert(FaqVO f) {
		int result;
		String view = "";
		System.out.println("제목-"+f.getFaqQuestion()+"/"+"내용-"+f.getFaqAnswer()+"/"+"타입-"+f.getFaqUserType()+"/"+"상태-"+f.getFaqState());
		try {
			String an = f.getFaqAnswer().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n\r", "<br/>");
			f.setFaqAnswer(an);
			String qu = f.getFaqQuestion().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n\r", "<br/>");
			f.setFaqQuestion(qu);
			result = faqService.faqInsert(f);
			if(result>0) {
					if(f.getFaqUserType().equals("회원문의")) {
						view = "manage/board/faq/insertSuccess";
					}else if(f.getFaqUserType().equals("부동산문의")) {
						view = "manage/board/faq/realestate/RinsertSuccess";
					}else if(f.getFaqUserType().equals("기사문의")) {
						view = "manage/board/faq/articles/AinsertSuccess";					
					}
				}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
	
	//faq수정페이지
	@RequestMapping("/faqManageModify")
	public ModelAndView faqManageModify(@RequestParam int faqIndex) {
		FaqVO f;
		ModelAndView ma = new ModelAndView();
		try {
			f = faqService.faqView(faqIndex);
			if(f!=null) {
				ma.addObject("faqVO",f);
				ma.setViewName("manage/board/faq/faqManageModify");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	//faq수정실행하는 컨트롤러
	@RequestMapping("/faqUpdate")
	public String faqUpdate(FaqVO f) {
		int result;
		String view = "";
		try {
			result = faqService.faqUpdate(f);
			System.out.println("result:"+result);
			System.out.println("타입-"+f.getFaqUserType());
			if(result>0) {
				if(f.getFaqUserType().equals("회원문의")) {
					view = "manage/board/faq/updateSuccess";
				}else if(f.getFaqUserType().equals("부동산문의")) {
					view = "manage/board/faq/realestate/RupdateSuccess";
				}else if(f.getFaqUserType().equals("기사문의")) {
					view = "manage/board/faq/articles/AupdateSuccess";
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
	
	//faq부동산페이지
	@RequestMapping("/realestate/faqManageRealestateList")
	public String faqManageRealestateList() {
		return "manage/board/faq/realestate/faqManageRealestateList";
	}
	
	//faq기사페이지
	@RequestMapping("/articles/faqManageArticlesList")
	public String faqManageAriclesList() {
		return "manage/board/faq/articles/faqManageArticlesList";		
	}
	
	//faq 삭제
	@RequestMapping("/faqDelete")
	public String faqDelete(@RequestParam int faqIndex) {
		int result;
		String view="";
		try {
			result = faqService.faqDelete(faqIndex);
			if(result>0) {
					view = "manage/board/faq/faqDelete";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
}
