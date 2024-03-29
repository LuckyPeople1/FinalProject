package com.dassa.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.QuestionMapper;
import com.dassa.vo.QuestionPageData;
import com.dassa.vo.QuestionVO;
import com.dassa.vo.SearchQuestionVO;

@Service("questionService")
public class QuestionService {
	@Resource(name = "questionMapper")
	private QuestionMapper questionMapper;

	// 관리자 1:1문의 전체조회
	public QuestionPageData selectAllList(int reqPage, int code) throws Exception {
		// 페이지 당 게시물 수
		int numPerPage = 5;
		// 총 게시물 수 구하기
		int totalCount = questionMapper.totalCount(code);
		// 총 페이지 수 구하기
		int totalPage = (totalCount % numPerPage == 0) ? (totalCount / numPerPage) : (totalCount / numPerPage) + 1;
		// 요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		// 시작 게시물 번호
		int start = (reqPage - 1) * numPerPage + 1;
		int end = reqPage * numPerPage;
		System.out.println(start + "/" + end);
		ArrayList<QuestionVO> list = questionMapper.selectAllList(start, end,code);
		System.out.println("question서비스list-" + list);
		// 페이지 네비 작성
		String pageNavi = "";
		// 페이지 네비의 수
		int pageNaviSize = 5;
		// 페이지 번호
		int pageNo = ((reqPage - 1) / pageNaviSize) * pageNaviSize + 1;
		// 이전 버튼 생성
		if (pageNo != 1) {
			if(code==1) {
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/question/questionManageList?reqPage=" + (pageNo - 1) + "&code=1'>이전</a>";
				pageNavi += "</li>";
			}else if(code==2){
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/question/questionManageList?reqPage=" + (pageNo - 1) + "&code=2'>이전</a>";
				pageNavi += "</li>";
			}else {				
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/question/questionManageList?reqPage=" + (pageNo - 1) + "'>이전</a>";
				pageNavi += "</li>";
			}
		}
		// 페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while (!(i++ > pageNaviSize || pageNo > totalPage)) { // 둘 중 하나라도 만족하면 수행하지 않겠다
			if (reqPage == pageNo) {
				pageNavi += "<li class='on'>";
				pageNavi += "<a>" + pageNo + "</a>"; // 4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌
				pageNavi += "</li>";
			} else {
				if(code==1) {
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/question/questionManageList?reqPage=" + pageNo + "&code=1'>" + pageNo + "</a>";
					pageNavi += "</li>";
				}else if(code==2) {
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/question/questionManageList?reqPage=" + pageNo + "&code=2'>" + pageNo + "</a>";
					pageNavi += "</li>";
				}else {					
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/question/questionManageList?reqPage=" + pageNo + "'>" + pageNo + "</a>";
					pageNavi += "</li>";
				}
			}
			pageNo++;
		}
		// 다음 버튼 생성
		if (pageNo <= totalPage) {
			if(code==1) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/manage/board/question/questionManageList?reqPage=" + pageNo + "&code=1'>다음</a>";
				pageNavi += "</li>";
			}else if(code==2) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/manage/board/question/questionManageList?reqPage=" + pageNo + "&code=2'>다음</a>";
				pageNavi += "</li>";
			}else {				
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/manage/board/question/questionManageList?reqPage=" + pageNo + "'>다음</a>";
				pageNavi += "</li>";
			}
		}
		QuestionPageData pd = new QuestionPageData(list, pageNavi);
		return pd;
	}
	
	//1:1문의뷰
	public QuestionVO questionView(int questionsIndex) throws Exception {
		return questionMapper.questionView(questionsIndex);
	}
	
	//1:1문의답변등록
	public int questionUpdate(QuestionVO q) throws Exception{
		System.out.println("서비스업데이트-"+q);
		return questionMapper.questionUpdate(q);
	}

	//1:1삭제
	public int questionManageDelete(int questionsIndex) throws Exception{
		return questionMapper.questionManageDelete(questionsIndex);
	}

	public QuestionPageData searchKeyword(int reqPage, SearchQuestionVO s) throws Exception{
		int numPerPage = 5;
		int totalCount = questionMapper.titleCount(s);
		System.out.println("서비스 토탈 : "+totalCount);
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;;
		int start = (reqPage-1)*numPerPage+1;;
		int end = reqPage*numPerPage;
		int code=s.getCode();
		s.setStart(start);
		s.setEnd(end);
		ArrayList<QuestionVO> list = questionMapper.searchKeywordTitle(s);
		System.out.println("서비스-"+list.size());
		String pageNavi = "";
		int pageNaviSize = 5;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		if(pageNo !=1) {
			if(code==1) {	//부동산이면
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/question/searchKeyword?reqPage="+(pageNo-1)+"&code=1&keyWord="+s.getKeyWord()+"'>이전</a>";
				pageNavi += "</li>";
			}else if(code==2) {	//기사면
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/question/searchKeyword?reqPage="+(pageNo-1)+"&code=2&keyWord="+s.getKeyWord()+"'>이전</a>";
				pageNavi += "</li>";
			}else {	//사용자면
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/manage/board/question/searchKeyword?reqPage="+(pageNo-1)+"&keyword="+s.getKeyWord()+"'>이전</a>";
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
					pageNavi += "<a href='/manage/board/question/searchKeyword?reqPage="+pageNo+"&code=1&keyWord="+s.getKeyWord()+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}else if(code==2) {	//기사면
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/question/searchKeyword?reqPage="+pageNo+"&code=2&keyWord="+s.getKeyWord()+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}else {	//사용자면
					pageNavi += "<li class=''>";
					pageNavi += "<a href='/manage/board/question/searchKeyword?reqPage="+pageNo+"&keyWord="+s.getKeyWord()+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			if(code==1) {//부동산이면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/question/searchKeyword?reqPage="+pageNo+"&code=1&keyword="+s.getKeyWord()+"'>다음</a>";
				pageNavi += "</li>";
			}else if(code==2) {//기사면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/question/searchKeyword?reqPage="+pageNo+"&code=2&keyword="+s.getKeyWord()+"'>다음</a>";
				pageNavi += "</li>";
			}else {//사용자면
				pageNavi += "<li class='next arrow'>";
				pageNavi +="<a href='/manage/board/question/searchKeyword?reqPage="+pageNo+"&keyword="+s.getKeyWord()+"'>다음</a>";
				pageNavi += "</li>";
			}
		}
		QuestionPageData pd = new QuestionPageData(list,pageNavi);
		return pd;
	}
	
}