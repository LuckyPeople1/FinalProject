package com.dassa.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/insert")
public class InsertUserController {
	@RequestMapping("/")
	public String InsertHome() {
		return "user/insertHome";
	}
}
