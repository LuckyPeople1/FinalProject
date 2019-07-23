package com.dassa.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.ShopBoardMapper;
import com.dassa.vo.FaqPageData;
import com.dassa.vo.FaqVO;
import com.dassa.vo.NoticePageData;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.QuestionPageData;
import com.dassa.vo.QuestionVO;
import com.dassa.vo.SearchNoticeVO;

@Service("shopBoardService")
public class ShopBoardService {
	@Resource(name = "shopBoardMapper")
	private ShopBoardMapper shopBoardMapper;

	/**
	 * 부동산 게시판관리 공지시항 페이징
	 **/
	public NoticePageData selectNoticeList(int reqPage) throws Exception {
		// 페이지 당 게시물 수
		int numPerPage = 5;
		// 총 게시물 수 구하기
		int totalCount = shopBoardMapper.totalCount();
		// 총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage== 0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		// 요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		// 시작 게시물 번호
		int start = (reqPage-1)*numPerPage + 1;
		int end = reqPage*numPerPage;
		ArrayList<NoticeVO> list = shopBoardMapper.selectNoticeList(start, end);
		// 페이지 네비 작성
		String pageNavi = "";
		// 페이지 네비의 수
		int pageNaviSize = 5;
		// 페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize + 1;
		// 이전 버튼 생성
		if (pageNo != 1) {
			pageNavi += "<li class='prev arrow'>";
			pageNavi += "<a href='/shop/board/shopBoardList?reqPage=" + (pageNo-1) + "'>이전</a>";
			pageNavi += "</li>";
		}
		// 페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while (!(i++ > pageNaviSize || pageNo > totalPage)) { // 둘 중 하나라도 만족하면 수행하지 않겠다
			if (reqPage == pageNo) {
				pageNavi += "<li class='on'>";
				pageNavi += "<a>" + pageNo + "</a>"; // 4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌
				pageNavi += "</li>";
			} else {
				pageNavi += "<li class=''>";
				pageNavi += "<a href='/shop/board/shopBoardList?reqPage=" + pageNo + "'>" + pageNo + "</a>";
				pageNavi += "</li>";
			}
			pageNo++;
		}
		// 다음 버튼 생성
		if (pageNo <= totalPage) {
			pageNavi += "<li class='next arrow'>";
			pageNavi += "<a href='/shop/board/shopBoardList?reqPage=" + pageNo + "'>다음</a>";
			pageNavi += "</li>";
		}
		NoticePageData pd = new NoticePageData(list, pageNavi);
		return pd;
	}
	//인서트
	public int shopNoticeInsert(NoticeVO n) throws Exception{
		return shopBoardMapper.shopNoticeInsert(n);
	}
	//뷰상세보기
	public NoticeVO shopNoticeView(int noticeIndex) throws Exception {
		return shopBoardMapper.shopNoticeView(noticeIndex);
	}
	//업데이트
	public int shopNoticeUpdate(NoticeVO n) throws Exception {
		return shopBoardMapper.shopNoticeUpdate(n);
	}
	//삭제
	public int shopNoticeDelete(int noticeIndex) throws Exception{
		return shopBoardMapper.shopNoticeDelete(noticeIndex);
	}
	//faq리스트보기
	public FaqPageData shopFaqList(int reqPage) throws Exception {
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = shopBoardMapper.faqTotalCount();
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		int end = reqPage*numPerPage;
		System.out.println(start+"/"+end);
		ArrayList<FaqVO> list = shopBoardMapper.shopFaqList(start,end);
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		//이전 버튼 생성
		if(pageNo !=1) {
			pageNavi += "<li class='prev arrow'>";
			pageNavi += "<a href='/shop/board/faq/shopFaqList?reqPage="+(pageNo-1)+"'>이전</a>";
			pageNavi += "</li>";
		}
		//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
			if(reqPage == pageNo) {
				pageNavi += "<li class='on'>";
				pageNavi += "<a>"+pageNo+"</a>"; //4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌 
				pageNavi += "</li>";
			}else {
				pageNavi += "<li class=''>";
				pageNavi += "<a href='/shop/board/faq/shopFaqList?reqPage="+pageNo+"'>"+pageNo+"</a>";
				pageNavi += "</li>";
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			pageNavi += "<li class='next arrow'>";
			pageNavi +="<a href='/shop/board/faq/shopFaqList?reqPage="+pageNo+"'>다음</a>";
			pageNavi += "</li>";	
		}
		FaqPageData pd = new FaqPageData(list,pageNavi);
		return pd;
	}
	
	//1:1문의
	public QuestionPageData shopQuestion(int reqPage) throws Exception {
		// 페이지 당 게시물 수
		int numPerPage = 5;
		// 총 게시물 수 구하기
		int totalCount = shopBoardMapper.questionTotalCount();
		// 총 페이지 수 구하기
		int totalPage = (totalCount % numPerPage == 0) ? (totalCount / numPerPage) : (totalCount / numPerPage) + 1;
		// 요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		// 시작 게시물 번호
		int start = (reqPage - 1) * numPerPage + 1;
		int end = reqPage * numPerPage;
		System.out.println(start + "/" + end);
		ArrayList<QuestionVO> list = shopBoardMapper.shopQuestion(start, end);
		// 페이지 네비 작성
		String pageNavi = "";
		// 페이지 네비의 수
		int pageNaviSize = 5;
		// 페이지 번호
		int pageNo = ((reqPage - 1) / pageNaviSize) * pageNaviSize + 1;
		// 이전 버튼 생성
		if (pageNo != 1) {
			pageNavi += "<li class='prev arrow'>";
			pageNavi += "<a href='/shop/board/question/shopQuestion?reqPage=" + (pageNo - 1) + "'>이전</a>";
			pageNavi += "</li>";
		}
		// 페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while (!(i++ > pageNaviSize || pageNo > totalPage)) { // 둘 중 하나라도 만족하면 수행하지 않겠다
			if (reqPage == pageNo) {
				pageNavi += "<li class='on'>";
				pageNavi += "<a>" + pageNo + "</a>"; // 4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌
				pageNavi += "</li>";
			} else {
				pageNavi += "<li class=''>";
				pageNavi += "<a href='/shop/board/question/shopQuestion?reqPage=" + pageNo + "'>" + pageNo
						+ "</a>";
				pageNavi += "</li>";
			}
			pageNo++;
		}
		// 다음 버튼 생성
		if (pageNo <= totalPage) {
			pageNavi += "<li class='next arrow'>";
			pageNavi += "<a href='/shop/board/question/shopQuestion?reqPage=" + pageNo + "'>다음</a>";
			pageNavi += "</li>";
		}
		QuestionPageData pd = new QuestionPageData(list, pageNavi);
		return pd;
	}
	//1:1문의뷰
	public QuestionVO shopQuestionView(int questionsIndex) throws Exception {
		return shopBoardMapper.shopQuestionView(questionsIndex);
	}
	//1:1문의삭제
	public int shopQuestionDelete(int questionsIndex) throws Exception{
		return shopBoardMapper.shopQuestionDelete(questionsIndex);
	}
	//1:1인서트
	public int shopQuestionInsert(QuestionVO q) throws Exception{
		return shopBoardMapper.shopQuestionInsert(q);
	}
	//부동산 공지사항 검색
	public NoticePageData searchKeyword(int reqPage, SearchNoticeVO s) throws Exception {
		int numPerPage = 5;
		int totalCount = shopBoardMapper.titleCount(s);
		System.out.println("서비스 토탈 : "+totalCount);
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;;
		int start = (reqPage-1)*numPerPage+1;;
		int end = reqPage*numPerPage;
		int code=s.getCode();
		s.setStart(start);
		s.setEnd(end);
		ArrayList<NoticeVO> list = shopBoardMapper.searchKeywordTitle(s);
		System.out.println("서비스-"+list.size());
		String pageNavi = "";
		int pageNaviSize = 5;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		if(pageNo !=1) {
			pageNavi += "<li class='prev arrow'>";
			pageNavi += "<a href='/shop/board/shopBoardList?reqPage="+(pageNo-1)+"&keyword="+s.getKeyWord()+"'>이전</a>";
			pageNavi += "</li>";
		}
		//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
			if(reqPage == pageNo) {
				pageNavi += "<li class='on'>";
				pageNavi += "<a>"+pageNo+"</a>"; //4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌 
				pageNavi += "</li>";
			}else {
				pageNavi += "<li class=''>";
				pageNavi += "<a href='/shop/board/shopBoardList?reqPage="+pageNo+"&keyword="+s.getKeyWord()+"'>"+pageNo+"</a>";
				pageNavi += "</li>";
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			pageNavi += "<li class='next arrow'>";
			pageNavi +="<a href='/shop/board/shopBoardList?reqPage="+pageNo+"&keyword="+s.getKeyWord()+"'>다음</a>";
			pageNavi += "</li>";
		}
		NoticePageData pd = new NoticePageData(list,pageNavi);
		return pd;
	}
}
