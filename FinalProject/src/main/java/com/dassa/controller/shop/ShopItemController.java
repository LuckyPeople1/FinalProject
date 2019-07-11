package com.dassa.controller.shop;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.dassa.service.ShopService;
import com.dassa.vo.ShopItemPageDataVO;
import com.dassa.vo.ShopItemVO;

@Controller
@RequestMapping("/shop")
public class ShopItemController {
	
	@Autowired
	@Qualifier(value="shopService")

	private ShopService shopService;
	/**
	 * 부동산 매물관리 페이지(item)
	 * @return
	 */
	@RequestMapping("/item")
	public String ShopRoom() {
		return "shop/item/shopItemList";
	}
	/**
	 * 부동산 매물등록 페이지(itemAdd)
	 * @return
	 */
	@RequestMapping("/itemAdd")
	public String ShopRoomJoin() {
		return "shop/item/shopItemAdd";
	}
	/**
	 * 부동산 매물 상세페이지(itemInfo)
	 * @return
	 */
	@RequestMapping("/itemInfo")
	public String ShopRoomInfo() {
		return "shop/item/shopItemInfo";
	}
	/**
	 * 매물등록로직(shopItemAdd)
	 * @param request
	 * @param shopItemFileName
	 * @param sItem
	 * @return
	 */
	@RequestMapping("/shopItemAdd")
	public String ShopItemAdd(MultipartHttpServletRequest  request,@RequestParam("img_0") MultipartFile[] img, ShopItemVO sItem)throws Exception {
		String uploadPath = request.getSession().getServletContext().getRealPath("/upload/shop");
		String fileOriginName = "";
		String fileMultiName ="";
		for(int i=0; i<img.length; i++) {
			if(!img[i].isEmpty()) {
				fileOriginName = img[i].getOriginalFilename();
				System.out.println("기존 파일 명 : "+fileOriginName);
				SimpleDateFormat formatter = new SimpleDateFormat("YYYYMMDD_HHMMSS_"+i);
				Calendar now = Calendar.getInstance();
				String extension = fileOriginName.split("\\.")[1]; //확장자명
				fileOriginName = formatter.format(now.getTime())+"."+extension; //날짜+확장자명 
				System.out.println("변경된 파일 명 : "+fileOriginName);
				File f = new File(uploadPath+"\\"+fileOriginName);
				img[i].transferTo(f);
				if(i==0) {fileMultiName += fileOriginName;}
				else {fileMultiName += ","+fileOriginName;}
			}
			sItem.setUserIdx(0); //매물 올린 부동산
			System.out.println(sItem);
			sItem.setShopItemFileName(fileMultiName);
			shopService.shopItemAdd(sItem);
			return "shop/shopHome";
		}
		return "shop/shopHome";	
	}
	
	/**
	 * 아파트 목록 API(아파트코드, 아파트명)
	 * @param jusoDongCode
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("/kaptList")
	public ArrayList<String> getKaptList(String jusoDongCode) throws Exception {
		System.out.println(jusoDongCode);
		System.out.println(jusoDongCode+"00");
		String url="http://apis.data.go.kr/1611000/AptListService/getLegaldongAptList?ServiceKey=brTzoE9eYACabonPMXJ6xy97%2B62zS3JJUNrB79VC%2FwX71vtBj6xUJF38C9qZKoZDsL1ouKC%2BqZJLxcAx3eLsHQ%3D%3D&loadCode="+jusoDongCode+"00";
		int count=0;
		int count2=0;
        DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder dBuilder;
        ArrayList<String> aptCodeList = new ArrayList<String>();
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
                     String str  = getTagValue("kaptName", eElement2); 				//아파트이름 0
                     String str1  = getTagValue("doroJuso", eElement2);				//도로명주소 1
                     String str2  = getTagValue("kaptAddr", eElement2);				//지번주소 2
                     String str3 = getTagValue("kaptUsedate", eElement2);			//준공년도(사용승인일) 3
                     String str4 = getTagValue("kaptMparea_60", eElement2);		//전용면적별 세대현황 4
                     String str5 = getTagValue("kaptMparea_85", eElement2);		//전용면적별 세대현황 5
                     String str6 = getTagValue("kaptMparea_135", eElement2);		//전용면적별 세대현황 6
                     String str7 = getTagValue("kaptMparea_136", eElement2);		//전용면적별 세대현황 7
                     String str8 = getTagValue("kaptBcompany", eElement2);		//시공사 8
                     String str9 = getTagValue("codeHeatNm", eElement2);			//난방방식	 9
                     String str10 = getTagValue("codeHalNm", eElement2); 			//복도유형 10
                     String str11 = getTagValue("kaptdaCnt", eElement2);			//세대수
                     totalString = str+","+str1+","+str2+","+str3+","+str4+","+str5+","+str6+","+str7+","+str8+","+str9+","+str10+","+str11;
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
           return "정보없음";
       return nValue.getNodeValue();
   }
}
