package com.dassa.mapper;

import java.util.ArrayList;
import java.util.Map;
import com.dassa.vo.MoveApplyVO;
import com.dassa.vo.MovePaymentVO;

public interface GuestMoveMapper {
	public int guestMovePayment(MovePaymentVO mpVo);
	public ArrayList<MoveApplyVO> moveList(Map<String, Object> parameters);
	public int moveApplyTotalCount(int guestIdx);
	public MoveApplyVO moveInfo(int applyIdx);
	public MovePaymentVO paymentInfo(int applyIdx);
}
