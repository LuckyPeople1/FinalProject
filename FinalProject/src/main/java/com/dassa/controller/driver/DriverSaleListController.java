package com.dassa.controller.driver;



import javax.annotation.Resource;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dassa.service.DriverService;

import com.dassa.vo.DriverSaleDataVO;

import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/driver")
public class DriverSaleListController {
	
	@Resource
	private DriverService driverService;
	
	//통계관리 페이지
	@RequestMapping("/saleList")
	public String driverSaleList(Model model,int driverIdx) {
		return "driver/sale/driverSaleList";
	}
	@ResponseBody
	@RequestMapping("/saleListAjax")
	public DriverSaleDataVO driverSaleListAjax(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserVO user = (UserVO)session.getAttribute("user");
		int driverIdx = user.getUserIdx();
		DriverSaleDataVO dsVO = driverService.driverSaleList(driverIdx);
		return dsVO;
	}
}
