package com.dassa.controller.shop;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.dassa.common.FileCommon;
import com.dassa.service.ShopService;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.ShopItemImgVO;
import com.dassa.vo.ShopItemPageDataVO;
import com.dassa.vo.ShopItemSearchVO;
import com.dassa.vo.ShopItemVO;

@Controller
@RequestMapping("/shop")
public class ShopItemController {
	
	@Autowired
	@Qualifier(value="shopService")

	@Resource
	private FileCommon fileCommon;
	@Resource
	private ShopService shopService;
	/**
	 * 부동산 매물관리 페이지(itemList)
	 * 
	 * @return
	 */
	@RequestMapping("/item")
	public ModelAndView ShopItem(HttpServletRequest request)throws Exception {
		int reqPage;
		try {
			reqPage=Integer.parseInt(request.getParameter("reqPage"));
		}catch(NumberFormatException e){
			reqPage=1;
		}
		ModelAndView mav = new ModelAndView();
		ShopItemPageDataVO sipd = shopService.selectAllList(reqPage);
		if(!sipd.isEmpty()) {
			ArrayList<ShopItemVO> sItemList = sipd.getList();
			String pageNavi = sipd.getPageNavi();
			mav.addObject("list",sItemList);
			mav.addObject("pageNavi",pageNavi);
			mav.setViewName("shop/item/shopItemList");
		}
		return mav;
	}
	/**
	 * 부동산 매물등록 페이지(itemAdd)
	 * @return
	 */
	@RequestMapping("/itemAdd")
	public String ShopItemAdd() {
		return "shop/item/shopItemAdd";
	}
	/**
	 * 부동산 매물 등록 로직(ItemAdd)
	 * @param request
	 * @param fileImg
	 * @param sItem
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/shopItemAdd")
	public String ShopItemAdd(HttpServletRequest httpServletRequest, List<MultipartFile> fileImg, ShopItemVO sItem, ShopItemImgVO sItemImg, @RequestParam int userIdx)throws Exception {
		List<ShopItemImgVO> imgList	=	new ArrayList<ShopItemImgVO>();
		System.out.println("입주형태1 : "+sItem.getShopItemMovingDate1());
		System.out.println("입주형태2 : "+sItem.getShopItemMovingDate2());
		System.out.println("넘어온 파일 : "+fileImg);
		
		for(MultipartFile img : fileImg) {
			System.out.println("파일 오리진 이름 : "+img.getOriginalFilename());
			
			if(!img.getOriginalFilename().equals("")) {
				String[] fileInfo	=	fileCommon.fileUp(img, httpServletRequest, "shopItem");
				System.out.println("넘어온 파일 배열에 담음"+fileInfo);
				
				ShopItemImgVO sItemImgVO = new ShopItemImgVO();
				System.out.println("담을 파일 이름 : "+fileInfo[0]);
				sItemImgVO.setShopImgName(fileInfo[0]);
				System.out.println("담은 파일 이름"+sItemImgVO.getShopImgName());
				
				System.out.println("담을 파일 경로 : "+fileInfo[1]);
				sItemImgVO.setShopImgPath(fileInfo[1]);
				System.out.println("파일경로"+sItemImgVO.getShopImgPath());
				
				imgList.add(sItemImgVO);
				System.out.println("최종이미지리스트"+imgList);
			}
		}
		int count = shopService.shopCount(userIdx);
		System.out.println("등록 가능 매물 개수 : "+count);
		if(count>0) {
			shopService.shopItemAdd(sItem, imgList);
			System.out.println("상품등록할 상품idx"+sItem.getShopItemIdx());
			System.out.println("상품등록할 userIdx"+userIdx);
			shopService.shopCountUpdate(sItem);
			
			return "redirect:/shop/item";
		}else {
			return "redirect:/shop/";
		}
	}
	/**
	 * 부동산 매물 상세페이지(itemInfo)
	 * @return
	 */
	@RequestMapping("/itemInfo")
	public ModelAndView ShopItemInfo(@RequestParam int shopItemIdx) {
		ShopItemVO item;
		List<ShopItemImgVO> siiList;
		ModelAndView mav = null;
		try {
			siiList = shopService.shopItemImgList(shopItemIdx);
			item = shopService.shopItemInfo(shopItemIdx);
			mav = new ModelAndView();
			if(item.getShopItemManagePriceOption()!=null) {
				String [] ss = item.getShopItemManagePriceOption().split(","); //관리비 항목 가져와서 배열로 저장
				String[] simpo = new String[7]; //관리비 항목 체크
				int i = 0;
				for(; i<ss.length;i++) {
					simpo[i] = ss[i];
				}
				for(;i<simpo.length;i++) {
					simpo[i]=null;
					System.out.println(simpo[i]);
				}
				mav.addObject("simpo",simpo); //관리비 항목
			}
			if(item.getShopItemOption()!=null) {
				String [] sss = item.getShopItemOption().split(","); //옵션 항목 가져와서 배열로 저장
				String[] sio = new String[13]; //옵션 항목 체크
				int j = 0;
			
				for(; j<sss.length;j++) {
					sio[j] = sss[j];
				}
				for(; j<sio.length;j++) {
					sio[j]=null;
					System.out.println(sio[j]);
				}
				mav.addObject("sio",sio); //옵션 항목
			}
				mav.addObject("item",item); //매물 정보
				mav.addObject("siiList",siiList);
				mav.setViewName("shop/item/shopItemInfo");
				System.out.println("입주형태1 : "+item.getShopItemMovingDate1());
				System.out.println("입주형태2 : "+item.getShopItemMovingDate2());
				System.out.println("세대 수 : "+item.getShopItemHouseNumber());
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
	}
	/**
	 * 중개사 페이지 - 매물 수정 로직(itemModify) - 미완성
	 * @param httpServletRequest
	 * @param fileImg
	 * @param sItem
	 * @param sItemImg
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/shopItemModify")
	public String ShopItemModify(HttpServletRequest httpServletRequest, List<MultipartFile> fileImg, ShopItemVO sItem, ShopItemImgVO sItemImg)throws Exception {
		System.out.println(fileImg.size());
		System.out.println(fileImg.get(0));
		System.out.println(fileImg.get(1).getName());
		System.out.println(fileImg.get(2).getOriginalFilename());
		System.out.println(fileImg.get(3).getOriginalFilename());
		System.out.println(fileImg.get(4).getOriginalFilename());
		List<ShopItemImgVO> imgList	=	new ArrayList<ShopItemImgVO>();
		for(MultipartFile img : fileImg) {
			System.out.println("파일 오리진 이름 : "+img.getOriginalFilename());
			
			if(!img.getOriginalFilename().equals("")) {
				String[] fileInfo	=	fileCommon.fileUp(img, httpServletRequest, "shopItem");
				System.out.println("넘어온 파일 배열에 담음"+fileInfo);
				
				ShopItemImgVO sItemImgVO = new ShopItemImgVO();
				System.out.println("담을 파일 이름 : "+fileInfo[0]);
				sItemImgVO.setShopImgName(fileInfo[0]);
				System.out.println("담은 파일 이름"+sItemImgVO.getShopImgName());
				
				System.out.println("담을 파일 경로 : "+fileInfo[1]);
				sItemImgVO.setShopImgPath(fileInfo[1]);
				System.out.println("담은 파일경로"+sItemImgVO.getShopImgPath());
				
				imgList.add(sItemImgVO);
				System.out.println("최종이미지리스트"+imgList);
			}
		}
		shopService.shopItemModify(sItem, imgList);
//		shopService.shopItemImgAdd(imgList);
		return "redirect:/shop/item";
	}
	/**
	 * 중개사 페이지 - 매물 삭제 로직(itemDelete)
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/shopItemDelete")
	public String shopItemDelete(@RequestParam int shopItemIdx)throws Exception {
		int result = shopService.shopItemDelete(shopItemIdx);
		if(result>0) {
			return "redirect:/shop/item";
		}
		return "redirect:/shop/item";
	}
	/**
	 * 중개사 페이지 - 매물 판매 중단 로직(itemStop)
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/shopItemStop")
	public String shopItemStop(@RequestParam int shopItemIdx)throws Exception {
		int result = shopService.shopItemStop(shopItemIdx);
		if(result>0) {
			return "redirect:/shop/item";
		}
		return "redirect:/shop/item";
	}
	/**
	 * 중개사 페이지 - 매물 판매 진행 로직(itemIng)
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/shopItemIng")
	public String shopItemIng(@RequestParam int shopItemIdx)throws Exception {
		int result = shopService.shopItemIng(shopItemIdx);
		if(result>0) {
			return "redirect:/shop/item";
		}
		return "redirect:/shop/item";
	}
	/**
	 * 사용자 페이지 - 매물 상세정보(itemVIew) 
	 * @param shopItemIdx
	 * @return
	 */
	@RequestMapping("/itemView")
	public ModelAndView shopItemView(@RequestParam int shopItemIdx) {
		ShopItemVO item;
		List<ShopItemImgVO> siiList;
		ModelAndView mav = null;
		try {
			siiList = shopService.shopItemImgList(shopItemIdx);
			item = shopService.shopItemInfo(shopItemIdx);
			mav = new ModelAndView();
			if(item.getShopItemManage().equals("있음")) {
				String [] ss = item.getShopItemManagePriceOption().split(","); //관리비 항목 가져와서 배열로 저장
				String[] simpo = new String[7]; //관리비 항목 체크
				int i = 0;
				for(; i<ss.length;i++) {
					simpo[i] = ss[i];
				}
				for(;i<simpo.length;i++) {
					simpo[i]=null;
					System.out.println(simpo[i]);
				}
				mav.addObject("simpo",simpo); //관리비 항목
			}
			if(item.getShopItemOption()!=null) {
				String [] sss = item.getShopItemOption().split(","); //옵션 항목 가져와서 배열로 저장
				String[] sio = new String[13]; //옵션 항목 체크
				int j = 0;
			
				for(; j<sss.length;j++) {
					sio[j] = sss[j];
				}
				for(; j<sio.length;j++) {
					sio[j]=null;
					System.out.println(sio[j]);
				}
				mav.addObject("sio",sio); //옵션 항목
			}
				mav.addObject("item",item); //매물 정보
				mav.addObject("siiList",siiList); //매물 이미지
				System.out.println("view페이지 이미지 : "+siiList);
				mav.setViewName("shop/item/shopItemView");
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
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
                     String str11 = getTagValue("kaptdaCnt", eElement2);			//세대수 11
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
