package com.dassa.controller.board;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.NoticeService;
import com.dassa.vo.NoticePageData;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.SearchNoticeVO;


@Controller
@RequestMapping("/manage/board/notice")
public class NoticeController {

	@Resource(name="noticeService")
	private NoticeService noticeService;
	
	//관리자 공지사항 페이지
	@RequestMapping("/noticeManageList")//noticeManageList를 맵핑
	public ModelAndView noticeMangeList(@RequestParam int reqPage,HttpServletRequest request) {
		int code;
		try {
			code = Integer.parseInt(request.getParameter("code"));
		}catch (NumberFormatException e) {
			code=0;
		}
		ModelAndView ma = new ModelAndView();
		try {
			NoticePageData list = noticeService.selectAllList(reqPage,code);
			if(!list.isEmpty()) {
				ArrayList<NoticeVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.setViewName("manage/board/notice/noticeManageList");
//				if(code==1) {
//				}else if(code==2) {
//					ma.setViewName("manage/board/notice/noticeManageList");
//				}else {
//					ma.setViewName("manage/board/notice/noticeManageList");
//				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	//공지사항검색
	@RequestMapping("/searchKeyword")
	@ResponseBody
	public ModelAndView searchKeyword(@RequestParam int reqPage,HttpServletRequest request, SearchNoticeVO s) {
		int code;
		System.out.println(reqPage);
		try {
			code = Integer.parseInt(request.getParameter("code"));
			System.out.println("코드는"+code);
		}catch (NumberFormatException e) {
			code=0;
		}
		ModelAndView ma = new ModelAndView();
		/*s.setKeyWord(keyWord);
		s.setSearchType(searchType);
		Map<String, Object> sn = new HashMap<String, Object>();*/
		try {
			/*String keyword = request.getParameter("keyword");*/
			NoticePageData list = noticeService.searchKeyword(reqPage,s);
			if(!list.isEmpty()) {
				ArrayList<NoticeVO> arrlist = list.getList();
				String pageNavi = list.getPageNavi();
				ma.addObject("list", arrlist);
				ma.addObject("pageNavi", pageNavi);
				ma.setViewName("manage/board/notice/noticeManageList");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ma;
	}
	    
	//상세보기
	@RequestMapping("/noticeManageView")
	public ModelAndView noticeManageView(@RequestParam int noticeIndex) {
		NoticeVO n;
		ModelAndView ma = null;
		try {
			n = noticeService.noticeView(noticeIndex);
			ma = new ModelAndView();
			if(n!=null) {
				ma.addObject("noticeVO",n);
				ma.setViewName("manage/board/notice/noticeManageView");
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
	public String noticeUpdate(NoticeVO n,HttpServletRequest request, @RequestParam MultipartFile noticefilename) {
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
		}else {
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
	}
//	            if(status.equals("stay")) {
//	               c.setCompetitionImg(oldFilename);
//	            }else {
//	               File deleteFile = new File(savePath+"/"+oldFilename);
//	               boolean bool = deleteFile.delete();
//	               System.out.println(bool?"삭제성공":"삭제실패");
//	            }
//	         }

	
	
	//관리자 공지사항 작성페이지
	@RequestMapping("/noticeManageWriter")
	public String noticeManageWriter() {
		return "manage/board/notice/noticeManageWriter";
	}
	
	
	//공지사항 인서트
	@RequestMapping("/noticeInsert")
	public String noticeInsert(NoticeVO n,HttpServletRequest request, @RequestParam MultipartFile noticefilename) {
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
			System.out.println("제목-"+n.getNoticeTitle()+"/"+"내용-"+n.getNoticeContent()+"/"+"타입-"+n.getNoticeType()+"/"+"작성자-"+n.getNoticeWriter());
			System.out.println("파일이름-"+n.getNoticeFilename()+"/"+"파일경로-"+n.getNoticeFilepath()+"/"+"/"+"상태-"+n.getNoticeState());
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
		}else {
			int result;
			String view = "";
			System.out.println("제목-"+n.getNoticeTitle()+"/"+"내용-"+n.getNoticeContent()+"/"+"타입-"+n.getNoticeType()+"/"+"작성자-"+n.getNoticeWriter());
			System.out.println("파일이름-"+n.getNoticeFilename()+"/"+"파일경로-"+n.getNoticeFilepath()+"/"+"히트-"+"/"+"상태-"+n.getNoticeState());
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
	}
	
/*	//관리자 부동산 공지사항 작성페이지
	@RequestMapping("/realestate/noticeManageRealestateWriter")
	public String noticeManageRealestateWriter() {
		return "manage/board/notice/realestate/noticeManageRealestateWriter";
	}
	//관리자 기사 공지사항 작성페이지
	@RequestMapping("/articles/noticeManageArticlesWriter")
	public String noticeManageArticlesWriter() {
		return "manage/board/notice/articles/noticeManageArticlesWriter";
	}*/
	
	//관리자페이지 공지사항 삭제
	@RequestMapping("/noticeDelete")
	public String noticeDelete(@RequestParam int noticeIndex) {
		int result;
		String view="";
		try {
			result = noticeService.noticeDelete(noticeIndex);
			if(result>0) {
					view = "manage/board/notice/noticeDelete";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
/*	//관리자페이지 부동산공지사항 삭제
	@RequestMapping("/noticeDelete")
	public String noticeDelete1(@RequestParam int noticeIndex) {
		int result;
		String view="";
		try {
			result = noticeService.noticeDelete(noticeIndex);
			if(result>0) {
					view = "manage/board/notice/realestate/noticeRealestateDelete";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}
	//관리자페이지 기사공지사항 삭제
	@RequestMapping("/noticeDelete")
	public String noticeDelete2(@RequestParam int noticeIndex) {
		int result;
		String view="";
		try {
			result = noticeService.noticeDelete(noticeIndex);
			if(result>0) {
					view = "manage/board/notice/articles/noticeArticlesDelete";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return view;
	}*/
}
