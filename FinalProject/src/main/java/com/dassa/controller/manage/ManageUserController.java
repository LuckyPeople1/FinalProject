package com.dassa.controller.manage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dassa.service.ManageUserService;
import com.dassa.vo.SearchUserVO;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/userManage")
public class ManageUserController {
	
	@Resource
	private ManageUserService manageUserService;
	
	//전체 승인관리
	@RequestMapping("/userApprobateList")
	public String UserApprobateList(Model model) throws Exception{
		
		List<UserVO> list = manageUserService.getAllApprobateList();
		model.addAttribute("list", list);
		model.addAttribute("status", "2");
		return "manage/user/user/allApprobate";
	}
	
	// userType에 따른 회원 리스트 뿌려주기
	@RequestMapping("/userAllList")
	public String UserAllList(Model model, String userType) throws Exception {
		String view = null;
		model.addAttribute("userType",userType);
		model.addAttribute("status", "1");
		if(userType.equals("1")) {
			List<UserVO> list = manageUserService.getUserList(userType);
			model.addAttribute("list", list);
			view = "manage/user/driver/driverAllList";
		}else if(userType.equals("2")) {
			List<UserVO> list = manageUserService.getUserList(userType);
			model.addAttribute("list", list);
			view = "manage/user/shop/shopAllList";
		}else {
			List<UserVO> list = manageUserService.getUserList(userType);
			model.addAttribute("list", list);
			view = "manage/user/user/userAllList";
		}
		return view;
	}
	
	//userType에 따른 승인관리
	@RequestMapping("/all/allApprobate")
	public String AllApprobateList(Model model, String userType) throws Exception {
		String view = null;
		model.addAttribute("userType", userType);
		model.addAttribute("status", "2");
		if(userType.equals("1")) {
			List<UserVO> list = manageUserService.getTypeApprobateList(userType);
			model.addAttribute("list", list);
			view = "manage/user/driver/driverApprobateList";
		}else {
			List<UserVO> list = manageUserService.getTypeApprobateList(userType);
			model.addAttribute("list", list);
			model.addAttribute("status", list.iterator().next().getStatus());
			view = "manage/user/shop/shopApprobateList";
		}
		
		return view;
	}
	
	//탈퇴회원 관리
	@RequestMapping("/all/allSecssion")
	public String UserSecssionList(Model model, String userType) throws Exception {
		String view = null;
		model.addAttribute("userType", userType);
		model.addAttribute("status", "3");
		if(userType.equals("1")) {
			//기사 탈퇴
			List<UserVO> list = manageUserService.getUserSecssionList(userType);
			model.addAttribute("list", list);
			view = "manage/user/driver/driverSecssionList";
		}else if(userType.equals("2")) {
			//부동산 탈퇴
			List<UserVO> list = manageUserService.getUserSecssionList(userType);
			model.addAttribute("list", list);
			view = "manage/user/shop/shopSecssionList";
		}else {
			List<UserVO> list = manageUserService.getUserSecssionList(userType);
			model.addAttribute("list", list);
			view = "manage/user/user/userSecssionList";
		}
		return view;
	}	
	
	//회원 관리
	@RequestMapping("/userList")
	public Object CommonUserListAll(Map<String,Object> map) throws Exception {
		List<UserVO> list = manageUserService.getUserListAll();
		Map<String, Object> retVal = new HashMap<String, Object>();
		retVal.put("list", list);
		return retVal;
	}
	
	//ajax로 유저 리스트 받아오기
	@RequestMapping("/userListAll")
	@ResponseBody
	public Object UserListAll(Map<String,Object> map) throws Exception {
		List<UserVO> list = manageUserService.getUserListAll();
		Map<String, Object> retVal = new HashMap<String, Object>();
		retVal.put("list", list);
		return retVal;
	}
	
	//ajax로 체크한 유저 받아오기 받아오기
	@RequestMapping("/userCheckList")
	@ResponseBody
	public Object UserCheckList(Map<String,Object> map, String type) throws Exception {
		SearchUserVO searchUserVO = null;
		String[] uType = type.split(",");
		String userType = null;
		String userType1 = null;
		String userType2 = null;
		
		if(uType.length == 1){
			//type이 한개 경우
			searchUserVO = new SearchUserVO();
			if(type.equals("일반회원")) {
				userType = "3";
			}else if(type.equals("운송기사")) {
				userType = "1";
			}else if(type.equals("부동산")){
				userType = "2";
			}
			userType1 = userType;
			searchUserVO.setUserType1(userType1);
			Map<String, Object> retVal = new HashMap<String, Object>();
			List<UserVO> list = manageUserService.getTypeCheckApprobateList(searchUserVO);
			retVal.put("list", list);
			return retVal;
		}else if(uType.length ==2) {
			//type이 두개 경우
			searchUserVO = new SearchUserVO();
			userType1 = uType[0];
			userType2 = uType[1];
			if(userType1.equals("일반회원")) {
				userType1 = "3";
			}else if(userType1.equals("운송기사")) {
				userType1 = "1";
			}else if(userType1.equals("부동산")){
				userType1 = "2";
			}
			searchUserVO.setUserType1(userType1);
			
			if(userType2.equals("일반회원")) {
				userType2 = "3";
			}else if(userType2.equals("운송기사")) {
				userType2 = "1";
			}else if(userType2.equals("부동산")){
				userType2 = "2";
			}
			searchUserVO.setUserType2(userType2);
			Map<String, Object> retVal = new HashMap<String, Object>();
			List<UserVO> list = manageUserService.getTypeCheckApprobateList(searchUserVO);
			retVal.put("list", list);
			return retVal;
		}else {
			//type이 세개 경우
			Map<String, Object> retVal = new HashMap<String, Object>();
			List<UserVO> list = manageUserService.getAllApprobateList();
			retVal.put("list", list);
			return retVal;
		}
		
		
	}
	
	//Type별 전체회원 리스트 뿌리기 ajax
	@RequestMapping("/typeUserList")
	@ResponseBody
	public Object TypeUserList(Map<String,Object> map, String userType, String status) throws Exception {
		SearchUserVO searchUserVO = new SearchUserVO();
		searchUserVO.setUserType(userType);
		searchUserVO.setStatus(status);
		Map<String, Object> retVal = new HashMap<String, Object>();
		List<UserVO> list = manageUserService.getSearchUserList(searchUserVO);
		retVal.put("list", list);
		return retVal;
		
	}
	
	//전체 승인 페이지 ajax
	@RequestMapping("/approbate")
	@ResponseBody
	public Object Approbate(Map<String,Object> map) throws Exception {	
		Map<String, Object> retVal = new HashMap<String, Object>();
		List<UserVO> list = manageUserService.getAllApprobateList();
		retVal.put("list", list);
		return retVal;
	}
	
	//이전 페이지 url 저장
	@RequestMapping(value="/reLoad")
	public String RedirectLogin(Model model, HttpServletRequest request, int userIdx ) {
		String referer = request.getHeader("Referer");
		model.addAttribute("referer", referer);
		model.addAttribute("userIdx", userIdx);
		return "redirect:/userManage/deleteUser";
	}
	
	//회원 탈퇴
	@RequestMapping("/deleteUser")
	public String CommonDeleteUser(Model model, String referer , int userIdx) throws Exception {
		int result = manageUserService.deleteUser(userIdx);
		if(result > 0) {
			model.addAttribute("msg", "회원 탈퇴가 되었습니다.");
			model.addAttribute("loc", referer);
			return "guest/common/msg";
		}else {
			model.addAttribute("msg", "회원 탈퇴 실패하였습니다.");
			model.addAttribute("loc", referer);
			return "guest/common/msg";
		}
	}
	
	//검색
	@RequestMapping("/search")
	@ResponseBody
	public Map<String, Object> SearchUser(Model model, @RequestParam String searchType, String searchWord, String userType,String status) {
		SearchUserVO searchUserVO = new SearchUserVO();
		searchUserVO.setSearchType(searchType);
		searchUserVO.setSearchWord(searchWord);
		if(!userType.equals("") && !userType.equals("null")) {
			searchUserVO.setUserType(userType);
		}
		searchUserVO.setStatus(status);
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		if(searchType.equals("1") && !searchWord.equals("")) {
			//아이디 일때
			List<UserVO> list = manageUserService.getSearchList(searchUserVO);
			retVal.put("list", list);
			
		}else if(searchType.equals("2") && !searchWord.equals("")){
			//이름 일때
			List<UserVO> list = manageUserService.getSearchList(searchUserVO);
			retVal.put("list", list);
			
		}else {
			retVal.put("list", "");
		}
		return retVal;
	}
	
	//승인검색
	@RequestMapping("/searchApprobate")
	@ResponseBody
	public Map<String, Object> SearchApprobateUser(Model model, @RequestParam String searchType, String searchWord, String status) {
		SearchUserVO searchUserVO = new SearchUserVO();
		searchUserVO.setSearchType(searchType);
		searchUserVO.setSearchWord(searchWord);
		searchUserVO.setStatus(status);
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		if(searchType.equals("1") && !searchWord.equals("")) {
			//아이디 일때
			List<UserVO> list = manageUserService.getSearchList(searchUserVO);
			retVal.put("list", list);
			
		}else if(searchType.equals("2") && !searchWord.equals("")){
			//이름 일때
			List<UserVO> list = manageUserService.getSearchList(searchUserVO);
			retVal.put("list", list);
			
		}else {
			retVal.put("list", "");
		}
		return retVal;
	} 
	
	//달력으로 찾기
	@RequestMapping("/searchDate")
	@ResponseBody
	public Map<String, Object> SearchDate(Model model, @RequestParam String status, String endDate, String startDate, String userType){
		SearchUserVO searchUserVO = new SearchUserVO();
		searchUserVO.setStatus(status);
		searchUserVO.setEndDate(endDate);
		searchUserVO.setStartDate(startDate);
		searchUserVO.setUserType(userType);
		Map<String, Object> retVal = new HashMap<String, Object>();
		List<UserVO> list = manageUserService.getSearchDate(searchUserVO);
		retVal.put("list", list);
		return retVal;
	}
	
	//달력으로 찾기
	@RequestMapping("/searchApprobateDate")
	@ResponseBody
	public Map<String, Object> SearchApprobateDate(Model model, @RequestParam String status, String endDate, String startDate){
		SearchUserVO searchUserVO = new SearchUserVO();
		searchUserVO.setStatus(status);
		searchUserVO.setEndDate(endDate);
		searchUserVO.setStartDate(startDate);
		Map<String, Object> retVal = new HashMap<String, Object>();
		List<UserVO> list = manageUserService.getSearchDate(searchUserVO);
		retVal.put("list", list);
		return retVal;
	}
}
