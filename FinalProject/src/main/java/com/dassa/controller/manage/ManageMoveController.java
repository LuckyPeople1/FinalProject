package com.dassa.controller.manage;

import com.dassa.common.FileCommon;
import com.dassa.vo.PackageRegVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/manage/move")
public class ManageMoveController {


	@Resource
	private FileCommon fileCommon;


	/**
	 * 이사 목록
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping("/moveAllList")
	public String moveList(Model model){

		model.addAttribute("headerNum",3);
		model.addAttribute("headerNum",3);
		return "/manage/move/moveAllList";
	}

	/**
	 * 짐 등록 페이지
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping("/packageReg")
	public String packageReg(Model model){

		model.addAttribute("headerNum",3);
		return "/manage/move/packageReg";
	}

	/**
	 * 짐 관리 페이지
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping("/packageList")
	public String packageList(Model model){

		model.addAttribute("headerNum",3);
		return "/manage/move/packageList";

	}

	@RequestMapping(value = "/packageRegProc", method = RequestMethod.POST)
	@ResponseBody
	public String packageRegProc(PackageRegVO packageRegVO, @RequestParam String packageName, MultipartFile multipartFile){


		System.out.println("수정쓰!?");

		System.out.println(packageRegVO.getPackageName());
		System.out.println(packageRegVO.getPackageType());

		System.out.println(packageName + "강제로 받아오기");

//		System.out.println(fileImg + " 넘어오니?");
//
//		if(fileImg != null){
//			String[] fileInfo	=	fileCommon.fileUp(fileImg,httpServletRequest);
//		}




		return "Y";
	}

}
