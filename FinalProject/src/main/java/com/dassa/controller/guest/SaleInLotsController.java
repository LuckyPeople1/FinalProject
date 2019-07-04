package com.dassa.controller.guest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/saleInLots")
public class SaleInLotsController {
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
	 * 분양 정보 페이지
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsInformation")
	public String saleInLotsInformation() {
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
