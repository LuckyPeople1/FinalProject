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

	public List<MoveApplyVO> drvierAuctionList(DriverPageData pagination) throws Exception {
		
		return driverMapper.driverAuctionList(pagination);
	}
	
	/*
	//입찰 페이징, 검색 
	public DriverPageData driverAuctionList(int reqPage, DriverSearchVO driverSearchVO) {
		
		int numPerPage=10; 	//한페이지당 보는 게시물 수 
		
		int totalCount = driverMapper.driverAuctionTotalCount();	//총게시물수
		
		
		return driverMapper.driverAuctionList(driverSearchVO);
	}*/

	public List<MoveApplyVO> driverMoveList() throws Exception {
		
		return driverMapper.driverMoveList();
	}

	public int driverTotalCount(DriverPageData pagination) {
	
		return driverMapper.driverTotalCount(pagination);
	}


	
}
