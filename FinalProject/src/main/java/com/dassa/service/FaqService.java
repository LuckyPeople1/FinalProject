package com.dassa.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.FaqMapper;
import com.dassa.vo.FaqPageData;
import com.dassa.vo.FaqVO;
import com.dassa.vo.NoticePageData;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.SearchNoticeVO;
@Service("faqService")
public class FaqService {

	@Resource(name="faqMapper")
	private FaqMapper faqMapper;
	
	public FaqPageData selectAllList(int reqPage, int code) throws Exception {
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = faqMapper.totalCount(code);
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		int end = reqPage*numPerPage;
		System.out.println(start+"/"+end);
		ArrayList<FaqVO> list = faqMapper.selectAllList(start,end,code);
		System.out.println("서비스list-"+list);
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
				pageNavi += "<a href='/manage/board/faq/faqManageList?reqPage="+(pageNo-1)+"&code=1'>이전</a>";
				pageNavi += "</li>";
			}else if(code==2) {		//기사면
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/faq/faqManageList?reqPage="+(pageNo-1)+"&code=2'>이전</a>";
				pageNavi += "</li>";
			}else {				//회원문의면
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/faq/faqManageList?reqPage="+(pageNo-1)+"'>이전</a>";
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
					pageNavi += "<a href='/manage/board/faq/faqManageList?reqPage="+pageNo+"&code=1'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}else if(code==2) {		//기사면
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/faq/faqManageList?reqPage="+pageNo+"&code=2'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}else {			//회원문의면
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/faq/faqManageList?reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			if(code==1) {	//부동산이면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/faq/faqManageList?reqPage="+pageNo+"&code=1'>다음</a>";
				pageNavi += "</li>";
			}else if(code==2) {	//기사면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/faq/faqManageList?reqPage="+pageNo+"&code=2'>다음</a>";
				pageNavi += "</li>";
			}else {			//회원문의면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/faq/faqManageList?reqPage="+pageNo+"'>다음</a>";
				pageNavi += "</li>";
			}
		}
		FaqPageData pd = new FaqPageData(list,pageNavi);
		System.out.println("서비스pd-"+pd);
		return pd;
	}
	//하나에 정보를 상세보기
	public FaqVO faqView(int faqIndex) throws Exception {
		return faqMapper.faqView(faqIndex);
	}
	//업데이트
	public int faqUpdate(FaqVO f) throws Exception{
		System.out.println("서비스업데이트-"+f);
		return faqMapper.faqUpdate(f);
	}
	//인서트
	public int faqInsert(FaqVO f) throws Exception{
		return faqMapper.faqInsert(f);
	}
	//삭제
	public int faqDelete(int faqIndex) throws Exception {
		return faqMapper.faqDelete(faqIndex);
	}
	//faq검색
	public FaqPageData searchKeyword(int reqPage, SearchNoticeVO s) throws Exception {
		int numPerPage = 5;
		int totalCount = faqMapper.titleCount(s);
		System.out.println("서비스 토탈 : "+totalCount);
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;;
		int start = (reqPage-1)*numPerPage+1;;
		int end = reqPage*numPerPage;
		int code=s.getCode();
		s.setStart(start);
		s.setEnd(end);
		ArrayList<FaqVO> list = faqMapper.searchKeywordTitle(s);
		System.out.println("서비스-"+list.size());
		String pageNavi = "";
		int pageNaviSize = 5;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		if(pageNo !=1) {
			if(code==1) {	//부동산이면			
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/faq/faqManageList?reqPage="+(pageNo-1)+"&code=1&keyword="+s.getKeyWord()+"'>이전</a>";
				pageNavi += "</li>";
			}else if(code==2) {	//기사면
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/faq/faqManageList?reqPage="+(pageNo-1)+"&code=2&keyword="+s.getKeyWord()+"'>이전</a>";
				pageNavi += "</li>";
			}else {	//사용자면
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/faq/faqManageList?reqPage="+(pageNo-1)+"&keyword="+s.getKeyWord()+"'>이전</a>";
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
					pageNavi += "<a href='/manage/board/faq/faqManageList?reqPage="+pageNo+"&code=1&keyword="+s.getKeyWord()+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}else if(code==2) {	//기사면
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/faq/faqManageList?reqPage="+pageNo+"&code=2&keyword="+s.getKeyWord()+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}else {	//사용자면
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/faq/faqManageList?reqPage="+pageNo+"&keyword="+s.getKeyWord()+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			if(code==1) {//부동산이면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/faq/faqManageList?reqPage="+pageNo+"&code=1&keyword="+s.getKeyWord()+"'>다음</a>";
				pageNavi += "</li>";
			}else if(code==2) {//기사면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/faq/faqManageList?reqPage="+pageNo+"&code=2&keyword="+s.getKeyWord()+"'>다음</a>";
				pageNavi += "</li>";
			}else {//사용자면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/faq/faqManageList?reqPage="+pageNo+"&keyword="+s.getKeyWord()+"'>다음</a>";
				pageNavi += "</li>";
			}
		}
		FaqPageData pd = new FaqPageData(list,pageNavi);
		return pd;
	}
	
}
