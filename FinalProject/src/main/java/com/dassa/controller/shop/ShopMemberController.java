package com.dassa.controller.shop;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dassa.common.FileCommon;
import com.dassa.service.ShopMemberService;
import com.dassa.vo.EmployeePageDate;
import com.dassa.vo.EmployeeVO;
import com.dassa.vo.NoticeVO;


@Controller
@RequestMapping("/shop")
public class ShopMemberController {
	
	@Resource
	private  ShopMemberService shopMemberService;
	
	@Autowired
	@Qualifier(value="shopService")
	//부동산 직원관리 페이지(member)
	
	/*@RequestMapping("/member")
	public String ShopMember() throws Exception {
		EmployeePageDate list = shopMemberService.selectAll(1);
		if(!list.isEmpty()) {
			ArrayList<NoticeVO> arrlist = list.getList();
			String pageNavi = list.getPageNavi();
			ma.addObject("list", arrlist);
			ma.addObject("pageNavi", pageNavi);
			if(code==1) {
				ma.setViewName("manage/board/notice/noticeManageList");
			}else if(code==2) {
				ma.setViewName("manage/board/notice/noticeManageList");
			}else {
				ma.setViewName("manage/board/notice/noticeManageList");
			}
		}
		return "shop/member/shopMemberList";
	}*/
	//부동산 직원등록 페이지(memberAdd)
	@RequestMapping("/memberAdd")
	public String ShopMemberAdd() {
		return "shop/member/shopMemberAdd";
	}
	//부동산 직원 상세페이지(memberInfo)
	@RequestMapping("/memberInfo")
	public String ShopMemberInfo() {
		return "shop/member/shopMemberInfo";
	}
	
	
	@RequestMapping("/shopMemberAdd")
	@ResponseBody
	public String DriverMypageUpdate(EmployeeVO emp,HttpServletRequest request,MultipartFile fileImg) throws Exception {
		System.out.println(fileImg);
		System.out.println(emp.getEmployeeName());		
		String[] fileInfo = FileCommon.fileUp(fileImg, request, "driver");
		emp.setImageName(fileInfo[0]);
		emp.setImagePath(fileInfo[1]);
		System.out.println("controller/driverInsert: "+emp.getImageName());
		System.out.println("controller/driverInsert: "+emp.getImagePath());
		int result= shopMemberService.memberInsert(emp);
		if(result > 0) {
			request.setAttribute("msg", "회원가입이 완료 되었습니다.");
			request.setAttribute("loc", "/login/");
			return "/";
		}else {
			request.setAttribute("msg", "회원가입이 실패 하였습니다.");
			request.setAttribute("loc", "redirect:/insert");
			return "/";
		}		
	}
}
