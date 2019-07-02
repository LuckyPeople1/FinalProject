package com.dassa.controller.guest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/saleInLots")
public class SaleInLotsController {
	
	@RequestMapping("/")
	public String saleInLotsHome() {
		return "guest/saleInLotsHome";

	}
	@RequestMapping("/saleInLotsInformation")
	public String saleInLotsInformation() {
		return "guest/saleInLotsInformation";

	}
	@RequestMapping("/saleInLotsThema")
	public String saleInLotsThema() {
		return "guest/saleInLotsThema";

	}
	@RequestMapping("/saleInLotsSchedule")
	public String saleInLotsSchedule() {
		return "guest/saleInLotsSchedule";

	}
	@RequestMapping("/saleInLotsProcess")
	public String saleInLotsProcess() {
		return "guest/saleInLotsProcess";

	}
	@RequestMapping("/saleInLotsBrand")
	public String saleInLotsBrand() {
		return "guest/saleInLotsBrand";

	}

}
