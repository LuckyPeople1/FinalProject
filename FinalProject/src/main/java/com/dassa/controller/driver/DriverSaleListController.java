package com.dassa.controller.driver;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.DriverService;

@Controller
@RequestMapping("/driver")
public class DriverSaleListController {
	
	@Resource
	private DriverService driverService;
	
	//통계관리 페이지
	@RequestMapping("/saleList")
	public String DriverSaleList() {
		return "driver/sale/driverSaleList";
	}
}
