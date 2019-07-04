package com.dassa.controller.board;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.NoticeService;
import com.dassa.vo.NoticeVO;


@Controller
@RequestMapping("/manage/board/notice")
public class NoticeController {

	@Resource
	private NoticeService noticeService;
	
	//관리자 공지사항 페이지
	@RequestMapping("/noticeManageList")//noticeManageList를 맵핑
	public ModelAndView noticeMangeList() {
		ArrayList<NoticeVO> list;
		ModelAndView ma = new ModelAndView();
		try {
			list = noticeService.selectAllList();
			if(!list.isEmpty()) {
				ma.addObject("list", list);
				ma.setViewName("manage/board/notice/noticeManageList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	//기사 공지사항 페이지
	@RequestMapping("/articles/noticeManageArticlesList")
	public ModelAndView noticeManageArticlesList() {
		ArrayList<NoticeVO> list;
		ModelAndView ma = new ModelAndView();
		try {
			list = noticeService.selectAllList();
			if(!list.isEmpty()) {
				ma.addObject("list",list);
				ma.setViewName("manage/board/notice/articles/noticeManageArticlesList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ma;
	}
	
	//부동산 공지사항 페이지
	@RequestMapping("/realestate/noticeManageRealestateList")
	public ModelAndView noticeManageRealestateList() {
		ArrayList<NoticeVO> list;
		ModelAndView ma = new ModelAndView();
		try {
			list = noticeService.selectAllList();
			if(!list.isEmpty()) {
				ma.addObject("list",list);
				ma.setViewName("manage/board/notice/realestate/noticeManageRealestateList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	//관리자 공지사항 수정페이지로 넘어가기
	@RequestMapping("/noticeManageModify")
	public ModelAndView noticeManageModify(@RequestParam int noticeIndex) {
		System.out.println(noticeIndex);
		NoticeVO n;
		ModelAndView ma = new ModelAndView();
		try {
			n = noticeService.noticeView(noticeIndex);
			if(n!=null) {
				ma.addObject("noticeVO",n);
				ma.setViewName("manage/board/notice/noticeManageModify");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	//업데이트를 실행하는 컨트롤러
	@RequestMapping("/noticeUpdate")
	public String noticeUpdate(NoticeVO n) {
		System.out.println("ti:"+n.getNoticeTitle());
		System.out.println("co:"+n.getNoticeContent());
		String view = "";
		try {
			int result = noticeService.noticeUpdate(n);
			System.out.println("result:"+result);
			System.out.println("타입-"+n.getNoticeType());
			if(result>0) {
				if(n.getNoticeType().equals("사용자")) {
					view = "manage/board/notice/updateSuccess";
				}else if(n.getNoticeType().equals("부동산")) {
					view = "manage/board/notice/realestate/RupdateSuccess";
				}else if(n.getNoticeType().equals("기사")) {
					view = "manage/board/notice/articles/AupdateSuccess";
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
	
	//관리자 공지사항 작성페이지
	@RequestMapping("/noticeManageWriter")
	public String noticeManageWriter() {
		return "manage/board/notice/noticeManageWriter";
	}
	//공지사항 인서트
	@RequestMapping("/noticeInsert")
	public String noticeInsert(NoticeVO n) {
		System.out.println("/"+"제목-"+n.getNoticeTitle()+"/"+"내용-"+n.getNoticeContent()+"/"+"타입-"+n.getNoticeType()+"/"+"작성자-"+n.getNoticeWriter());
		System.out.println("파일이름-"+n.getNoticeFilename()+"/"+"파일경로-"+n.getNoticeFilepath()+"/"+"히트-"+n.getNoticeHit()+"/"+"상태-"+n.getNoticeState());
		int result;
		String view = "";
		try {
			result = noticeService.noticeInsert(n);
			if(result>0) {
				if(n.getNoticeType().equals("사용자")) {
					view = "manage/board/notice/insertSuccess";
				}else if(n.getNoticeType().equals("부동산")) {
					view = "manage/board/notice/realestate/RinsertSuccess";
				}else if(n.getNoticeType().equals("기사")) {
					view = "manage/board/notice/articles/AinsertSuccess";					
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
	//관리자 부동산 공지사항 작성페이지
	@RequestMapping("/realestate/noticeManageRealestateWriter")
	public String noticeManageRealestateWriter() {
		return "manage/board/notice/realestate/noticeManageRealestateWriter";
	}
	//관리자 기사 공지사항 작성페이지
	@RequestMapping("/articles/noticeManageArticlesWriter")
	public String noticeManageArticlesWriter() {
		return "manage/board/notice/articles/noticeManageArticlesWriter";
	}
}
