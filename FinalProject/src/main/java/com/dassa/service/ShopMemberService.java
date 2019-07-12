package com.dassa.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.EmployeeMapper;
import com.dassa.vo.EmployeePageDate;
import com.dassa.vo.EmployeeVO;
import com.dassa.vo.NoticeVO;

@Service("shopMemberService")
public class ShopMemberService {
	@Resource(name="employeeMapper")
	private EmployeeMapper employeeMapper;
	
	public int memberInsert(EmployeeVO emp) throws Exception{
		return employeeMapper.memberInsert(emp);
	}
	public EmployeePageDate selectAll(int reqPage) throws Exception {
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = employeeMapper.totalCount();
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		int end = reqPage*numPerPage;
		System.out.println(start+"/"+end);
		ArrayList<EmployeeVO> list = employeeMapper.selectAllList(start,end);
		String pageNavi = "";
		int pageNaviSize = 5;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		//이전 버튼 생성
		if(pageNo !=1) {
			pageNavi += "<a class='btn' href='/manage/board/notice/noticeManageList?reqPage="+(pageNo-1)+"'>이전</a>";
		}
		//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
			if(reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>"+pageNo+"</span>"; //4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌 
			}else {
				pageNavi += "<a class='btn' href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			pageNavi +="<a class='btn' href='/manage/board/notice/noticeManageList?reqPage="+pageNo+"'>다음</a>";
		}
		EmployeePageDate epd = new EmployeePageDate(list,pageNavi);
		return epd;
	}
}
