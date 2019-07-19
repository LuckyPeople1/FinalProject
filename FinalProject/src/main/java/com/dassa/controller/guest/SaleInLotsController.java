package com.dassa.controller.guest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dassa.service.SaleInLotsService;
import com.dassa.vo.SaleInLotsFaqVO;
import com.dassa.vo.SaleInLotsPageDataVO;
import com.dassa.vo.SaleInLotsTremsVO;
import com.dassa.vo.SaleInLotsVO;

@Controller
@RequestMapping("/saleInLots")
public class SaleInLotsController {
	
	@Resource
	private SaleInLotsService saleInLotsService;
	/**
	 * 분양 메인 페이지
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/")
	public String saleInLotsHome() {
		
		return "guest/saleInLots/saleInLotsHome";

	}
	/**
	 * @throws Exception 
	 * 분양 정보 상세 페이지
	 * @param saleInLotsIDX
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsDetailInformation")
	public String saleInLotsDetailInformation(Model model,String saleInLotsIDX) throws Exception {
		SaleInLotsVO saleVO = saleInLotsService.saleInLotsDetailInformation(saleInLotsIDX);
		model.addAttribute("saleVO",saleVO);
		return "guest/saleInLots/saleInLotsDetailInformation";

	}
	/**
	 * 
	 * 분양 정보 페이지
	 * @param saleInLotsArea 
	 * @param saleInLotsBuildType
	 * @param saleInLotsState
	 * @return
	 * @throws Exception 
	 */
	@RequestMapping("/saleInLotsInformation")
	public String saleInLotsInformation(@RequestParam(defaultValue="1") int reqPage, String saleInLotsArea,String saleInLotsSupplyType,String saleInLotsBuildType, String saleInLotsState, Model model) throws Exception {
		
		SaleInLotsVO saleInfo = new SaleInLotsVO();
		saleInfo.setSaleInLotsArea(saleInLotsArea);
		saleInfo.setSaleInLotsSearchBuildType(stringToken(saleInLotsBuildType));
		saleInfo.setSaleInLotsSearchState(stringToken(saleInLotsState));
		saleInfo.setSaleInLotsSearchSupplyType(stringToken(saleInLotsSupplyType));
		SaleInLotsPageDataVO spVO = saleInLotsService.saleInLotsInformation(saleInfo,reqPage,saleInLotsSupplyType,saleInLotsBuildType,saleInLotsState);
		model.addAttribute("saleInLotsArea",saleInLotsArea);
		model.addAttribute("saleInLotsSupplyType",saleInLotsSupplyType);
		model.addAttribute("saleInLotsBuildType",saleInLotsBuildType);
		model.addAttribute("saleInLotsState",saleInLotsState);
		model.addAttribute("sp",spVO);
		
		return "guest/saleInLots/saleInLotsInformation";

	}
	/**
	 * 분양 가이드 페이지(주택청약절차)
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsProcess")
	public String saleInLotsProcess(Model model,@RequestParam(defaultValue="0")int tab) {
		model.addAttribute("tab",tab);
		return "guest/saleInLots/saleInLotsProcess";

	}
	/**
	 * @throws Exception 
	 * 분양 가이드 페이지(자주하는 질문)
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsFaq")
	public String saleInLotsFaq(Model model,@RequestParam(defaultValue="0")int tab) throws Exception {
		ArrayList<SaleInLotsFaqVO> list = saleInLotsService.saleInLotsFaq();
		model.addAttribute("list",list);
		model.addAttribute("tab", tab);
		return "guest/saleInLots/saleInLotsFaq";

	}
	/**
	 * @throws Exception 
	 * 분양 가이드 페이지(자주하는 질문)Ajax
	 * @param 
	 * @return
	 * @throws 
	 */
	@ResponseBody
	@RequestMapping("/saleInLotsFaqAjax")
	public ArrayList<SaleInLotsFaqVO> saleInLotsFaqAjax(String type) throws Exception {
		SaleInLotsFaqVO sfVo = new SaleInLotsFaqVO();
		sfVo.setSaleInLotsFaqType(type);
		ArrayList<SaleInLotsFaqVO> list = saleInLotsService.saleInLotsFaqAjax(sfVo);
		return list;
	}
	/**
	 * @throws Exception 
	 * 분양 가이드 페이지(용어)
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsTerms")
	public String saleInLotsTerms(Model model,@RequestParam(defaultValue="0")int tab) throws Exception {
		ArrayList<SaleInLotsTremsVO> list = saleInLotsService.saleInLotsTerms();
		model.addAttribute("list", list);
		model.addAttribute("tab",tab);
		return "guest/saleInLots/saleInLotsTerms";
	}
	/**
	 * 분양 가이드 페이지(청약계산)
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsCalculator")
	public String saleInLotsCalculator(Model model) {
		
		return "guest/saleInLots/saleInLotsCalculator";

	}
	/**
	 * @throws Exception 
	 * 분양 브랜드관 페이지
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsBrand")
	public String saleInLotsBrand(Model model, @RequestParam(defaultValue="1") int reqPage,@RequestParam(defaultValue="아이파크")String brandName) throws Exception {
		Map<String, Object> str = new HashMap<String, Object>();
		str.put("brandName", brandName);
		SaleInLotsPageDataVO spVO = saleInLotsService.saleInLotsBrand(reqPage,str);
		model.addAttribute("sp",spVO);
		model.addAttribute("tab",brandName);
		return "guest/saleInLots/saleInLotsBrand";

	}
	@ResponseBody
	@RequestMapping("/saleInLotsBrandAjax")
	public SaleInLotsPageDataVO saleInLotsBrandAjax(@RequestParam(defaultValue="1") int reqPage,String brandName) throws Exception {
		Map<String, Object> str = new HashMap<String, Object>();
		str.put("brandName", brandName);
		SaleInLotsPageDataVO spVO = saleInLotsService.saleInLotsBrand(reqPage,str);
		return spVO;

	}
	//문자열 나누기용 메소드
	public String[] stringToken(String str) {
		StringTokenizer st = new StringTokenizer(str, ",");
		String [] array = new String[st.countTokens()];
		for(int i=0;i<array.length;i++) {
			array[i] = st.nextToken();
		}
		return array;
	}

}
