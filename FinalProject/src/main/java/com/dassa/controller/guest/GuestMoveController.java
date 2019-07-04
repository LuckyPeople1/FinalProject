package com.dassa.controller.guest;


import com.dassa.service.MovePackageService;
import com.dassa.vo.PackageRegVO;
import com.dassa.vo.PackageSelectVO;
import com.dassa.vo.PackageTempVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/move")
public class GuestMoveController {


	@Resource
	private MovePackageService movePackageService;


	/**
	 * 등록된 짐 가져오기
	 *
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/step1")
	public String moveStep1(Model model) throws Exception {


		List<PackageRegVO> packageTempVOList = movePackageService.getPackageList();

		model.addAttribute("packageList", packageTempVOList);


		return "guest/move/moveStep1";
	}


	@RequestMapping(value = "/packageSelect", method = RequestMethod.POST)
	@ResponseBody
	public String packageSelect(
			HttpSession httpSession,
			@RequestBody List<PackageSelectVO> packageList) {

		System.out.println(packageList);

		for (PackageSelectVO packageSelectVO : packageList) {
			System.out.println(packageSelectVO.getPackageName());
		}


		httpSession.setAttribute("packageList", packageList);


		return "Y";
	}

	@RequestMapping("/step2")
	public String moveStep2(
			HttpSession httpSession,
			Model model) throws Exception {

		model.addAttribute("selectList", (List<PackageSelectVO>) httpSession.getAttribute("packageList"));


		// 세션저장


		return "guest/move/moveStep2";
	}


	@RequestMapping("/packageOptionPop")
	public String packageOptionPop(){

		return null;
	}
}
