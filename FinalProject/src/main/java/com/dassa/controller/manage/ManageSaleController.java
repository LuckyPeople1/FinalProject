package com.dassa.controller.manage;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dassa.service.ManageSaleService;
import com.dassa.vo.ManageSaleMovePageData;
import com.dassa.vo.ManageSalePageData;
import com.dassa.vo.ManageSaleShopPageData;
import com.dassa.vo.SaleMoveInfoData;
import com.dassa.vo.SaleMoveInfoVO;

@Controller
@RequestMapping("/manage/sale")
public class ManageSaleController {
	
	@Resource
	private ManageSaleService manageSaleService;
	/**
	 * 상품&매출 목록(미완성)
	 *
	 * @param String
	 * @return
	 */
	@RequestMapping("/salePremiumList")
	public String salePremiumList(Model model,ManageSalePageData pagination,HttpServletRequest request,
			 @RequestParam(required = false, defaultValue = "1") int reqPage){
		if(pagination.getSearchType()==null) {
			pagination.setSearchType("");
		}
		if(pagination.getSearchWord()==null) {
			pagination.setSearchWord("");
		}
		if(pagination.getMinDate()==null && pagination.getMaxDate()==null) {
			pagination.setMinDate("");
			pagination.setMaxDate("");
		}
		if(pagination.getMinAmount()==null && pagination.getMaxAmount()==null) {
			pagination.setMinAmount("");
			pagination.setMaxAmount("");
		}
		
		ManageSaleShopPageData msData = manageSaleService.salePremiumList(pagination,reqPage);
		model.addAttribute("msData",msData);
		model.addAttribute("tag","1");
		return "/manage/sale/salePremiumItemList";
	}
	@RequestMapping("/saleMoveInfo")
	public String saleMoveInfo(Model model,int movePaymentIdx) throws Exception{
		
		SaleMoveInfoData smData = manageSaleService.saleMoveInfo(movePaymentIdx); 
		model.addAttribute("smData",smData);
		model.addAttribute("tag","2");
		return "/manage/sale/saleMoveInfo";
	}
	@RequestMapping("/saleMoveList")
	public String saleMoveList(Model model,ManageSalePageData pagination,HttpServletRequest request,
			 @RequestParam(required = false, defaultValue = "1") int reqPage ) throws Exception {
		
		if(pagination.getSearchType()==null) {
			pagination.setSearchType("");
		}
		if(pagination.getSearchWord()==null) {
			pagination.setSearchWord("");
		}
		if(pagination.getMinDate()==null && pagination.getMaxDate()==null) {
			pagination.setMinDate("");
			pagination.setMaxDate("");
		}
		if(pagination.getMinAmount()==null && pagination.getMaxAmount()==null) {
			pagination.setMinAmount("");
			pagination.setMaxAmount("");
		}
		
		ManageSaleMovePageData maData = manageSaleService.driverMoveList(pagination,reqPage);
		model.addAttribute("maData", maData);
		model.addAttribute("tag","2");
		return "/manage/sale/saleMoveList";
	}
	
}
