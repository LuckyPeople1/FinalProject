package com.dassa.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.NoticeMapper;
import com.dassa.vo.NoticePageData;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.SearchNoticeVO;

@Service("noticeService")
public class NoticeService {

	@Resource(name = "noticeMapper")
	private NoticeMapper noticeMapper;
	
	//관리자 공지사항 전체조회
	public NoticePageData selectAllList(int reqPage, int code) throws Exception {
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = noticeMapper.totalCount(code);
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		int end = reqPage*numPerPage;
		System.out.println(start+"/"+end);
		ArrayList<NoticeVO> list = noticeMapper.selectAllList(start,end,code);
		System.out.println("노티스서비스list-"+list);
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		//이전 버튼 생성
		
		if(pageNo !=1) {
			if(code==1) {	//부동산이면	
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/notice/noticeManageList?reqPage="+(pageNo-1)+"&code=1'>이전</a>";
				pageNavi += "</li>";
			}else if(code==2) {	//기사면
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/notice/noticeManageList?reqPage="+(pageNo-1)+"&code=2'>이전</a>";
				pageNavi += "</li>";

			}else {	//사용자면
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/notice/noticeManageList?reqPage="+(pageNo-1)+"'>이전</a>";
				pageNavi += "</li>";
			}
		}
		//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
			if(reqPage == pageNo) {
				pageNavi += "<li class='on'>";
				pageNavi += "<a>"+pageNo+"</a>"; //4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌 
				pageNavi += "</li>";
			}else {
				if(code==1) {	//부동산이면
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"&code=1'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}else if(code==2) {	//기사면
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"&code=2'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}else {	//사용자면
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			if(code==1) {//부동산이면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"&code=1'>다음</a>";
				pageNavi += "</li>";		
			}else if(code==2) {//기사면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"&code=2'>다음</a>";
				pageNavi += "</li>";		
			}else {//사용자면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"'>다음</a>";
				pageNavi += "</li>";		
			}
		}
		NoticePageData pd = new NoticePageData(list,pageNavi);
		return pd;
	}

	//수정하는 업데이트
	public int noticeUpdate(NoticeVO n) throws Exception {
		return noticeMapper.noticeUpdate(n);
	}
	//하나에 정보를 상세보기
	public NoticeVO noticeView(int noticeIndex) throws Exception {
		return noticeMapper.noticeView(noticeIndex);
	}
	//등록 인서트하기
	public int noticeInsert(NoticeVO n) throws Exception{
		return noticeMapper.noticeInsert(n);
	}
	//게시물삭제
	public int noticeDelete(int noticeIndex) throws Exception{
		return noticeMapper.noticeDelete(noticeIndex);
	}
	//공지사항검색
	public NoticePageData searchKeyword(int reqPage, SearchNoticeVO s) throws Exception{
		int numPerPage = 5;
		int totalCount = noticeMapper.titleCount(s);
		System.out.println("서비스 토탈 : "+totalCount);
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;;
		int start = (reqPage-1)*numPerPage+1;;
		int end = reqPage*numPerPage;
		int code=s.getCode();
		s.setStart(start);
		s.setEnd(end);
		ArrayList<NoticeVO> list = noticeMapper.searchKeywordTitle(s);
		System.out.println("서비스-"+list.size());
		String pageNavi = "";
		int pageNaviSize = 5;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		if(pageNo !=1) {
			if(code==1) {	//부동산이면		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/notice/noticeManageList?reqPage="+(pageNo-1)+"&code=1&keyWord="+s.getKeyWord()+"'>이전</a>";
				pageNavi += "</li>";
			}else if(code==2) {	//기사면
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/notice/noticeManageList?reqPage="+(pageNo-1)+"&code=2&keyWord="+s.getKeyWord()+"'>이전</a>";
				pageNavi += "</li>";
			}else {	//사용자면
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/notice/noticeManageList?reqPage="+(pageNo-1)+"&keyWord="+s.getKeyWord()+"'>이전</a>";
				pageNavi += "</li>";
			}
		}
		//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
			if(reqPage == pageNo) {
				pageNavi += "<li class='on'>";
				pageNavi += "<a>"+pageNo+"</a>"; //4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌 
				pageNavi += "</li>";
			}else {
				if(code==1) {	//부동산이면	
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"&code=1&keyWord="+s.getKeyWord()+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}else if(code==2) {	//기사면
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"&code=2&keyWord="+s.getKeyWord()+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}else {	//사용자면
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"&keyWord="+s.getKeyWord()+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			if(code==1) {//부동산이면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"&code=1&keyWord="+s.getKeyWord()+"'>다음</a>";
				pageNavi += "</li>";
			}else if(code==2) {//기사면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"&code=2&keyWord="+s.getKeyWord()+"'>다음</a>";
				pageNavi += "</li>";
			}else {//사용자면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"&keyWord="+s.getKeyWord()+"'>다음</a>";
				pageNavi += "</li>";
			}
		}
		NoticePageData pd = new NoticePageData(list,pageNavi);
		return pd;
	}

}
