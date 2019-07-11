package com.dassa.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.DriverApplyImgVO;
import com.dassa.vo.DriverApplyOptionVO;
import com.dassa.vo.DriverAuctionDetailVO;
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
public int driverTotalCount (DriverPageData pagination) throws Exception;

//이사관리 총게시물 수
public int driverMoveTotalCount(DriverPageData pagination) throws Exception;

//입찰관리 상세보기 리스티 뿌리기 
public DriverAuctionDetailVO driverSelectOne(int applyIdx) throws Exception;

public List<DriverApplyOptionVO> driverOptionList(int applyIdx) throws Exception;

public List<DriverApplyImgVO> driverImgList(int applyIdx) throws Exception;

}