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
				ma.setViewName("driver/board/driverBoardList");

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}

	 //기사페이지에서 공지사항 글쓰기로 넘어가기
	 @RequestMapping("/driverNoticeWriter")
	 public String driverNotieWriter() {
	 return "driver/board/driverNoticeWriter";
	 }
	
	// 기사페이지에서 공지사항 글쓰기 인서트
	@RequestMapping("/driverNoticeInsert")
	public String driverNoticeInsert(NoticeVO n, HttpServletRequest request, @RequestParam MultipartFile noticefilename) {
		if (!noticefilename.isEmpty()) {
			String savePath = request.getSession().getServletContext().getRealPath("/upload/board/");
			String originName = noticefilename.getOriginalFilename();
			String onlyFileName = originName.substring(0, originName.indexOf(".")); // 처음부터 .만날때까지 읽어오는것
			String extension = originName.substring(originName.indexOf(".")); // .(포함)부터 끝까지 읽어옴
			String filePath = onlyFileName + "_" + "1" + extension;
			String fullPath = savePath + "/" + filePath; // 경로 합쳐 놓은것
			n.setNoticeFilename(filePath);
			if (!noticefilename.isEmpty()) {
				try {
					byte[] bytes = noticefilename.getBytes();
					File f = new File(fullPath); // io File 임포트
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
				result = driverBoardService.driverNoticeInsert(n);
				if (result > 0) {
					view = "driver/board/driverNoticeInsert";
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return view;
		} else {
			int result;
			String view = "";
			try {
				result = driverBoardService.driverNoticeInsert(n);
				if (result > 0) {
					view = "driver/board/driverNoticeInsert";
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return view;
		}
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
	
	//기사페이지에서 공지사항 수정페이지
	@RequestMapping("/driverNoticeModify")
	public ModelAndView driverNoticeModify(@RequestParam int noticeIndex) {
		NoticeVO n;
		ModelAndView ma = new ModelAndView();
		try {
			n = driverBoardService.driverNoticeView(noticeIndex);
			if(n!=null) {
				ma.addObject("noticeVO",n);
				ma.setViewName("driver/board/driverNoticeModify");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	
	//부동산에서 공지사항 업데이트실행
	@RequestMapping("/driverNoticeUpdate")
	public String driverNoticeUpdate(NoticeVO n,HttpServletRequest request, @RequestParam MultipartFile noticefilename) {
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
					int result = driverBoardService.driverNoticeUpdate(n);
					System.out.println("result:"+result);
					System.out.println("타입-"+n.getNoticeType());
					if(result>0) {
							view = "driver/board/driverUpdate";
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return view;
			}else {
				String view = "";
				try {
					int result = driverBoardService.driverNoticeUpdate(n);
					System.out.println("result:"+result);
					System.out.println("타입-"+n.getNoticeType());
					if(result>0) {
							view = "driver/board/driverUpdate";
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return view;
			}
		}
	//기사페이지에서 공지사항 삭제
	@RequestMapping("/driverNoticeDelete")
	public String driverNoticeDelete(@RequestParam int noticeIndex) {
		int result;
		String view="";
		try {
			result = driverBoardService.driverNoticeDelete(noticeIndex);
			if(result>0) {
					view = "driver/board/driverNoticeDelete";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
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
