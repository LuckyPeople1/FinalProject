package com.dassa.controller.guest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class GuestLoginController {
	@RequestMapping("/")
	public String LoginHome() {
		return "guest/loginHome";
	}
}
