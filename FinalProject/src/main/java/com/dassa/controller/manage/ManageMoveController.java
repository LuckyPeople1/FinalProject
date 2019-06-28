package com.dassa.controller.manage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/manage/move")
public class ManageMoveController {


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
	public String packageRegProc(){

		return null;
	}

}
