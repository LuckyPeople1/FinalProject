package com.dassa.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.GuestMoveMapper;
import com.dassa.vo.MovePaymentVO;

@Service("GusetMoveService")
public class GuestMoveService {
	
	@Resource
	private GuestMoveMapper guestMoveMapper;
	
	public int guestMovePayment(MovePaymentVO mpVo) {
		return guestMoveMapper.guestMovePayment(mpVo);
	}
}
