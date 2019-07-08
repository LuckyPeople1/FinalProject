package com.dassa.controller.shop;

import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

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
	public ArrayList<String> getKaptList(String jusoDongCode) throws Exception {
		System.out.println(jusoDongCode);
		System.out.println(jusoDongCode+"00");
		String url="http://apis.data.go.kr/1611000/AptListService/getLegaldongAptList?ServiceKey=brTzoE9eYACabonPMXJ6xy97%2B62zS3JJUNrB79VC%2FwX71vtBj6xUJF38C9qZKoZDsL1ouKC%2BqZJLxcAx3eLsHQ%3D%3D&loadCode="+jusoDongCode+"00";
//		StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1611000/AptListService/getLegaldongAptList"); /*URL*/

//        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /**/
//        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /**/
		int count=0;
		int count2=0;
        DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder dBuilder;
        ArrayList<String> aptCodeList = new ArrayList<String>();
        ArrayList<String> aptNameList = new ArrayList<String>();
        ArrayList<String> aptDoroJusoList = new ArrayList<String>();
        ArrayList<String> aptAddrList = new ArrayList<String>();
        ArrayList<String> kaptList = new  ArrayList<String>();
         dBuilder = dbFactory.newDocumentBuilder();
         Document doc = dBuilder.parse(url);
         
         doc.getDocumentElement().normalize();
         System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
         
         NodeList nList = doc.getElementsByTagName("item");
         System.out.println("파싱할 리스트 수 : "+ nList.getLength());
         count += nList.getLength();
         
         for(int temp = 0; temp < nList.getLength(); temp++ ) {
            Node nNode = nList.item(temp);
            if(nNode.getNodeType() == Node.ELEMENT_NODE) {
               
               Element eElement = (Element) nNode;
               String str  = getTagValue("kaptCode", eElement);
               aptCodeList.add(str);
            }
         }
         for(int i=0;i<aptCodeList.size();i++) {
        	 System.out.println("아파트 코드 : " + aptCodeList.get(i));
        	 String url1 = "http://apis.data.go.kr/1611000/AptBasisInfoService/getAphusBassInfo?ServiceKey=brTzoE9eYACabonPMXJ6xy97%2B62zS3JJUNrB79VC%2FwX71vtBj6xUJF38C9qZKoZDsL1ouKC%2BqZJLxcAx3eLsHQ%3D%3D&kaptCode="+aptCodeList.get(i);
        	 Document doc2 = dBuilder.parse(url1);
        	  doc2.getDocumentElement().normalize();
              System.out.println("Root element :" + doc2.getDocumentElement().getNodeName());
              
              nList = doc2.getElementsByTagName("item");
              System.out.println("파싱할 리스트 수 : "+ nList.getLength());
              count2 += nList.getLength();
              String totalString = "";
              for(int temp = 0; temp < nList.getLength(); temp++ ) {
                  Node nNode2 = nList.item(temp);
                  if(nNode2.getNodeType() == Node.ELEMENT_NODE) {
                     Element eElement2 = (Element) nNode2;
                     String str  = getTagValue("kaptName", eElement2);
                     String str1  = getTagValue("doroJuso", eElement2);
                     String str2  = getTagValue("kaptAddr", eElement2);
                     String str3 = getTagValue("kaptUsedate", eElement2);
                     String str4 = getTagValue("kaptMparea_60", eElement2);
                     String str5 = getTagValue("kaptMparea_85", eElement2);
                     String str6 = getTagValue("kaptMparea_135", eElement2);
                     String str7 = getTagValue("kaptMparea_136", eElement2);
                     
                     totalString = str+","+str1+","+str2+","+str3+","+str4+","+str5+","+str6+","+str7;
//                         aptNameList.add(str);
//                         aptDoroJusoList.add(str1);
//                         aptAddrList.add(str2);
                     System.out.println(totalString);
                      }
               }
              kaptList.add(totalString);
         }
         System.out.println("전체 아파트 정보 갯수 : "+count2);
         System.out.println(kaptList);
         return kaptList;
	}
	private static String getTagValue(String tag, Element eElement) {
		NodeList nlList = null;
		Node nValue = null;
			if(eElement.getElementsByTagName(tag).item(0) != null) {
			nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	        nValue= (Node) nlList.item(0);
			}
	       if(nValue == null) 
	           return "없음";
	       return nValue.getNodeValue();
	   }
	
}
