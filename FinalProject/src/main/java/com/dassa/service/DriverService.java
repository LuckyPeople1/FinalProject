package com.dassa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.DriverMapper;
import com.dassa.vo.MoveApplyVO;
import com.dassa.vo.UserVO;

@Service("DriverService")
public class DriverService {
	
	@Resource(name="driverMapper")
	private DriverMapper driverMapper;
	
	public UserVO selectOne(UserVO userVO) throws Exception {
		
		return driverMapper.driverMyPage(userVO);
	}

	public int driverMypageUpdate(UserVO userVO) throws Exception {
		
		return driverMapper.driverMypageUpdate(userVO);
	}

	public int driverMypageUpdateText(UserVO userVO) throws Exception {
		
		return driverMapper.driverMypageUpdateText(userVO);
	}

	public List<MoveApplyVO> drvierAuctionList() throws Exception {
		
		return driverMapper.driverAuctionList();
	}

	public List<MoveApplyVO> driverMoveList() throws Exception {
		
		return driverMapper.driverMoveList();
	}

	
}
