package com.dassa.controller.guest;

import java.util.StringTokenizer;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dassa.service.SaleInLotsService;
import com.dassa.vo.SaleInLotsPageDataVO;
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
	 * @param saleInLotssupplyType
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
		model.addAttribute("sp",spVO);
		
		return "guest/saleInLots/saleInLotsInformation";

	}
	/**
	 * 분양 테마 페이지
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsThema")
	public String saleInLotsThema() {
		return "guest/saleInLots/saleInLotsThema";

	}
	/**
	 * 분양 일정 페이지
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsSchedule")
	public String saleInLotsSchedule() {
		return "guest/saleInLots/saleInLotsSchedule";

	}
	/**
	 * 분양 가이드 페이지
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsProcess")
	public String saleInLotsProcess() {
		return "guest/saleInLots/saleInLotsProcess";

	}
	/**
	 * 분양 브랜드관 페이지
	 * @param 
	 * @return
	 * @throws 
	 */
	@RequestMapping("/saleInLotsBrand")
	public String saleInLotsBrand() {
		return "guest/saleInLots/saleInLotsBrand";

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
