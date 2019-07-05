package com.dassa.controller.guest;


import com.dassa.service.MovePackageService;
import com.dassa.vo.PackageRegOptionVO;
import com.dassa.vo.PackageRegVO;
import com.dassa.vo.PackageSelectVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
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


	/**
	 * 짐 선택 (이사하기 Step1)
	 * @param httpSession
	 * @param packageList
	 * @return
	 */
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

	/**
	 * 짐 상세입력 페이지 이동 (이사하기 Step2)
	 * @param httpSession
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/step2")
	public String moveStep2(
			HttpSession httpSession,
			Model model) throws Exception {

		// 세션에서 리스트를 가져와서 뷰로 넘겨줌


		model.addAttribute("selectList", (List<PackageSelectVO>) httpSession.getAttribute("packageList"));

		return "guest/move/moveStep2";
	}


	/**
	 * 짐 상세정보 팝업
	 * @param idx
	 * @param name
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/packagePop")
	public String packagePop(int idx, String name, Model model) throws Exception {


		System.out.println(name + "네임");

		List<PackageRegOptionVO> optionList	=	movePackageService.getPackageOptionList(idx);
		System.out.println(optionList.size() + " 몇개 가져오니");

		model.addAttribute("optionList", optionList);
		model.addAttribute("name",name);

		return "guest/move/page/packagePop";
	}


	@RequestMapping("/packageFinish")
	@ResponseBody
	public String packageFinish(){

		return "Y";
	}


	@RequestMapping("/step3")
	public String moveStep2(){

		return "guest/move/moveStep3";

	}
}
