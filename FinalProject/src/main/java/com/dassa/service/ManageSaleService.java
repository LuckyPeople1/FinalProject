package com.dassa.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.ManageSaleMapper;
import com.dassa.vo.DriverReviewVO;
import com.dassa.vo.DriverSaleVO;
import com.dassa.vo.ManageSaleMovePageData;
import com.dassa.vo.ManageSalePageData;
import com.dassa.vo.MoveApplyPage;
import com.dassa.vo.MoveApplyVO;
import com.dassa.vo.MovePaymentVO;

@Service("manageSaleService")
public class ManageSaleService {
	
	@Resource
	private ManageSaleMapper manageSaleMapper;
	
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
		ArrayList<MovePaymentVO> list = manageSaleMapper.manageSaleMoveList(parameters);
		System.out.println(list.size());
		ArrayList<DriverSaleVO> yearSum = manageSaleMapper.manageSaleMoveYearSum(parameters);
		ArrayList<DriverSaleVO> monthSum = manageSaleMapper.manageSaleMoveMonthSum(parameters);
		String pageNavi = "";
		int pageNaviSize = 3;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		int i = 1;
		if(pageNo!=1) {
			pageNavi += "<a href='/manage/sale/saleMoveList?searchType="+pagination.getSearchType()+"&reqPage="+(pageNo-1)+"'><</a>";
			
		}
		while(!(i++>pageNaviSize || pageNo>totalPage)) {
			
			if(pageNo == reqPage) {
				pageNavi += "<a class='on'>"+pageNo+"</a>";
			}
			else {
				pageNavi += "<a href='/manage/sale/saleMoveList?searchType="+pagination.getSearchType()+"&reqPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		if(pageNo<=totalPage) {
			
			pageNavi += "<a href='/manage/sale/saleMoveList?searchType="+pagination.getSearchType()+"&reqPage="+(pageNo)+"'>></a>";
					
		}
		
		return new ManageSaleMovePageData(list, pageNavi, yearSum, monthSum);
	}
}
