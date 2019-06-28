package com.dassa.controller.manage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manage")
public class ManageHomeController {

	@RequestMapping("/")
	public String ManageHome(){

		return "manage/manageHome";

	}

}
