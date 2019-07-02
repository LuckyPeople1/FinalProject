package com.dassa.controller.guest;


import com.dassa.service.MovePackageService;
import com.dassa.vo.PackageRegVO;
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


	@RequestMapping("/step1")
	public String moveStep1(Model model) throws Exception {


		List<PackageRegVO> packageRegVOList	=	movePackageService.getPackageList();


		System.out.println(packageRegVOList.size() + "몇개?");
		System.out.println(packageRegVOList.get(0).getPackageName() + "이름");


		model.addAttribute("packageList", packageRegVOList);


		return "guest/move/moveStep1";
	}

}
