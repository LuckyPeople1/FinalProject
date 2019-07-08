package com.dassa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.DriverMapper;
import com.dassa.vo.DriverPageData;
import com.dassa.vo.DriverSearchVO;
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
	
	//입찰관리 리스트
	public List<MoveApplyVO> drvierAuctionList(DriverPageData pagination) throws Exception {
		
		return driverMapper.driverAuctionList(pagination);
	}
	
	//이사관리 리스트
	public List<MoveApplyVO> driverMoveList(DriverPageData pagination) throws Exception {
		
		return driverMapper.driverMoveList(pagination);
	}

	//입찰관리 총게시물수 구하기 
	public int driverTotalCount(DriverPageData pagination) {
	
		return driverMapper.driverTotalCount(pagination);
	}

	//이사관리 총게시물수 구하기 
	public int driverMoveTotalCount(DriverPageData pagination) {
		
		return driverMapper.driverMoveTotalCount(pagination);
	}


	
}
