package com.dassa.controller.guest;


import com.dassa.service.MovePackageService;
import com.dassa.vo.PackageRegVO;
import com.dassa.vo.PackageTempVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/move")
public class GuestMoveController {


	@Resource
	private MovePackageService movePackageService;


	/**
	 * 등록된 짐 가져오기
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/step1")
	public String moveStep1(Model model) throws Exception {


		List<PackageRegVO>packageTempVOList 	=	movePackageService.getPackageList();

		model.addAttribute("packageList", packageTempVOList);


		return "guest/move/moveStep1";
	}




	@RequestMapping("/step2")
	public String moveStep2(Model model) throws Exception{

		// 세션저장


		return "guest/move/moveStep2";
	}

}
