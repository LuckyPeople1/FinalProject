package com.dassa.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.DriverMapper;
import com.dassa.vo.DriverApplyImgVO;
import com.dassa.vo.DriverApplyOptionVO;
import com.dassa.vo.DriverAuctionDetailVO;
import com.dassa.vo.DriverPageData;
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
	public int driverTotalCount(DriverPageData pagination) throws Exception {
	
		return driverMapper.driverTotalCount(pagination);
	}

	//이사관리 총게시물수 구하기 
	public int driverMoveTotalCount(DriverPageData pagination) throws Exception {
		
		return driverMapper.driverMoveTotalCount(pagination);
	}

	//입찰관리 상세보기 리스트 뿌리기.
	public DriverAuctionDetailVO driverSelectOne(int applyIdx) throws Exception {	//apply_move_tbl 에서 apply_idx기준으로 값 가져오기
		
		return driverMapper.driverSelectOne(applyIdx);
	}

	public List<DriverApplyOptionVO> driverOptionList(int applyIdx) throws Exception {
		
		return driverMapper.driverOptionList(applyIdx);	
		
	}

	public List<DriverApplyImgVO> driverImgList(int applyIdx) throws Exception {
		
		return driverMapper.driverImgList(applyIdx);
	}

}
