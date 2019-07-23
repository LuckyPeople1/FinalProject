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
public class ManageUserService {
	
	@Resource(name="manageUserMapper")
	private ManageUserMapper manageUserMapper;

	/*public List<UserVO> getUserListAll() {
		return manageUserMapper.getUserListAll();
	}

	public List<UserVO> getAllApprobateList() {
		return manageUserMapper.getAllApprobateList();
	}

	public List<UserVO> getSearchList(SearchUserVO searchUserVO) {
		return manageUserMapper.getSearchList(searchUserVO);
	}

	public List<UserVO> getTypeApprobateList(String userType) {
		return manageUserMapper.getTypeApprobateList(userType);
	}

	public List<UserVO> getSearchUserList(SearchUserVO searchUserVO) {
		return manageUserMapper.getSearchUserList(searchUserVO);
	}*/
	
	
	
	
	
	
	
	
	
	
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
		pageNavi = UserPageDataVO.Paging(reqPage, pageNo, pageNavi, pageNaviSize, totalPage, status, userType);
		
		UserPageDataVO pd = new UserPageDataVO(list,pageNavi);
		return pd;
	}
	
	//탈퇴 회원 관리
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
		pageNavi = UserPageDataVO.Paging(reqPage, pageNo, pageNavi, pageNaviSize, totalPage, status, userType);
		
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
		pageNavi = UserPageDataVO.Paging(reqPage, pageNo, pageNavi, pageNaviSize, totalPage, status, userType);
		
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
		String userId = searchUserVO.getUserType1();
		String userName = searchUserVO.getUserType2();
		String status = searchUserVO.getStatus();
		String userType = searchUserVO.getUserType();
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		
		//버튼 생성
		pageNavi = UserPageDataVO.Paging(reqPage, pageNo, pageNavi, pageNaviSize, totalPage, status, userType);
		
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
		pageNavi = UserPageDataVO.Paging(reqPage, pageNo, pageNavi, pageNaviSize, totalPage, status, userType);
		
		UserPageDataVO pd = new UserPageDataVO(list,pageNavi);
		return pd; 
	}
	
	//체크박스
	public UserPageDataVO getTypeCheckApprobateList(int reqPage, SearchUserVO searchUserVO){
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = manageUserMapper.totalgetTypeCheckApprobateList(searchUserVO);
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int startPage = (reqPage-1)*numPerPage +1;
		int endPage = reqPage*numPerPage;
		searchUserVO.setStartPage(startPage);
		searchUserVO.setEndPage(endPage);
		List<UserVO> list = manageUserMapper.getTypeCheckApprobateList(searchUserVO);
		String status = "2";
		String userType1 = "1";
		String userType2 = "2";
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		String userType = null;
		//버튼 생성
		pageNavi = UserPageDataVO.checkPaging(reqPage, pageNo, pageNavi, pageNaviSize, totalPage, status,userType, userType1, userType2);
		
		UserPageDataVO pd = new UserPageDataVO(list,pageNavi);
		return pd;
		
		
	}
	
	//회원 탈퇴
	public int deleteUser(int userIdx) throws Exception {
		return manageUserMapper.deleteUser(userIdx);
	}
	//상세정보
	public UserVO getUserDetail(UserVO userVO) {
		return manageUserMapper.getUserDetail(userVO);
	}
	//가입승인
	public int getApprobateUser(UserVO userVO) {
		return manageUserMapper.getApprobateUser(userVO);
	}

	public int delUser(int userIdx) {
		return manageUserMapper.delUser(userIdx);
	}
	
}


