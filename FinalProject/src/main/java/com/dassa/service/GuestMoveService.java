package com.dassa.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.DriverMapper;
import com.dassa.mapper.GuestMoveMapper;
import com.dassa.vo.DriverApplyImgVO;
import com.dassa.vo.DriverApplyOptionVO;
import com.dassa.vo.DriverAuctionDetailVO;
import com.dassa.vo.MoveApplyPage;
import com.dassa.vo.MoveApplyVO;
import com.dassa.vo.MoveInfoTotalData;
import com.dassa.vo.MovePaymentVO;

@Service("GusetMoveService")
public class GuestMoveService {
	
	@Resource
	private GuestMoveMapper guestMoveMapper;
	
	@Resource(name="driverMapper")
	private DriverMapper driverMapper;
	
	public int guestMovePayment(MovePaymentVO mpVo) {
		return guestMoveMapper.guestMovePayment(mpVo);
	}
	public MoveApplyPage moveList(int guestIdx,int reqPage,MoveApplyPage moPage){
		int numPerPage = 5;
		int totalCount = guestMoveMapper.moveApplyTotalCount(guestIdx);
		int totalPage = (totalCount%5==0)?(totalCount/5):(totalCount/5)+1;
		int start = (reqPage-1)*numPerPage+1;
		int end = reqPage*numPerPage;
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("guestIdx", guestIdx);
		parameters.put("start", start);
		parameters.put("end", end);
		ArrayList<MoveApplyVO> list = guestMoveMapper.moveList(parameters);
		String pageNavi = "";
		int pageNaviSize = 3;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		int i = 1;
		if(pageNo!=1) {
			pageNavi += "<a href='/my/moveList?guestIdx="+guestIdx+"&reqPage="+(pageNo-1)+"'><</a>";
			
		}
		pageNavi += "<ul class='pageNum'>";
		while(!(i++>pageNaviSize || pageNo>totalPage)) {
			
			if(pageNo == reqPage) {
				pageNavi += "<a class='on'>"+pageNo+"</a>";
			}
			else {
				pageNavi += "<a href='/my/moveList?guestIdx="+guestIdx+"&reqPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		if(pageNo<=totalPage) {
			
			pageNavi += "<a href='/my/moveList?guestIdx="+guestIdx+"&reqPage="+(pageNo)+"'>></a>";
					
		}
		
		return new MoveApplyPage(list, pageNavi);
	}
	public MoveInfoTotalData moveInfo(int applyIdx) throws Exception {
		DriverAuctionDetailVO driverAuctionDetail=driverMapper.driverSelectOne(applyIdx);	//move_apply_tbl 조회 
		List<DriverApplyOptionVO> optionList =driverMapper.driverOptionList(applyIdx);
		List<DriverApplyImgVO> imgList =driverMapper.driverImgList(applyIdx);
		MovePaymentVO payVo = guestMoveMapper.paymentInfo(applyIdx);
		return new MoveInfoTotalData(driverAuctionDetail, optionList, imgList, payVo);
	}
}
