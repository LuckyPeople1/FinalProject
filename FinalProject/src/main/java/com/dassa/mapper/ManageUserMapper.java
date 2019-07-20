package com.dassa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.web.bind.annotation.RequestParam;

import com.dassa.vo.SearchUserVO;
import com.dassa.vo.UserPageDataVO;
import com.dassa.vo.UserVO;

@MapperScan("manageUserMapper")
public interface ManageUserMapper {
	
	

	public List<UserVO> getUserSecssionList(String userType) throws Exception;

	public int deleteUser(int userIdx) throws Exception;

	public List<UserVO> getUserListAll();

	public List<UserVO> getAllApprobateList();
	
	

	public List<UserVO> getSearchList(SearchUserVO searchUserVO);

	public List<UserVO> getTypeApprobateList(String userType);

	public List<UserVO> getSearchUserList(SearchUserVO searchUserVO);

	

	/*										페이징											*/
	//전체 승인 페이지
	public int totalApprobateCount(SearchUserVO searchUserVO);
	public List<UserVO> selectAllApprobateList(SearchUserVO searchUserVO);
	//전체승인 검색
	public int totalSearchListCount(SearchUserVO searchUserVO);
	public List<UserVO> getSearchListCountList(SearchUserVO searchUserVO);
	//달력으로 찾기
	public int totalSearchUserListCount(SearchUserVO searchUserVO);
	public List<UserVO> getSearchDate(SearchUserVO searchUserVO);
	//각 페이지 회원 관리
	public int totalgetUserListCount(String userType);
	public List<UserVO> getUserList(SearchUserVO searchUserVO) throws Exception;
	//각 탈퇴 회원 관리
	public int totalUserSecListCount(String userType);
	public List<UserVO> getUserSecList(SearchUserVO searchUserVO);
	//체크박스
	public int totalgetTypeCheckApprobateList(SearchUserVO searchUserVO);
	public List<UserVO> getTypeCheckApprobateList(SearchUserVO searchUserVO);
}
