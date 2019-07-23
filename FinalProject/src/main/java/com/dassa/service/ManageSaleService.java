package com.dassa.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.DriverMapper;
import com.dassa.mapper.ManageSaleMapper;
import com.dassa.vo.DriverApplyImgVO;
import com.dassa.vo.DriverApplyOptionVO;
import com.dassa.vo.DriverSaleVO;
import com.dassa.vo.ManageSaleMovePageData;
import com.dassa.vo.ManageSalePageData;
import com.dassa.vo.ManageSaleShopPageData;
import com.dassa.vo.MovePaymentVO;
import com.dassa.vo.ShopPaymentVO;
import com.dassa.vo.SaleMoveInfoData;
import com.dassa.vo.SaleMoveInfoVO;

@Service("manageSaleService")
public class ManageSaleService {
	
	@Resource
	private ManageSaleMapper manageSaleMapper;
	
	@Resource
	private DriverMapper driverMapper;
	
	public SaleMoveInfoData saleMoveInfo(int movePaymentIdx) throws Exception {
		SaleMoveInfoVO smVO = manageSaleMapper.saleMoveInfo(movePaymentIdx);
		System.out.println(smVO.getApplyIdx());
		List<DriverApplyOptionVO> optionList =driverMapper.driverOptionList(smVO.getApplyIdx());
		List<DriverApplyImgVO> imgList =driverMapper.driverImgList(smVO.getApplyIdx());
		SaleMoveInfoData smData = new SaleMoveInfoData(smVO, optionList, imgList);
		return smData;
	}
	public ManageSaleShopPageData salePremiumList(ManageSalePageData pagination, int reqPage) {
		int numPerPage = 5;
		int totalCount = manageSaleMapper.manageSaleShopTotalCount(pagination);
		System.out.println(totalCount);
		int totalPage = (totalCount%5==0)?(totalCount/5):(totalCount/5)+1;
		int start = (reqPage-1)*numPerPage+1;
		int end = reqPage*numPerPage;
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("pagination", pagination);
		parameters.put("start", start);
		parameters.put("end", end);
		ArrayList<ShopPaymentVO> list = null;
		
		if(totalCount != 0){
			list = manageSaleMapper.salePremiumList(parameters);
		
		}
		
		String pageNavi = "";
		int pageNaviSize = 3;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		int i = 1;
		
		pageNavi += "<li class='first arrow'>";
		pageNavi += "<a href='/manage/sale/salePremiumList?searchType="+pagination.getSearchType()+"&searchWord="+pagination.getSearchWord()+"&minDate="+pagination.getMaxDate()+"&maxDate="+pagination.getMaxDate()+"&itemAdd="+pagination.getItemAdd()+"&powerLink="+pagination.getPowerLink()+"&minAmount="+pagination.getMinAmount()+"&maxAmount="+pagination.getMaxAmount()+"&reqPage=1'></a>";
		pageNavi += "</li>";
		if(pageNo != 1) {
			pageNavi += "<li class='prev arrow'>";
			pageNavi += "<a href='/manage/sale/salePremiumList?searchType="+pagination.getSearchType()+"&searchWord="+pagination.getSearchWord()+"&minDate="+pagination.getMaxDate()+"&maxDate="+pagination.getMaxDate()+"&itemAdd="+pagination.getItemAdd()+"&powerLink="+pagination.getPowerLink()+"&minAmount="+pagination.getMinAmount()+"&maxAmount="+pagination.getMaxAmount()+"&reqPage="+(pageNo-1)+"'></a>";
			pageNavi += "</li>";
		}else {
			pageNavi += "<li class='prev arrow'>";
			pageNavi += "<a href='#none'></a>";
			pageNavi += "</li>";
		}
		
		while(!(i++>pageNaviSize || pageNo>totalPage)) {
			
			if(pageNo == reqPage) {
				pageNavi += "<li class='on'>";
				pageNavi += "<a>"+pageNo+"</a>";
				pageNavi += "</li>";
			}
			else {
				pageNavi += "<li class=''>";
				pageNavi += "<a href='/manage/sale/salePremiumList?searchType="+pagination.getSearchType()+"&searchWord="+pagination.getSearchWord()+"&minDate="+pagination.getMaxDate()+"&maxDate="+pagination.getMaxDate()+"&itemAdd="+pagination.getItemAdd()+"&powerLink="+pagination.getPowerLink()+"&minAmount="+pagination.getMinAmount()+"&maxAmount="+pagination.getMaxAmount()+"&reqPage="+pageNo+"'>"+pageNo+"</a>";
				pageNavi += "</li>";
			}
			pageNo++;
		}
		if(pageNo<=totalPage) {
			pageNavi += "<li class='next arrow'>";
			pageNavi += "<a href='/manage/sale/salePremiumList?searchType="+pagination.getSearchType()+"&searchWord="+pagination.getSearchWord()+"&minDate="+pagination.getMaxDate()+"&maxDate="+pagination.getMaxDate()+"&itemAdd="+pagination.getItemAdd()+"&powerLink="+pagination.getPowerLink()+"&minAmount="+pagination.getMinAmount()+"&maxAmount="+pagination.getMaxAmount()+"&reqPage="+(pageNo)+"'></a>";
			pageNavi += "</li>";		
		}else {
			pageNavi += "<li class='next arrow'>";
			pageNavi += "<a href='#none'></a>";
			pageNavi += "</li>";
		}
		pageNavi += "<li class='end arrow'>";
		pageNavi += "<a href='/manage/sale/salePremiumList?searchType="+pagination.getSearchType()+"&searchWord="+pagination.getSearchWord()+"&minDate="+pagination.getMaxDate()+"&maxDate="+pagination.getMaxDate()+"&itemAdd="+pagination.getItemAdd()+"&powerLink="+pagination.getPowerLink()+"&minAmount="+pagination.getMinAmount()+"&maxAmount="+pagination.getMaxAmount()+"&reqPage="+totalPage+"'></a>";
		pageNavi += "</li>";
		
		return new ManageSaleShopPageData(list, pageNavi);
	}
	public ManageSaleMovePageData driverMoveList(ManageSalePageData pagination,int reqPage){
		int numPerPage = 5;
		int totalCount = manageSaleMapper.manageSaleTotalCount(pagination);
		System.out.println(totalCount);
		int totalPage = (totalCount%5==0)?(totalCount/5):(totalCount/5)+1;
		int start = (reqPage-1)*numPerPage+1;
		int end = reqPage*numPerPage;
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("pagination", pagination);
		parameters.put("start", start);
		parameters.put("end", end);
		ArrayList<MovePaymentVO> list = null;
		ArrayList<DriverSaleVO> yearSum = null;
		ArrayList<DriverSaleVO> monthSum = null;
		if(totalCount != 0){
			list = manageSaleMapper.manageSaleMoveList(parameters);
			yearSum = manageSaleMapper.manageSaleMoveYearSum(parameters);
			monthSum = manageSaleMapper.manageSaleMoveMonthSum(parameters);
		}
		
		String pageNavi = "";
		int pageNaviSize = 3;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		int i = 1;
		
		pageNavi += "<li class='first arrow'>";
		pageNavi += "<a href='/manage/sale/saleMoveList?searchType="+pagination.getSearchType()+"&searchWord="+pagination.getSearchWord()+"&minDate="+pagination.getMaxDate()+"&maxDate="+pagination.getMaxDate()+"&minAmount="+pagination.getMinAmount()+"&maxAmount="+pagination.getMaxAmount()+"&reqPage=1'></a>";
		pageNavi += "</li>";
		if(pageNo != 1) {
			pageNavi += "<li class='prev arrow'>";
			pageNavi += "<a href='/manage/sale/saleMoveList?searchType="+pagination.getSearchType()+"&searchWord="+pagination.getSearchWord()+"&minDate="+pagination.getMaxDate()+"&maxDate="+pagination.getMaxDate()+"&minAmount="+pagination.getMinAmount()+"&maxAmount="+pagination.getMaxAmount()+"&reqPage="+(pageNo-1)+"'></a>";
			pageNavi += "</li>";
		}else {
			pageNavi += "<li class='prev arrow'>";
			pageNavi += "<a href='#none'></a>";
			pageNavi += "</li>";
		}
		
		while(!(i++>pageNaviSize || pageNo>totalPage)) {
			
			if(pageNo == reqPage) {
				pageNavi += "<li class='on'>";
				pageNavi += "<a>"+pageNo+"</a>";
				pageNavi += "</li>";
			}
			else {
				pageNavi += "<li class=''>";
				pageNavi += "<a href='/manage/sale/saleMoveList?searchType="+pagination.getSearchType()+"&searchWord="+pagination.getSearchWord()+"&minDate="+pagination.getMaxDate()+"&maxDate="+pagination.getMaxDate()+"&minAmount="+pagination.getMinAmount()+"&maxAmount="+pagination.getMaxAmount()+"&reqPage="+pageNo+"'>"+pageNo+"</a>";
				pageNavi += "</li>";
			}
			pageNo++;
		}
		if(pageNo<=totalPage) {
			pageNavi += "<li class='next arrow'>";
			pageNavi += "<a href='/manage/sale/saleMoveList?searchType="+pagination.getSearchType()+"&searchWord="+pagination.getSearchWord()+"&minDate="+pagination.getMaxDate()+"&maxDate="+pagination.getMaxDate()+"&minAmount="+pagination.getMinAmount()+"&maxAmount="+pagination.getMaxAmount()+"&reqPage="+(pageNo)+"'></a>";
			pageNavi += "</li>";		
		}else {
			pageNavi += "<li class='next arrow'>";
			pageNavi += "<a href='#none'></a>";
			pageNavi += "</li>";
		}
		pageNavi += "<li class='end arrow'>";
		pageNavi += "<a href='/manage/sale/saleMoveList?searchType="+pagination.getSearchType()+"&searchWord="+pagination.getSearchWord()+"&minDate="+pagination.getMaxDate()+"&maxDate="+pagination.getMaxDate()+"&minAmount="+pagination.getMinAmount()+"&maxAmount="+pagination.getMaxAmount()+"&reqPage="+totalPage+"'></a>";
		pageNavi += "</li>";
		
		return new ManageSaleMovePageData(list, pageNavi, yearSum, monthSum);
	}
}
