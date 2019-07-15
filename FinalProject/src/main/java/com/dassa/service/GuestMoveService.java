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
import com.dassa.vo.DriverMypageReviewVO;
import com.dassa.vo.DriverReviewVO;
import com.dassa.vo.DriverVO;
import com.dassa.vo.MoveApplyPage;
import com.dassa.vo.MoveApplyVO;
import com.dassa.vo.MoveAuctionVO;
import com.dassa.vo.MoveInfoTotalData;
import com.dassa.vo.MovePaymentVO;

@Service("GusetMoveService")
public class GuestMoveService {
	
	@Resource(name="guestMoveMapper")
	private GuestMoveMapper guestMoveMapper;
	
	@Resource(name="driverMapper")
	private DriverMapper driverMapper;
	
	public int guestMovePaymentCencel(MovePaymentVO mpVo,int applyIdx) {
		int result = guestMoveMapper.guestMovePaymentCencel(mpVo);
		System.out.println("service 갔다온후 :"+result);
		if(result > 0) {
			guestMoveMapper.guestMoveApplyCencel(applyIdx);
		}
		return result;
	}
	public MoveAuctionVO moveAuctionInfo(int applyIdx) {
		return guestMoveMapper.moveAuctionInfo(applyIdx);
	}
	public ArrayList<MoveAuctionVO> moveAuction(int applyIdx){
		return guestMoveMapper.moveAuction(applyIdx);
	}
	public int guestMovePayment(MovePaymentVO mpVo,int applyIdx) {
		int result = guestMoveMapper.guestMovePayment(mpVo);
		if(result > 0) {
			guestMoveMapper.moveApplyStateUpdate(applyIdx);
			
		}else {

		}
		return result;
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
		MoveAuctionVO maVo = guestMoveMapper.moveAuctionInfo(applyIdx);					
		MovePaymentVO payVo = guestMoveMapper.paymentInfo(applyIdx);
		return new MoveInfoTotalData(driverAuctionDetail, optionList, imgList, payVo, maVo);
	}
	public DriverVO driverReviewWrite(DriverVO driverVO) throws Exception {
		// TODO Auto-generated method stub
		return guestMoveMapper.driverReviewWrite(driverVO);
	}
	public int driverReviewInsert(DriverReviewVO driverReviewVO) throws Exception {
		
		return guestMoveMapper.driverReviewInsert(driverReviewVO);
	}
	
	public List<DriverMypageReviewVO> applyIdxSelectList(int guestIdx) {
	
		return guestMoveMapper.applyIdxSelectList(guestIdx);
	}
}
