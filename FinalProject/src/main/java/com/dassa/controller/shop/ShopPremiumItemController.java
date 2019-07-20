package com.dassa.controller.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dassa.service.ShopPremiumService;
import com.dassa.service.ShopService;
import com.dassa.vo.ShopPowerItemVO;
import com.dassa.vo.ShopPremiumItemVO;
import com.dassa.vo.UserVO;

@Controller
@RequestMapping("/shop")
public class ShopPremiumItemController {
	@Autowired
	@Qualifier(value="shopPremiumService")
	private ShopPremiumService shopPremiumService;
	
	//부동산 상품관리 페이지(premiumItem)
	@RequestMapping("/premiumItem")
	public String ShopItem(HttpSession httpSession) {
		return "shop/premiumItem/shopPremiumItemList";
	}
	/**
	 * 상품 등록을 위한 아이템구매
	 * @param userIdx
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/premiumItemAdd")
	public String PremiumItemAdd(ShopPremiumItemVO spiVO) throws Exception{
		int result = shopPremiumService.PremiumItemAdd(spiVO);
		if(result>0) {
			return "shop/premiumItem/shopPremiumItemList";
		}
		return "shop/premiumItem/shopPremiumItemList";
	}
	
	@RequestMapping("/powerItemAdd")
	public String PowerItemAdd(ShopPowerItemVO powerVo) throws Exception{
		int result = shopPremiumService.PowerItemAdd(powerVo);
		if(result>0) {
			return "shop/premiumItem/shopPremiumItemList";
		}
		return "shop/premiumItem/shopPremiumItemList";
	}
	
	@RequestMapping("/premiumItemList")
	public String ShopPemiumItemList(HttpSession httpSession) throws Exception {
		UserVO userVO	=	(UserVO)httpSession.getAttribute("user");
		int userIdx = userVO.getUserIdx();
		int itemCount = shopPremiumService.shopCount(userIdx); //매물 등록 가능 개수 확인
		int powerCount =shopPremiumService.powerCount(userIdx); //파워링크 등록 가능 개수 확인
		System.out.println("등록 가능 매물 개수 : "+itemCount);
		System.out.println("적용 가능 매물 개수 : "+powerCount);
		return "shop/premiumItem/shopPremiumItem";
	}
}
