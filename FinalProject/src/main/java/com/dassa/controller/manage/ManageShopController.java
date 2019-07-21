package com.dassa.controller.manage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.ManageShopService;
import com.dassa.service.ShopService;
import com.dassa.vo.ShopItemPageDataVO;
import com.dassa.vo.ShopItemVO;

@Controller
@RequestMapping("/shopManage")
public class ManageShopController {
	@Resource(name="manageShopService")
	private ManageShopService manageShopService;
	
	@Resource(name="shopService")
	private ShopService shopService;
	
	//부동산 매물 뿌리기
	@RequestMapping("/shopAllList")
	public ModelAndView shopAllList(HttpServletRequest request) throws Exception{
		int reqPage;
		try {
			reqPage=Integer.parseInt(request.getParameter("reqPage"));
		}catch(NumberFormatException e){
			reqPage=1;
		}
		ModelAndView mav = new ModelAndView();
		ShopItemPageDataVO sipd = manageShopService.selectAllList(reqPage);
		if(!sipd.isEmpty()) {
			ArrayList<ShopItemVO> sItemList = sipd.getList();
			String pageNavi = sipd.getPageNavi();
			mav.addObject("list",sItemList);
			mav.addObject("pageNavi",pageNavi);
			mav.setViewName("manage/shop/shopItemAllList");
		}
		return mav;
	}
	/**
	 * 중개사 페이지 - 매물 삭제 로직(itemDelete)
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/shopItemDelete")
	public String shopItemDelete(@RequestParam int shopItemIdx, @RequestParam int userIdx)throws Exception {
		int result = manageShopService.shopItemDelete(shopItemIdx);
		if(result>0) {
			shopService.shopPremiumItemStop(shopItemIdx);
			result = shopService.powerEnd(shopItemIdx); //아이템 적용 시 버튼 상태변경
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("shopItemIdx", shopItemIdx);
			map.put("userIdx", userIdx);
			if(result>0) {
				shopService.shopPowerItemEnd(map); //아이템 해지 시 아이템 적용 개수 update
			}
			return "redirect:/shopManage/shopAllList";
		}
		return "redirect:/shopManage/shopAllList";
	}
	/**
	 * 중개사 페이지 - 매물 판매 중단 로직(itemStop)
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/shopItemStop")
	public String shopItemStop(@RequestParam int shopItemIdx, @RequestParam int userIdx)throws Exception {
		int result = manageShopService.shopItemStop(shopItemIdx);
		if(result>0) {
			shopService.shopPremiumItemStop(shopItemIdx);
			result = shopService.powerEnd(shopItemIdx); //아이템 적용 시 버튼 상태변경
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("shopItemIdx", shopItemIdx);
			map.put("userIdx", userIdx);
			if(result>0) {
				shopService.shopPowerItemEnd(map); //아이템 해지 시 아이템 적용 개수 update
			}
			return "redirect:/shopManage/shopAllList";
		}
		return "redirect:/shopManage/shopAllList";
	}
	/**
	 * 중개사 페이지 - 매물 판매 진행 로직(itemIng)
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/shopItemIng")
	public String shopItemIng(@RequestParam int shopItemIdx, @RequestParam int userIdx, HttpSession httpSession)throws Exception {
		int result = manageShopService.shopItemIng(shopItemIdx);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("shopItemIdx", shopItemIdx);
		map.put("userIdx", userIdx);
		if(result>0) {
			shopService.shopPremiumItemIng(map);
			return "redirect:/shopManage/shopAllList";
		}
		return "redirect:/shopManage/shopAllList";
	}
	/**
	 * 아이템 적용
	 * @param shopItemIdx
	 * @param userIdx
	 * @param httpSession
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/powerIng")
	public String powerIng(@RequestParam int shopItemIdx, @RequestParam int userIdx, HttpSession httpSession)throws Exception {
		
		int count = shopService.powerCount(userIdx);//아이템 적용 시 버튼 상태변경
		System.out.println("등록 가능 매물 개수 : "+count);
		if(count>0) {
			int result = shopService.powerIng(shopItemIdx);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("shopItemIdx", shopItemIdx);
			map.put("userIdx", userIdx);
			if(result>0) {
				shopService.shopPowerItemIng(map);//아이템 적용 시 아이템 적용 개수 update
				return "redirect:/shopManage/shopAllList";
			}
		}
		return "redirect:/shopManage/shopAllList";
	}
	/**
	 * 아이템 해지
	 * @param shopItemIdx
	 * @param userIdx
	 * @param httpSession
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/powerEnd")
	public String powerEnd(@RequestParam int shopItemIdx, @RequestParam int userIdx, HttpSession httpSession)throws Exception {

		int result = shopService.powerEnd(shopItemIdx); //아이템 적용 시 버튼 상태변경
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("shopItemIdx", shopItemIdx);
		map.put("userIdx", userIdx);
		if(result>0) {
			shopService.shopPowerItemEnd(map); //아이템 해지 시 아이템 적용 개수 update
			return "redirect:/shopManage/shopAllList";
			
		}
		return "redirect:/shopManage/shopAllList";
	}
	
}
