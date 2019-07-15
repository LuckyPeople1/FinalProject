package com.dassa.mapper;

import java.util.ArrayList;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.DriverReviewVO;
import com.dassa.vo.DriverVO;
import com.dassa.vo.MoveApplyVO;
import com.dassa.vo.MoveAuctionVO;
import com.dassa.vo.MovePaymentVO;

@MapperScan("guestMoveMapper")
public interface GuestMoveMapper {
	public int guestMovePayment(MovePaymentVO mpVo);
	public ArrayList<MoveApplyVO> moveList(Map<String, Object> parameters);
	public int moveApplyTotalCount(int guestIdx);
	public MoveApplyVO moveInfo(int applyIdx);
	public MovePaymentVO paymentInfo(int applyIdx);
	public ArrayList<MoveAuctionVO> moveAuction(int applyIdx);
	public MoveAuctionVO moveAuctionInfo(int applyIdx);
	public int moveApplyStateUpdate(int applyIdx);
	public int guestMovePaymentCencel(MovePaymentVO mpVo);
	public int guestMoveApplyCencel(int applyIdx);
	
	//후기작성하기
	public DriverVO driverReviewWrite(DriverVO driverVO) throws Exception;

	public int driverReviewInsert(DriverReviewVO driverReviewVO) throws Exception;
}
