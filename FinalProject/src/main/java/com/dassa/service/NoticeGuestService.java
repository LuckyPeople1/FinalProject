package com.dassa.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.NoticeGuestMapper;
import com.dassa.vo.FaqPageData;
import com.dassa.vo.FaqVO;
import com.dassa.vo.NoticePageData;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.QuestionVO;
@Service("noticeGuestService")

public class NoticeGuestService {

	@Resource(name="noticeGuestMapper") 
	private NoticeGuestMapper noticeGuestMapper;
	
	public NoticePageData selectAllList(int reqPage) throws Exception{
		//페이지 당 게시물 수
		int numPerPage = 10;
		//총 게시물 수 구하기
		int totalCount = noticeGuestMapper.totalCount();
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		int end = reqPage*numPerPage;
		System.out.println(start+"/"+end);
		ArrayList<NoticeVO> list = noticeGuestMapper.selectAllList(start,end);
		System.out.println("guest노티스서비스list-"+list);
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		//이전 버튼 생성
		if(pageNo !=1) {
				pageNavi += "<a class='btn' href='/guest/notice/noticeList?reqPage="+(pageNo-1)+"'>이전</a>";
		}
		//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
			if(reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>"+pageNo+"</span>"; //4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌 
			}else {
				pageNavi += "<a class='btn' href='/guest/notice/noticeList?reqPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			pageNavi +="<a class='btn' href='/guest/notice/noticeList?reqPage="+pageNo+"'>다음</a>";
		}
		NoticePageData pd = new NoticePageData(list,pageNavi);
		return pd;
	}
	
	//사용자 페이지 상세보기
	public NoticeVO noticeView(int noticeIndex) throws Exception {
		return noticeGuestMapper.noticeView(noticeIndex);
	}

	//사용자 FAQ 전체리스트
	public FaqPageData selectFaqList(int reqPage) throws Exception {
		//페이지 당 게시물 수
		int numPerPage = 10;
		//총 게시물 수 구하기
		int totalCount = noticeGuestMapper.totalCount1();
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		// 요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		// 시작 게시물 번호
		int start = (reqPage - 1) * numPerPage + 1;
		int end = reqPage * numPerPage;
		ArrayList<FaqVO> list = noticeGuestMapper.selectFaqList(start, end);
		// 페이지 네비 작성
		String pageNavi = "";
		// 페이지 네비의 수
		int pageNaviSize = 5;
		// 페이지 번호
		int pageNo = ((reqPage - 1) / pageNaviSize) * pageNaviSize + 1;
		// 이전 버튼 생성
		if (pageNo != 1) { 
			pageNavi += "<a class='btn' href='/guest/notice/faqList?reqPage=" + (pageNo - 1) + "'>이전</a>";
		}
		// 페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while (!(i++ > pageNaviSize || pageNo > totalPage)) { // 둘 중 하나라도 만족하면 수행하지 않겠다
			if (reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>" + pageNo + "</span>"; // 4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌
			} else {
				pageNavi += "<a class='btn' href='/guest/notice/faqList?reqPage=" + pageNo + "'>" + pageNo + "</a>";
			}
			pageNo++;
		}
		// 다음 버튼 생성
		if (pageNo <= totalPage) {
			pageNavi += "<a class='btn' href='/guest/notice/faqList?reqPage=" + pageNo + "'>다음</a>";
		}
		FaqPageData fpd = new FaqPageData(list, pageNavi);
		return fpd;
	}

	public int questionInsert(QuestionVO q) throws Exception {
		return noticeGuestMapper.questionInsert(q);
	}

}
