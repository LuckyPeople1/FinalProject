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

}
