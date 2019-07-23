package com.dassa.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.DriverBoardMapper;
import com.dassa.vo.FaqPageData;
import com.dassa.vo.FaqVO;
import com.dassa.vo.NoticePageData;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.QuestionPageData;
import com.dassa.vo.QuestionVO;
import com.dassa.vo.SearchNoticeVO;

@Service("driverBoardService")
public class DriverBoardService {
	@Resource
	private DriverBoardMapper driverBoardMapper;

	public NoticePageData selectNoticeList(int reqPage) throws Exception {
		// 페이지 당 게시물 수
		int numPerPage = 5;
		// 총 게시물 수 구하기
		int totalCount = driverBoardMapper.totalCount();
		// 총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage== 0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		// 요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		// 시작 게시물 번호
		int start = (reqPage-1)*numPerPage + 1;
		int end = reqPage*numPerPage;
		ArrayList<NoticeVO> list = driverBoardMapper.selectNoticeList(start, end);
		// 페이지 네비 작성
		String pageNavi = "";
		// 페이지 네비의 수
		int pageNaviSize = 5;
		// 페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize + 1;
		// 이전 버튼 생성
		if (pageNo != 1) {
			pageNavi += "<a class='pbtn' href='/driver/board/driverBoardList?reqPage=" + (pageNo-1) + "'>이전</a>";
		}
		// 페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while (!(i++ > pageNaviSize || pageNo > totalPage)) { // 둘 중 하나라도 만족하면 수행하지 않겠다
			if (reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>" + pageNo + "</span>"; // 4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌
			} else {
				pageNavi += "<a class='pbtn' href='/driver/board/driverBoardList?reqPage=" + pageNo + "'>" + pageNo + "</a>";
			}
			pageNo++;
		}
		// 다음 버튼 생성
		if (pageNo <= totalPage) {
			pageNavi += "<a class='pbtn' href='/driver/board/driverBoardList?reqPage=" + pageNo + "'>다음</a>";
		}
		NoticePageData pd = new NoticePageData(list, pageNavi);
		return pd;
	}

	//기사 공지사항 상세보기
	public NoticeVO driverNoticeView(int noticeIndex) throws Exception{
		return driverBoardMapper.driverNoticeView(noticeIndex);
	}
	
	//기사 faq리스트
	public FaqPageData driverFaqList(int reqPage) throws Exception {
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = driverBoardMapper.faqTotalCount();
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		int end = reqPage*numPerPage;
		System.out.println(start+"/"+end);
		ArrayList<FaqVO> list = driverBoardMapper.driverFaqList(start,end);
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		//이전 버튼 생성
		if(pageNo !=1) {
				pageNavi += "<a class='pbtn' href='/driver/board/faq/driverFaqList?reqPage="+(pageNo-1)+"'>이전</a>";
		}
		//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
			if(reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>"+pageNo+"</span>"; //4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌 
			}else {
					pageNavi += "<a class='pbtn' href='/driver/board/faq/driverFaqList?reqPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
				pageNavi +="<a class='pbtn' href='/driver/board/faq/driverFaqList?reqPage="+pageNo+"'>다음</a>";
		}
		FaqPageData pd = new FaqPageData(list,pageNavi);
		return pd;
	}
	//기사 1:1문의 리스트
	public QuestionPageData driverQuestionList(int reqPage) throws Exception {
		// 페이지 당 게시물 수
		int numPerPage = 5;
		// 총 게시물 수 구하기
		int totalCount = driverBoardMapper.questionTotalCount();
		// 총 페이지 수 구하기
		int totalPage = (totalCount % numPerPage == 0) ? (totalCount / numPerPage) : (totalCount / numPerPage) + 1;
		// 요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		// 시작 게시물 번호
		int start = (reqPage - 1) * numPerPage + 1;
		int end = reqPage * numPerPage;
		System.out.println(start + "/" + end);
		ArrayList<QuestionVO> list = driverBoardMapper.driverQuestionList(start, end);
		// 페이지 네비 작성
		String pageNavi = "";
		// 페이지 네비의 수
		int pageNaviSize = 5;
		// 페이지 번호
		int pageNo = ((reqPage - 1) / pageNaviSize) * pageNaviSize + 1;
		// 이전 버튼 생성
		if (pageNo != 1) {
			pageNavi += "<a class='pbtn' href='/driver/board/question/driverQuestionList?reqPage=" + (pageNo - 1) + "'>이전</a>";
		}
		// 페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while (!(i++ > pageNaviSize || pageNo > totalPage)) { // 둘 중 하나라도 만족하면 수행하지 않겠다
			if (reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>" + pageNo + "</span>"; // 4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌
			} else {
				pageNavi += "<a class='pbtn' href='/driver/board/question/driverQuestionList?reqPage=" + pageNo + "'>" + pageNo
						+ "</a>";
			}
			pageNo++;
		}
		// 다음 버튼 생성
		if (pageNo <= totalPage) {
			pageNavi += "<a class='pbtn' href='/driver/board/question/driverQuestionList?reqPage=" + pageNo + "'>다음</a>";
		}
		QuestionPageData pd = new QuestionPageData(list, pageNavi);
		return pd;
	}

	//1:1문의 상세보기
	public QuestionVO driverQuestionView(int questionsIndex) throws Exception{
		return driverBoardMapper.driverQuestionView(questionsIndex);
	}

	//1:1문의 삭제하기
	public int driverQuestionDelete(int questionsIndex) throws Exception {
		// TODO Auto-generated method stub
		return driverBoardMapper.driverQuestionDelete(questionsIndex);
	}

	//1:1문의 작성하기
	public int driverQuestionInsert(QuestionVO q) throws Exception {
		// TODO Auto-generated method stub
		return driverBoardMapper.driverQuestionInsert(q);
	}

	//기사 공지사항 제목 검색
	public NoticePageData searchKeyword(int reqPage, SearchNoticeVO s) throws Exception{
		int numPerPage = 5;
		int totalCount = driverBoardMapper.titleCount(s);
		System.out.println("서비스 토탈 : "+totalCount);
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;;
		int start = (reqPage-1)*numPerPage+1;;
		int end = reqPage*numPerPage;
		int code=s.getCode();
		s.setStart(start);
		s.setEnd(end);
		ArrayList<NoticeVO> list = driverBoardMapper.searchKeywordTitle(s);
		System.out.println("서비스-"+list.size());
		String pageNavi = "";
		int pageNaviSize = 5;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		if(pageNo !=1) {
			pageNavi += "<a class='pbtn' href='/driver/board/searchKeyword?reqPage="+(pageNo-1)+"&keyWord="+s.getKeyWord()+"'>이전</a>";
		}
		//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
			if(reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>"+pageNo+"</span>"; //4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌 
			}else {
				pageNavi += "<a class='pbtn' href='/driver/board/searchKeyword?reqPage="+pageNo+"&keyWord="+s.getKeyWord()+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			pageNavi +="<a class='pbtn' href='/driver/board/searchKeyword?reqPage="+pageNo+"&keyWord="+s.getKeyWord()+"'>다음</a>";
		}
		NoticePageData pd = new NoticePageData(list,pageNavi);
		return pd;
	}

}
