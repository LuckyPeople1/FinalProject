package com.dassa.controller.guest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


public class GuestInsertController {
	@RequestMapping("/")
	public String InsertHome() {
		return "guest/insertHome";
	}
}
