package com.dassa.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.DriverPageData;
import com.dassa.vo.MoveApplyVO;
import com.dassa.vo.UserVO;

@MapperScan("driverMapper")
public interface DriverMapper {
 //mapper.xml의 ID을 의미하는 것은 driverMyapge
 public UserVO driverMyPage(UserVO userVO) throws Exception;

 public int driverMypageUpdate(UserVO userVO)throws Exception;

public int driverMypageUpdateText(UserVO userVO) throws Exception;

//입찰관리 리스트
public List<MoveApplyVO> driverAuctionList(DriverPageData pagination) throws Exception;

//이사관리 리스트
public List<MoveApplyVO> driverMoveList(DriverPageData pagination) throws Exception;

//입찰관리 총게시물 수
public int driverTotalCount (DriverPageData pagination);

//이사관리 총게시물 수
public int driverMoveTotalCount(DriverPageData pagination);	

}
