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
public class ManageUserConroller {
	
	@Resource
	private ManageUserService manageUserService;
	
	//전체 승인관리
	@RequestMapping("/userApprobateList")
	public String UserApprobateList(Model model, String status) throws Exception{
		List<UserVO> list = manageUserService.getAllApprobateList(status);
		model.addAttribute("list", list);
		return "manage/user/user/allApprobate";
	}
	
	// userType에 따른 회원 리스트 뿌려주기
	@RequestMapping("/userAllList")
	public String UserAllList(Model model, String userType) throws Exception {
		String view = null;
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
		if(userType.equals("1")) {
			List<UserVO> list = manageUserService.getTypeApprobateList(userType);
			model.addAttribute("list", list);
			view = "manage/user/driver/driverApprobateList";
		}else {
			List<UserVO> list = manageUserService.getTypeApprobateList(userType);
			model.addAttribute("list", list);
			view = "manage/user/shop/shopApprobateList";
		}
		return view;
	}
	
	//탈퇴회원 관리
	@RequestMapping("/all/allSecssion")
	public String UserSecssionList(Model model, String userType) throws Exception {
		String view = null;
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

	//부동산 회원 관리
	@RequestMapping("/shop/shopList")
	public String ShopUserList() throws Exception{
		return "manage/user/shop/shopAllList";
	}
	
	//기사 회원 관리
	@RequestMapping("/driver/driverList")
	public String DriverUserList() throws Exception{
		return "manage/user/driver/driverAllList";
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
		SearchUserVO searchUserVO = new SearchUserVO();
		System.out.println("type : "+type);
		String[] uType = type.split(",");
		String result = null;
		String userType = null;
		String userType1 = null;
		String userType2 = null;
		System.out.println("utype"+uType[0]);
		System.out.println("uType.length: "+uType.length);
		
		if(uType.length == 1){
			if(type.equals("일반회원")) {
				userType = "3";
			}else if(type.equals("운송기사")) {
				userType = "2";
			}else{
				userType = "1";
			}
			userType1 = userType;
			searchUserVO.setUserType1(userType1);
			System.out.println(userType1);
			System.out.println(searchUserVO.getUserType1());
		}else if(uType.length >1) {
			System.out.println("이거도 타니?");
			for(int i=0; i<uType.length; i++) {
				result = uType[i];
				System.out.println(result); //일반회원 운송기사
				if(result.equals("일반회원")) {
					userType = "3";
				}else if(result.equals("운송기사")) {
					userType = "2";
				}else{
					userType = "1";
				}
				System.out.println(userType);
				userType1 = userType;
				userType2 = userType;
			}
			searchUserVO.setUserType1(userType1);
			System.out.println(searchUserVO.getUserType1());
			searchUserVO.setUserType2(userType2);
			System.out.println(searchUserVO.getUserType2());
		}
		
		Map<String, Object> retVal = new HashMap<String, Object>();
		if(userType.equals("1")) {
			System.out.println("gd");
			List<UserVO> list = manageUserService.getTypeCheckApprobateList(searchUserVO);
			retVal.put("list", list);
		}else if(userType.equals("2")) {
			System.out.println("gd2");
			List<UserVO> list = manageUserService.getTypeCheckApprobateList(searchUserVO);
			retVal.put("list", list);
		}else if(userType.equals("3")) {
			System.out.println("gd3");
			List<UserVO> list = manageUserService.getTypeCheckApprobateList(searchUserVO);
			retVal.put("list", list);
		}
		return retVal;
	}
	
	//전체 승인 페이지 ajax
	@RequestMapping("/approbate")
	@ResponseBody
	public Object Approbate(Map<String,Object> map, String type) throws Exception {
		System.out.println(type);
		String userType = null;
		
		Map<String, Object> retVal = new HashMap<String, Object>();
		List<UserVO> list = manageUserService.getAllApprobateList(userType);
		retVal.put("list", list);
		return retVal;
	}
	
	/*//체크 해제 되었을 경우
	@RequestMapping("/unchecked"){
		return null;
	}*/
	
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
	public Map<String, Object> SearchUser(Model model, @RequestParam String searchType, String userId, String userType) {
		System.out.println("search : "+ searchType);
		System.out.println("search : "+ userId);
		SearchUserVO searchUserVO = new SearchUserVO();
		searchUserVO.setSearchType(searchType);
		searchUserVO.setSearchWord(userId);
		searchUserVO.setUserType(userType);
		Map<String, Object> retVal = new HashMap<String, Object>();
		
		if(searchType.equals("1") && !userId.equals("")) {
			//아이디 일때
			List<UserVO> list = manageUserService.getSearchList(searchUserVO);
			retVal.put("list", list);
			
		}else if(searchType.equals("2") && !userId.equals("")){
			//이름 일때
			List<UserVO> list = manageUserService.getSearchList(searchUserVO);
			retVal.put("list", list);
			
		}else {
			retVal.put("list", "");
		}
		return retVal;
	}
}
