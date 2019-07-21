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
import com.dassa.vo.MoveAuctionListVO;
import com.dassa.vo.MoveAuctionReview;
import com.dassa.vo.MoveAuctionVO;
import com.dassa.vo.MoveInfoTotalData;
import com.dassa.vo.MovePaymentVO;
import com.dassa.vo.ShopReservationPageDataVO;
import com.dassa.vo.ShopReservationVO;
import com.dassa.vo.UserVO;

@Service("GusetMoveService")
public class GuestMoveService {
	
	@Resource(name="guestMoveMapper")
	private GuestMoveMapper guestMoveMapper;
	
	@Resource(name="driverMapper")
	private DriverMapper driverMapper;
	
	public MoveAuctionReview moveAuctionReview(int driverIdx) {
		return guestMoveMapper.driverReviewSelect(driverIdx);
	}
	public int guestMovePaymentCencel(MovePaymentVO mpVo,int applyIdx) {
		int result = guestMoveMapper.guestMovePaymentCencel(mpVo);
		System.out.println("service 갔다온후 :"+result);
		if(result > 0) {
			guestMoveMapper.guestMoveApplyCencel(applyIdx);
			guestMoveMapper.guestMoveDriverCencel(applyIdx);
		}
		return result;
	}
	public MoveAuctionVO moveAuctionInfo(int applyIdx) {
		return guestMoveMapper.moveAuctionInfo(applyIdx);
	}
	public MoveAuctionListVO moveAuction(int applyIdx){
		ArrayList<MoveAuctionVO> auList = guestMoveMapper.moveAuction(applyIdx);
		ArrayList<MoveAuctionReview> reList = new ArrayList<MoveAuctionReview>();
		for(int i =0; i<auList.size();i++) {
			MoveAuctionReview review = guestMoveMapper.driverReviewSelect(auList.get(i).getDriverIdx());
			reList.add(review);
		};
		MoveAuctionListVO list = new MoveAuctionListVO(auList, reList);
		return list;
	}
	public int guestMovePayment(MovePaymentVO mpVo,int applyIdx) {
		int result = guestMoveMapper.guestMovePayment(mpVo);
		if(result > 0) {
			guestMoveMapper.moveApplyStateUpdate(applyIdx);
			guestMoveMapper.moveDriverStateUpdate(applyIdx);
		}else {

		}
		return result;
	}
	public MoveApplyPage moveList(int guestIdx,int reqPage,MoveApplyPage moPage) throws Exception{
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
		ArrayList<DriverReviewVO> reList = new ArrayList<DriverReviewVO>();
		for(int i =0;i<list.size();i++) {
			DriverReviewVO reVO = guestMoveMapper.driverReviewSelectOne(list.get(i).getApplyIdx());
			if(reVO != null) {
				reList.add(reVO);
			}else {
				reList.add(null);
			}
		}
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
		
		return new MoveApplyPage(list,  reList, pageNavi );
	}
	public MoveInfoTotalData moveInfo(int applyIdx) throws Exception {
		DriverAuctionDetailVO driverAuctionDetail=driverMapper.driverSelectOne(applyIdx);	//move_apply_tbl 조회 
		List<DriverApplyOptionVO> optionList =driverMapper.driverOptionList(applyIdx);
		List<DriverApplyImgVO> imgList =driverMapper.driverImgList(applyIdx);
		MoveAuctionVO maVo = guestMoveMapper.moveAuctionInfo(applyIdx);					
		MovePaymentVO payVo = guestMoveMapper.paymentInfo(applyIdx);
		MoveAuctionReview reVo = null;
		if(maVo != null) {
			reVo = guestMoveMapper.driverReviewSelect(maVo.getDriverIdx());
		}
		DriverReviewVO reOneVO = guestMoveMapper.driverReviewSelectOne(applyIdx);
		
		return new MoveInfoTotalData(driverAuctionDetail, optionList, imgList, payVo, maVo,reVo,reOneVO);
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
	
	public ShopReservationPageDataVO selectReservationAllList(int reqPage,UserVO uservo) throws Exception{
		System.out.println("요청페이지"+reqPage);
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = guestMoveMapper.shopReservationTotalCount(uservo.getUserIdx());
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		System.out.println("시작번호"+start);
		int end = reqPage*numPerPage;
		System.out.println(start+"/"+end);
		Map<String, Object> map = new HashMap<String, Object>();
		int userIdx=uservo.getUserIdx();
		System.out.println("방문페이지유저번호"+userIdx);
		map.put("start", start);
		map.put("end", end);
		map.put("userIdx", userIdx);
		ArrayList<ShopReservationVO> list = guestMoveMapper.selectReservationAllList(map);
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		//이전 버튼 생성
		if(pageNo !=1) {
			pageNavi += "<a class='btn' href='/my/reserve?reqPage="+(pageNo-1)+"'>이전</a>";
		}
		//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
			if(reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>"+pageNo+"</span>"; //4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌 
			}else {
				pageNavi += "<a class='btn' href='/my/reserve?reqPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			pageNavi +="<a class='btn' href='/my/reserve?reqPage="+pageNo+"'>다음</a>";
		}
		ShopReservationPageDataVO pd = new ShopReservationPageDataVO(list,pageNavi);
		return pd;
	}
	public int reservationDel(int shopReservationIdx) throws Exception{
		return guestMoveMapper.reservationDel(shopReservationIdx);
	}
	
	
	//비밀번호 확인
	public UserVO getPwChkProc(UserVO userVO) {
		return guestMoveMapper.getPwChkProc(userVO);
	}
	//사용자 정보 수정
	public int getModiUser(UserVO userVO) {
		return guestMoveMapper.getModiUser(userVO);
	}
}
