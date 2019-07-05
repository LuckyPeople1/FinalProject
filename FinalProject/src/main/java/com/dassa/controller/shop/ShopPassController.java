package com.dassa.controller.shop;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dassa.service.ShopService;
import com.dassa.vo.JusoDongVO;
import com.dassa.vo.JusoGuVO;

@Controller
@RequestMapping("/shop")
public class ShopPassController {
	@Autowired
	@Qualifier(value="shopService")
	private ShopService shopService;
	//부동산 홈 페이지 (main page)
	@RequestMapping("/")
	public String ShopHome() {
		return "shop/shopHome";
	}
	//부동산 설정 페이지(myPage)
	@RequestMapping("/mypage")
	public String ShopSetting() {
		return "shop/setting/shopMypage";
	}
	//부동산 직원관리 페이지(member)
	@RequestMapping("/member")
	public String ShopMember() {
		return "shop/member/shopMemberList";
	}
	//부동산 직원등록 페이지(memberAdd)
	@RequestMapping("/memberAdd")
	public String ShopMemberAdd() {
		return "shop/member/shopMemberAdd";
	}
	//부동산 직원 상세페이지(memberInfo)
	@RequestMapping("/memberInfo")
	public String ShopMemberInfo() {
		return "shop/member/shopMemberInfo";
	}
	//부동산 매물관리 페이지(item)
	@RequestMapping("/item")
	public String ShopRoom() {
		return "shop/item/shopItemList";
	}
	//부동산 매물등록 페이지(itemAdd)
	@RequestMapping("/itemAdd")
	public String ShopRoomJoin() {
		return "shop/item/shopItemAdd";
	}
	//부동산 매물 상세페이지(itemInfo)
	@RequestMapping("/itemInfo")
	public String ShopRoomInfo() {
		return "shop/item/shopItemInfo";
	}
	//부동산 방문관리 페이지(reserve)
	@RequestMapping("/reserve")
	public String ShopReserve() {
		return "shop/reserve/shopReserveList";
	}
	//부동산 방문등록 페이지(reserve)
	@RequestMapping("/reserveAdd")
	public String ShopReserveJoin() {
		return "shop/reserve/shopReserveAdd";
	}
	//부동산 방문상세페이지(reserve)
	@RequestMapping("/reserveInfo")
	public String ShopReserveInfo() {
		return "shop/reserve/shopReserveInfo";
	}
	//부동산 게시판관리 페이지(board)
	@RequestMapping("/board")
	public String ShopBoard() {
		return "shop/borad/shopBoardList";
	}
	//부동산 상품관리 페이지(premiumItem)
	@RequestMapping("/premiumItem")
	public String ShopItem() {
		return "shop/premiumItem/shopPremiumItemList";
	}
	
	//주소 구 리스트 Ajax
	@ResponseBody
	@RequestMapping("/jusoGuList")
	public ArrayList<JusoGuVO> getJusoGuList(String jusoCityCode) throws Exception {
		ArrayList<JusoGuVO> data = (ArrayList<JusoGuVO>) shopService.getJusoGuList(jusoCityCode);
		return  data;
	}
	//주소 동 Ajax
	@ResponseBody
	@RequestMapping("/jusoDongList")
	public ArrayList<JusoDongVO> getJusoDongList(String jusoGuCode) throws Exception {
		ArrayList<JusoDongVO> data = (ArrayList<JusoDongVO>) shopService.getJusoDongList(jusoGuCode);
		return  data;
	}
	
	//아파트 목록 API(아파트코드, 아파트명)
	@ResponseBody
	@RequestMapping("/kaptList")
	public void getKaptList(String jusoDongCode) throws Exception {
		StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1611000/AptListService/getLegaldongAptList"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "=54B3UVUh6R8rk53zzwXWC9v%2BTLjMpOTrrhJZJdbsNYxEQfEXOppRVb6obNP73Kh092jmyIvwgtp4%2F%2BsTp7%2Fndg%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("loadCode","UTF-8") + "=" + URLEncoder.encode(jusoDongCode+"00", "UTF-8")); /*시군구번호+법정동번호*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /**/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /**/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());
	}
	
}
