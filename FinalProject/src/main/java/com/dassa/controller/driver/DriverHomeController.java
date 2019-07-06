package com.dassa.controller.driver;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.DriverService;

@Controller
@RequestMapping("/driver")
public class DriverHomeController {
	
	@Resource
	private DriverService driverService;
	
		//기사 홈 페이지 (main page)
		@RequestMapping("/")
		public String DriverHome() {
			
			return "driver/driverHome";
		}

}
