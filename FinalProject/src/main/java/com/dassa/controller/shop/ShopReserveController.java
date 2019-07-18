package com.dassa.controller.shop;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.ShopService;
import com.dassa.vo.ShopItemPageDataVO;
import com.dassa.vo.ShopItemVO;
import com.dassa.vo.ShopReservationPageDataVO;
import com.dassa.vo.ShopReservationVO;

@Controller
@RequestMapping("/shop")
public class ShopReserveController {
	@Autowired
	@Qualifier(value="shopService")
	private ShopService shopService;
	//부동산 방문관리 페이지(reserve)
	@RequestMapping("/reserve")
	public ModelAndView ShopReserve(HttpServletRequest request)throws Exception {
		int reqPage;
		try {
			reqPage=Integer.parseInt(request.getParameter("reqPage"));
		}catch(NumberFormatException e){
			reqPage=1;
		}
		ModelAndView mav = new ModelAndView();
		ShopReservationPageDataVO sipd = shopService.selectReservationAllList(reqPage);
		if(!sipd.isEmpty()) {
			ArrayList<ShopReservationVO> sItemList = sipd.getList();
			String pageNavi = sipd.getPageNavi();
			mav.addObject("list",sItemList);
			mav.addObject("pageNavi",pageNavi);
			mav.setViewName("shop/reserve/shopReserveList");
		}
		return mav;
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
		shopService.shopReserveJoin(sReserVO);
		return "redirect:/shop/itemView?shopItemIdx="+shopItemIdx;
	}
	//예약 삭제
	@RequestMapping("/reservationDel")
	public String reservationDel(@RequestParam int shopReservationIdx)throws Exception {
		int result = shopService.reservationDel(shopReservationIdx);
		if(result>0) {
			return "redirect:/shop/reserve";
		}
		return "redirect:/shop/reserve";
	}
	//예약 진행
	@RequestMapping("/reservationhold")
	public String reservationhold(@RequestParam int shopReservationIdx)throws Exception {
		System.out.println("예약 진행 "+shopReservationIdx);
		int result = shopService.reservationhold(shopReservationIdx);
		if(result>0) {
			return "redirect:/shop/reserve";
		}
		return "redirect:/shop/reserve";
	}
	//예약 종료
	@RequestMapping("/reservationIng")
	public String reservationIng(@RequestParam int shopReservationIdx)throws Exception {
		int result = shopService.reservationIng(shopReservationIdx);
		if(result>0) {
			return "redirect:/shop/reserve";
		}
		return "redirect:/shop/reserve";
	}
}
