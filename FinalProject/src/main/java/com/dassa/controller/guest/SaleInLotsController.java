package com.dassa.controller.guest;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dassa.service.SaleInLotsService;
import com.dassa.vo.SaleInLotsPageDataVO;
import com.dassa.vo.SaleInLotsVO;

@Controller
@RequestMapping("/saleInLots")
public class SaleInLotsController {
	
	@Resource
	private SaleInLotsService saleInLotsService;
	/**
	 * 분양 메인 페이지
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/")
	public String saleInLotsHome() {
		return "guest/saleInLots/saleInLotsHome";

	}
	/**
	 * 
	 * 분양 정보 페이지
	 * @param saleInLotsArea 
	 * @param saleInLotsBuildType
	 * @param saleInLotsState
	 * @param saleInLotssupplyType
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/saleInLotsInformation")
	public String saleInLotsInformation(@RequestParam(defaultValue="1") int reqPage, String saleInLotsArea,String saleInLotsSupplyType,String saleInLotsBuildType, String saleInLotsState, Model model) throws Exception {
		
		SaleInLotsVO saleInfo = new SaleInLotsVO();
		saleInfo.setSaleInLotsArea(saleInLotsArea);
		saleInfo.setSaleInLotsBuildType(saleInLotsBuildType);
		saleInfo.setSaleInLotsState(saleInLotsState);
		saleInfo.setSaleInLotsSupplyType(saleInLotsSupplyType);
		
		SaleInLotsPageDataVO spVO = saleInLotsService.saleInLotsInformation(saleInfo,reqPage);
		model.addAttribute("sp",spVO);
		
		return "guest/saleInLots/saleInLotsInformation";

	}
	/**
	 * 분양 테마 페이지
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsThema")
	public String saleInLotsThema() {
		return "guest/saleInLots/saleInLotsThema";

	}
	/**
	 * 분양 일정 페이지
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsSchedule")
	public String saleInLotsSchedule() {
		return "guest/saleInLots/saleInLotsSchedule";

	}
	/**
	 * 분양 가이드 페이지
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsProcess")
	public String saleInLotsProcess() {
		return "guest/saleInLots/saleInLotsProcess";

	}
	/**
	 * 분양 브랜드관 페이지
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsBrand")
	public String saleInLotsBrand() {
		return "guest/saleInLots/saleInLotsBrand";

	}

}
