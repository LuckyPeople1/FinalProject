package com.dassa.controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dassa.service.ShopService;
import com.dassa.vo.ShopItemVO;
import com.dassa.vo.ShopReservationVO;

@Controller
@RequestMapping("/shop")
public class ShopReserveController {
	@Autowired
	@Qualifier(value="shopService")
	private ShopService shopService;
	//부동산 방문관리 페이지(reserve)
	@RequestMapping("/reserve")
	public String ShopReserve() {
		return "shop/reserve/shopReserveList";
	}
	/**
	 * 부동산 방문 예약 등록
	 * @param sReserVO
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/reserveAdd")
	public String ShopReserveJoin(ShopReservationVO sReserVO, int shopItemIdx) throws Exception {
		shopService.ShopReserveJoin(sReserVO);
		return "redirect:/shop/item/shopItemView?shopItemIdx=122";
	}
	//부동산 방문상세페이지(reserve)
	@RequestMapping("/reserveInfo")
	public String ShopReserveInfo() {
		return "shop/reserve/shopReserveInfo";
	}

}
