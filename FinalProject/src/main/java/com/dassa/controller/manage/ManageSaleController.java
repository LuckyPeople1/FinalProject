package com.dassa.controller.manage;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manage/sale")
public class ManageSaleController {
	
	/**
	 * 상품&매출 목록(미완성)
	 *
	 * @param String
	 * @return
	 */
	@RequestMapping("/saleAllList")
	public String moveList(Model model){

		return "/manage/sale/saleAllList";
	}
}
