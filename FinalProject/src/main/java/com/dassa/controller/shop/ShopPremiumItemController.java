package com.dassa.controller.shop;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.service.ShopPremiumService;
import com.dassa.vo.ShopPaymentVO;
import com.dassa.vo.ShopPowerItemVO;
import com.dassa.vo.ShopPremiumItemVO;
import com.dassa.vo.UserVO;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.AccessToken;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;

@Controller
@RequestMapping("/shop")
public class ShopPremiumItemController {
	@Autowired
	@Qualifier(value="shopPremiumService")
	private ShopPremiumService shopPremiumService;
	
	private IamportClient client; // 결제 라이브 러리
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
	@ResponseBody
	@RequestMapping("/premiumItemAdd")
	public void PremiumItemAdd(ShopPremiumItemVO spiVO,String impUid,HttpServletResponse response) throws Exception{
		GetToken();
		String imp_uid = impUid;
		try {
			IamportResponse<Payment> payment_response = client.paymentByImpUid(imp_uid);
			System.out.println(payment_response.getResponse());
			System.out.println(impUid);
			System.out.println(spiVO.getUserIdx());
			String shopPaymentPg = payment_response.getResponse().getPgProvider();
			String shopPaymentMerchantUid = payment_response.getResponse().getMerchantUid();
			String shopPaymentPayMethod = payment_response.getResponse().getPayMethod();
			String shopPaymentCardName = payment_response.getResponse().getCardName();
			String shopPaymentPgNumber = payment_response.getResponse().getApplyNum();
			BigDecimal shopPaymentPrice = payment_response.getResponse().getAmount();
			Date movePaymentDate = payment_response.getResponse().getPaidAt();
			String movePaymentStatus = payment_response.getResponse().getStatus();
			ShopPaymentVO spVo = new ShopPaymentVO();
			spVo.setUserIdx(spiVO.getUserIdx());
			spVo.setShopPaymentName("상품 등록 아이템");
			spVo.setShopPaymentImpUid(imp_uid);
			spVo.setShopPaymentMerchantUid(shopPaymentMerchantUid);
			spVo.setShopPaymentMethod(shopPaymentPayMethod);
			spVo.setShopPaymentPg(shopPaymentPg);
			spVo.setShopPaymentPgNumber(shopPaymentPgNumber);
			spVo.setShopPaymentCardName(shopPaymentCardName);
			spVo.setShopPaymentPrice(shopPaymentPrice.intValue());
			spVo.setShopPaymentDate(movePaymentDate);
			spVo.setShopPaymentStatus(movePaymentStatus);
			shopPremiumService.shopPayment(spVo);
			int result = shopPremiumService.PremiumItemAdd(spiVO);
			PrintWriter out = response.getWriter();
			if(result > 0) {
				out.print("1");
			}else {
				out.print("0");
			}
		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());

			switch(e.getHttpStatusCode()) {
			case 401 :
				//TODO
				break;
			case 500 :
				//TODO
				break;
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@ResponseBody
	@RequestMapping("/powerItemAdd")
	public void PowerItemAdd(ShopPowerItemVO powerVo,String impUid,HttpServletResponse response) throws Exception{
		GetToken();
		String imp_uid = impUid;
		try {
			IamportResponse<Payment> payment_response = client.paymentByImpUid(imp_uid);
			String shopPaymentPg = payment_response.getResponse().getPgProvider();
			String shopPaymentMerchantUid = payment_response.getResponse().getMerchantUid();
			String shopPaymentPayMethod = payment_response.getResponse().getPayMethod();
			String shopPaymentCardName = payment_response.getResponse().getCardName();
			String shopPaymentPgNumber = payment_response.getResponse().getApplyNum();
			BigDecimal shopPaymentPrice = payment_response.getResponse().getAmount();
			Date movePaymentDate = payment_response.getResponse().getPaidAt();
			String movePaymentStatus = payment_response.getResponse().getStatus();
			ShopPaymentVO spVo = new ShopPaymentVO();
			spVo.setUserIdx(powerVo.getUserIdx());
			spVo.setShopPaymentName("파워 링크 아이템");
			spVo.setShopPaymentImpUid(imp_uid);
			spVo.setShopPaymentMerchantUid(shopPaymentMerchantUid);
			spVo.setShopPaymentMethod(shopPaymentPayMethod);
			spVo.setShopPaymentPg(shopPaymentPg);
			spVo.setShopPaymentPgNumber(shopPaymentPgNumber);
			spVo.setShopPaymentCardName(shopPaymentCardName);
			spVo.setShopPaymentPrice(shopPaymentPrice.intValue());
			spVo.setShopPaymentDate(movePaymentDate);
			spVo.setShopPaymentStatus(movePaymentStatus);
			shopPremiumService.shopPayment(spVo);
			int result = shopPremiumService.PowerItemAdd(powerVo);
			PrintWriter out = response.getWriter();
			if(result > 0) {
				out.print("1");
			}else {
				out.print("0");
			}
		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());

			switch(e.getHttpStatusCode()) {
			case 401 :
				//TODO
				break;
			case 500 :
				//TODO
				break;
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/premiumItemList")
	public String ShopPemiumItemList(Model model,HttpSession httpSession) throws Exception {
		UserVO userVO	=	(UserVO)httpSession.getAttribute("user");
		int userIdx = userVO.getUserIdx();
		System.out.println(userIdx);
		ArrayList<ShopPaymentVO> list = shopPremiumService.ShopPemiumItemList(userIdx);
		model.addAttribute("list", list);
		return "shop/premiumItem/shopPremiumItem";
	}
	
	/**
	 * 결제 준비
	 * @return
	 */
	public void setup() {
		String test_api_key = "2987424337635438";
		String test_api_secret = "nA2wYOmcKgUcvjvQ29dzywr6X1ppCUf0uiwt6TFQ9A2ETyuWHIvgfXmcZMBCHRCb99Ef2k6bU9QOHlLp";
		client = new IamportClient(test_api_key, test_api_secret);
	}
	/**
	 * 결제 내역 조회를 위한 토근 발급
	 * @return
	 */
	public void GetToken() {
		setup();
		try {
			IamportResponse<AccessToken> auth_response = client.getAuth();
			System.out.println(auth_response.getResponse());
			System.out.println(auth_response.getResponse().getToken());

		} catch (IamportResponseException e) {
			System.out.println(e.getMessage());

			switch(e.getHttpStatusCode()) {
			case 401 :
				//TODO
				break;
			case 500 :
				//TODO
				break;
			}
		} catch (IOException e) {
			//서버 연결 실패
			e.printStackTrace();
		}
	}
}
