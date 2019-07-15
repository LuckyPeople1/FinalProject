package com.dassa.mapper;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.DriverReviewVO;
import com.dassa.vo.DriverVO;
import com.dassa.vo.MoveApplyVO;
import com.dassa.vo.MoveAuctionListVO;
import com.dassa.vo.MoveAuctionReview;
import com.dassa.vo.MoveAuctionVO;
import com.dassa.vo.MovePaymentVO;

@MapperScan("guestMoveMapper")
public interface GuestMoveMapper {
	// 결제
	public int guestMovePayment(MovePaymentVO mpVo);
	// 등록한 이사리스트
	public ArrayList<MoveApplyVO> moveList(Map<String, Object> parameters);
	// 페이징 용 카운트
	public int moveApplyTotalCount(int guestIdx);
	//마이페이지 이사 상세 정보
	public MoveApplyVO moveInfo(int applyIdx);
	//결제 내역 가져오기
	public MovePaymentVO paymentInfo(int applyIdx);
	//마이페이지 입찰시 기사 정보
	public ArrayList<MoveAuctionVO> moveAuction(int applyIdx);
	//마이페이지 입찰 상세정보
	public MoveAuctionVO moveAuctionInfo(int applyIdx);
	//결제시 스테이터스 변경
	public int moveApplyStateUpdate(int applyIdx);
	//결제 취소
	public int guestMovePaymentCencel(MovePaymentVO mpVo);
	//결제 취소시 스테이터스 변경
	public int guestMoveApplyCencel(int applyIdx);
	//마이페이지 기사 리뷰평점, 건수
	public MoveAuctionReview driverReviewSelect(int driverIdx); 
	//이사 최종완료
	public int driverMoveFinalCompletion(int applyIdx) throws Exception;
	//후기작성하기
	public DriverVO driverReviewWrite(DriverVO driverVO) throws Exception;

	public int driverReviewInsert(DriverReviewVO driverReviewVO) throws Exception;
}
