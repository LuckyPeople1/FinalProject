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
				ma.setViewName("shop/board/shopBoardList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	//부동산페이지에서 공지사항 글쓰기
	@RequestMapping("/shopNoticeWriter")
	public String shopNotieWriter() {
		return "shop/board/shopNoticeWriter";
	}
	//부동산에서 공지사항 글쓰기 인서트
	@RequestMapping("/shopNoticeInsert")
	public String shopNoticeInsert(NoticeVO n,HttpServletRequest request, @RequestParam MultipartFile noticefilename) {
		if(!noticefilename.isEmpty()) {
			String savePath = request.getSession().getServletContext().getRealPath("/upload/board/");
			String originName = noticefilename.getOriginalFilename();
			String onlyFileName = originName.substring(0, originName.indexOf(".")); //처음부터 .만날때까지 읽어오는것
			String extension = originName.substring(originName.indexOf(".")); //.(포함)부터 끝까지 읽어옴
			String filePath = onlyFileName+"_"+"1"+extension;
			String fullPath = savePath+"/"+filePath; //경로 합쳐 놓은것
			n.setNoticeFilename(filePath);
			if(!noticefilename.isEmpty()) {
				try {
					byte[] bytes = noticefilename.getBytes();
					File f = new File(fullPath);	//io File 임포트
					FileOutputStream fos = new FileOutputStream(f);
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					bos.write(bytes);
					bos.close();
					System.out.println("파일업로드성공!");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			int result;
			String view = "";
			try {
				result = shopBoardService.shopNoticeInsert(n);
				if(result>0) {
						view = "shop/board/shopInsert";
					}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return view;
		}else {
			int result;
			String view = "";
			try {
				result = shopBoardService.shopNoticeInsert(n);
				if(result>0) {
						view = "shop/board/shopInsert";
					}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return view;
		}
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
	
	//부동산페이지에서 공지사항 수정페이지
	@RequestMapping("/shopNoticeModify")
	public ModelAndView shopNoticeModify(@RequestParam int noticeIndex) {
		NoticeVO n;
		ModelAndView ma = new ModelAndView();
		try {
			n = shopBoardService.shopNoticeView(noticeIndex);
			if(n!=null) {
				ma.addObject("noticeVO",n);
				ma.setViewName("shop/board/shopNoticeModify");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	//부동산에서 공지사항 업데이트실행
	@RequestMapping("/shopNoticeUpdate")
	public String shopNoticeUpdate(NoticeVO n,HttpServletRequest request, @RequestParam MultipartFile noticefilename) {
		if(!noticefilename.isEmpty()) {
			System.out.println("ti:"+n.getNoticeTitle());
			System.out.println("co:"+n.getNoticeContent());
			String savePath = request.getSession().getServletContext().getRealPath("/upload/board/");
			String originName = noticefilename.getOriginalFilename();
			String onlyFileName = originName.substring(0, originName.indexOf(".")); //처음부터 .만날때까지 읽어오는것
			String extension = originName.substring(originName.indexOf(".")); //.(포함)부터 끝까지 읽어옴
			String filePath = onlyFileName+"_"+"1"+extension;
			String fullPath = savePath+"/"+filePath; //경로 합쳐 놓은것
			n.setNoticeFilename(filePath);
			if(!noticefilename.isEmpty()) {
				try {
					byte[] bytes = noticefilename.getBytes();
					File f = new File(fullPath);	//io File 임포트
					FileOutputStream fos = new FileOutputStream(f);
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					bos.write(bytes);
					bos.close();
					System.out.println("파일업로드성공!");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			String view = "";
				try {
					int result = shopBoardService.shopNoticeUpdate(n);
					System.out.println("result:"+result);
					System.out.println("타입-"+n.getNoticeType());
					if(result>0) {
							view = "shop/board/shopUpdate";
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return view;
			}else {
				String view = "";
				try {
					int result = shopBoardService.shopNoticeUpdate(n);
					System.out.println("result:"+result);
					System.out.println("타입-"+n.getNoticeType());
					if(result>0) {
							view = "shop/board/shopUpdate";
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return view;
			}
		}
	
	//부동산페이지에서 공지사항 삭제
	@RequestMapping("/shopNoticeDelete")
	public String shopNoticeDelete(@RequestParam int noticeIndex) {
		int result;
		String view="";
		try {
			result = shopBoardService.shopNoticeDelete(noticeIndex);
			if(result>0) {
					view = "shop/board/shopDelete";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
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
