package com.dassa.service;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.ManageUserMapper;
import com.dassa.vo.SearchUserVO;
import com.dassa.vo.UserPageDataVO;
import com.dassa.vo.UserVO;

@Service("ManageUserService")
public class ManageUserService<UserPageData> {
	
	@Resource(name="manageUserMapper")
	private ManageUserMapper manageUserMapper;
	
	
	
	
	
	public int deleteUser(int userIdx) throws Exception {
		return manageUserMapper.deleteUser(userIdx);
	}

	public List<UserVO> getUserListAll() {
		return manageUserMapper.getUserListAll();
	}

	public List<UserVO> getAllApprobateList() {
		return manageUserMapper.getAllApprobateList();
	}
	
	public List<UserVO> getTypeCheckApprobateList(SearchUserVO searchUserVO){
		return manageUserMapper.getTypeCheckApprobateList(searchUserVO);
	}

	public List<UserVO> getSearchList(SearchUserVO searchUserVO) {
		return manageUserMapper.getSearchList(searchUserVO);
	}

	public List<UserVO> getTypeApprobateList(String userType) {
		return manageUserMapper.getTypeApprobateList(userType);
	}

	public List<UserVO> getSearchUserList(SearchUserVO searchUserVO) {
		return manageUserMapper.getSearchUserList(searchUserVO);
	}
	
	
	
	
	
	
	
	
	
	
	//각 관리 페이지
	public UserPageDataVO getUserList(int reqPage, String userType) throws Exception {
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = manageUserMapper.totalgetUserListCount(userType);
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int startPage = (reqPage-1)*numPerPage +1;
		int endPage = reqPage*numPerPage;
		SearchUserVO searchUserVO = new SearchUserVO();
		searchUserVO.setUserType(userType);
		searchUserVO.setStartPage(startPage);
		searchUserVO.setEndPage(endPage);
		List<UserVO> list = manageUserMapper.getUserList(searchUserVO);
		String status = list.iterator().next().getStatus();
		userType = list.iterator().next().getUserType();
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		
		//버튼 생성
		pageNavi = Paging(reqPage, pageNo, pageNavi, pageNaviSize, totalPage, status, userType);
		
		UserPageDataVO pd = new UserPageDataVO(list,pageNavi);
		return pd;
	}
	
	public UserPageDataVO getUserSecssionList(int reqPage, String userType) throws Exception {
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = manageUserMapper.totalUserSecListCount(userType);
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int startPage = (reqPage-1)*numPerPage +1;
		int endPage = reqPage*numPerPage;
		SearchUserVO searchUserVO = new SearchUserVO();
		searchUserVO.setUserType(userType);
		searchUserVO.setStartPage(startPage);
		searchUserVO.setEndPage(endPage);
		List<UserVO> list = manageUserMapper.getUserSecList(searchUserVO);
		String status = "3";
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		
		//버튼 생성
		pageNavi = Paging(reqPage, pageNo, pageNavi, pageNaviSize, totalPage, status, userType);
		
		UserPageDataVO pd = new UserPageDataVO(list,pageNavi);
		return pd;
	}

	//전체 승인 페이지 페이징
	public UserPageDataVO searchAllApproPageData(int reqPage, String userType) throws Exception{
		SearchUserVO searchUserVO = new SearchUserVO();
		searchUserVO.setUserType(userType);
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		System.out.println("service : "+userType);
		int totalCount = manageUserMapper.totalApprobateCount(searchUserVO);
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int startPage = (reqPage-1)*numPerPage +1;
		int endPage = reqPage*numPerPage;
		
		searchUserVO.setStartPage(startPage);
		searchUserVO.setEndPage(endPage);
		
		List<UserVO> list = manageUserMapper.selectAllApprobateList(searchUserVO);
		String status = "2";
		
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		
		//버튼 생성
		pageNavi = Paging(reqPage, pageNo, pageNavi, pageNaviSize, totalPage, status, userType);
		
		UserPageDataVO pd = new UserPageDataVO(list,pageNavi);
		return pd;
	}

	//승인전용 페이지 및 각 관리페이지 검색 
	public UserPageDataVO getSearchApproPageData(int reqPage, SearchUserVO searchUserVO) {
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = manageUserMapper.totalSearchListCount(searchUserVO);
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int startPage = (reqPage-1)*numPerPage +1;
		int endPage = reqPage*numPerPage;
		searchUserVO.setStartPage(startPage);
		searchUserVO.setEndPage(endPage);
		List<UserVO> list = manageUserMapper.getSearchListCountList(searchUserVO);
		String status = searchUserVO.getStatus();
		String userType = searchUserVO.getUserType();
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		
		//버튼 생성
		pageNavi = Paging(reqPage, pageNo, pageNavi, pageNaviSize, totalPage, status, userType);
		
		UserPageDataVO pd = new UserPageDataVO(list,pageNavi);
		return pd;
	}
	
	//달력으로 찾기
	public UserPageDataVO getSearchDate(int reqPage, SearchUserVO searchUserVO) {
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = manageUserMapper.totalSearchUserListCount(searchUserVO);
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int startPage = (reqPage-1)*numPerPage +1;
		int endPage = reqPage*numPerPage;
		searchUserVO.setStartPage(startPage);
		searchUserVO.setEndPage(endPage);
		List<UserVO> list = manageUserMapper.getSearchDate(searchUserVO);
		String status = searchUserVO.getStatus();
		String userType = searchUserVO.getUserType();
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		
		//버튼 생성
		pageNavi = Paging(reqPage, pageNo, pageNavi, pageNaviSize, totalPage, status, userType);
		
		UserPageDataVO pd = new UserPageDataVO(list,pageNavi);
		return pd; 
	}
	
	
	private String Paging(int reqPage, int pageNo, String pageNavi, int pageNaviSize, int totalPage, String status, String userType) {
		
		System.out.println("Paging status: "+status);
		System.out.println("Paging userType: "+userType);
		if(userType == null && status.equals("2")) {
			//전체 승인
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/userApprobateList?reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userApprobateList?reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userApprobateList?reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/userApprobateList?reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("1") && userType.equals("1")  ) {
			//운송기사
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/userAllList?userType=1&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userAllList?userType=1&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userAllList?userType=1&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/userAllList?userType=1&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("1") && userType.equals("2")) {
			//부동산
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/userAllList?userType=2&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userAllList?userType=2&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userAllList?userType=2&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/userAllList?userType=2&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("1") && userType.equals("3")) {
			//일반
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/userAllList?userType=3&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userAllList?userType=3&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/userAllList?userType=3&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/userAllList?userType=3&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("2") && userType.equals("1")){
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/all/allApprobate?userType=1&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allApprobate?userType=1&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allApprobate?userType=1&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/all/allApprobate?userType=1&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("2") && userType.equals("2")){
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/all/allApprobate?userType=2&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allApprobate?userType=2&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allApprobate?userType=2&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/all/allApprobate?userType=2&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("2") && userType.equals("3")){
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/all/allApprobate?userType=3&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allApprobate?userType=3&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allApprobate?userType=3&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/all/allApprobate?userType=3&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("3") && userType.equals("1")){
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/all/allSecssion?userType=1&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allSecssion?userType=1&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allSecssion?userType=1&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/all/allSecssion?userType=1&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("3") && userType.equals("2")){
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/all/allSecssion?userType=2&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allSecssion?userType=2&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allSecssion?userType=2&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/all/allSecssion?userType=2&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}else if(status.equals("3") && userType.equals("3")){
			//전체 승인
			if(pageNo !=1) {		
				pageNavi += "<li class='prev arrow'>";
				pageNavi += "<a href='/userManage/all/allSecssion?userType=3&reqPage="+(pageNo-1)+"'></a>";
				pageNavi += "</li>";
			}
			//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
			int i = 1;
			while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
				if(reqPage == pageNo) {
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allSecssion?userType=3&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>"; 
				}else {	
					pageNavi += "<li class='on'>";
					pageNavi += "<a href='/userManage/all/allSecssion?userType=3&reqPage="+pageNo+"'>"+pageNo+"</a>";
					pageNavi += "</li>";
				}
				pageNo++;
			}
			//다음 버튼 생성
			if(pageNo <= totalPage) {
				pageNavi += "<li class='next arrow'>";
				pageNavi += "<a href='/userManage/all/allSecssion?userType=3&reqPage="+pageNo+"'></a>";
				pageNavi += "</li>";
			}
		}
		return pageNavi;
	}
	
	
}


