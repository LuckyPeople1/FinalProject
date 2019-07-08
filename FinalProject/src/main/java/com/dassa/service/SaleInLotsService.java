package com.dassa.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.SaleInLotsMapper;
import com.dassa.vo.SaleInLotsPageDataVO;
import com.dassa.vo.SaleInLotsVO;

@Service("SaleinLotsService")
public class SaleInLotsService {
	@Resource(name="saleInLotsMapper")
	private SaleInLotsMapper saleInLotsMapper;
	
	public SaleInLotsPageDataVO saleInLotsInformation(SaleInLotsVO saleInfo,int reqPage) throws Exception{
		int numPerPage = 20;
		int totalCount = saleInLotsMapper.saleInLotstotalCount();
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		int start = (reqPage-1)*numPerPage+1;
		int end = reqPage*numPerPage;
		saleInfo.setStart(start);
		saleInfo.setEnd(end);
		ArrayList<SaleInLotsVO> list = saleInLotsMapper.saleInLotsInformation(saleInfo);
		String pageNavi = "";
		int pageNaviSize = 7;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		int i = 1;
		if(pageNo!=1) {
			pageNavi += "<a class='prevBtn pageBtn' href='/saleInLots/saleInLotsInformation?saleInLotsArea="+saleInfo.getSaleInLotsArea()+"&saleInLotsSupplyType="+saleInfo.getSaleInLotsSupplyType()+"&saleInLotsBuildType="+saleInfo.getSaleInLotsBuildType()+"&saleInLotsState="+saleInfo.getSaleInLotsState()+"&reqPage="+(pageNo-1)+"'>"
					+"<svg width='12' height='12' viewBox='0 0 512 512'>"
					+ "<path d='m380 439l-201-179 201-180c11-7 11-21 0-32-7-11-18-11-29-4l-219 197c-4 4-8 11-8 19 0 7 4 11 8 18l219 197c11 8 22 8 33 0 7-14 7-29-4-36z' transform='scale(1 1)'></path></svg></a>";
			
		}
		pageNavi += "<ul class='pageNum'>";
		while(!(i++>pageNaviSize || pageNo>totalPage)) {
			pageNavi += "<li>";
			if(pageNo == reqPage) {
				pageNavi += "<a class='selectPage'>"+pageNo+"</a>";
			}
			else {
				pageNavi += "<a class='page' href='/saleInLots/saleInLotsInformation?saleInLotsArea="+saleInfo.getSaleInLotsArea()+"&saleInLotsSupplyType="+saleInfo.getSaleInLotsSupplyType()+"&saleInLotsBuildType="+saleInfo.getSaleInLotsBuildType()+"&saleInLotsState="+saleInfo.getSaleInLotsState()+"&reqPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNavi += "</li>";
			pageNo++;
		}
		pageNavi += "</ul>";
		if(pageNo<=totalPage) {
			
			pageNavi += "<a class='nextBtn pageBtn' href='/saleInLots/saleInLotsInformation?saleInLotsArea="+saleInfo.getSaleInLotsArea()+"&saleInLotsSupplyType="+saleInfo.getSaleInLotsSupplyType()+"&saleInLotsBuildType="+saleInfo.getSaleInLotsBuildType()+"&saleInLotsState="+saleInfo.getSaleInLotsState()+"&reqPage="+(pageNo)+"'>"
					+"<svg width='12' height='12' viewBox='0 0 512 512'>"
					+ "<path d='m132 80l201 180-201 179c-11 7-11 22 0 33 7 11 22 11 33 0l219-198c4-3 7-11 7-18 0-7-3-11-7-18l-219-198c-11-3-26-3-33 8-11 7-11 21 0 32z' transform='scale(1 1)'></path></svg></a>";;
		}
		
		SaleInLotsPageDataVO spVO = new SaleInLotsPageDataVO(list, pageNavi);
		return spVO;
	}
	
}
