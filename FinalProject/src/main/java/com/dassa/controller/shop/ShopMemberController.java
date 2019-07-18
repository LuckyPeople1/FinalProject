package com.dassa.controller.shop;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.dassa.common.FileCommon;
import com.dassa.vo.ShopMemberVO;
import com.dassa.vo.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.dassa.service.ShopMemberService;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


@Controller
@RequestMapping("/shop/member")
public class ShopMemberController {
	
	@Resource
	private ShopMemberService shopMemberService;

	@Resource
	private FileCommon fileCommon;

	// 직원 목록
	@RequestMapping("/")
	public String memberList(Model model, HttpSession httpSession) throws Exception {

		UserVO userVO	=	(UserVO)httpSession.getAttribute("user");

		if(userVO != null){
			List<ShopMemberVO>memberList	=	shopMemberService.getMember(userVO.getUserIdx());
			model.addAttribute("memberList",memberList);
		}

		model.addAttribute("headerNav",3);
		model.addAttribute("subNav",1);

		return "shop/member/shopMemberList";
	}

	// 직원 상세정보
	@RequestMapping("/memberInfo")
	public String memberInfo(Model model){
		return "shop/member/shopMemberInfo";
	}



	/**
	 * 직원등록 페이지
	 * @param model
	 * @return
	 */
	@RequestMapping("/memberReg")
	public String memberReg(Model model){
		model.addAttribute("headerNav",3);
		model.addAttribute("subNav",2);
		return "shop/member/shopMemberReg";
	}


	/**
	 * 직원 삭제
	 * @param shopMemberIdx
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/memberRemoveProc")
	@ResponseBody
	public String memberRemoveProc(int shopMemberIdx) throws Exception {

		System.out.println(shopMemberIdx + " 가져오니");

		int rs	= shopMemberService.removeMember(shopMemberIdx);

		if(rs > 0){
			return "Y";
		}else{
			return "N";
		}

	}


	/**
	 * 직원등록 로직
	 * @param shopMemberVO
	 * @param httpServletRequest
	 * @param fileImg
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/memberRegProc")
	@ResponseBody
	public String memberRegProc(ShopMemberVO shopMemberVO,
								HttpServletRequest httpServletRequest,
								MultipartFile fileImg) throws Exception {

		System.out.println(fileImg + "파일이미지");

		if(!fileImg.getOriginalFilename().equals("")){

			String[] fileInfo	=	fileCommon.fileUp(fileImg,httpServletRequest, "package");
			shopMemberVO.setShopMemberImgName(fileInfo[0]);
			shopMemberVO.setShopMemberImgPath(fileInfo[1]);
		}

		int rs	=	shopMemberService.memberReg(shopMemberVO);

		if(rs > 0){
			return "Y";
		}else{
			return "N";
		}


	}
}
