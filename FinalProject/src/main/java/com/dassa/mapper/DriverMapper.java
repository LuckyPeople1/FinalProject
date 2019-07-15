package com.dassa.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.DriverApplyImgVO;
import com.dassa.vo.DriverApplyOptionVO;
import com.dassa.vo.DriverAuctionDetailVO;
import com.dassa.vo.DriverPageData;
import com.dassa.vo.DriverReviewVO;
import com.dassa.vo.DriverVO;
import com.dassa.vo.MoveApplyVO;
import com.dassa.vo.MovePaymentVO;
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

//입찰관리 상세보기 리트 뿌리기.(상품)
public DriverAuctionDetailVO driverSelectOne(int applyIdx) throws Exception;

//입찰관리 상세보기 리스트 뿌리기.(옵션)
public List<DriverApplyOptionVO> driverOptionList(int applyIdx) throws Exception;

//입찰관리 상세보기 리스트 뿌리기.(이미지)
public List<DriverApplyImgVO> driverImgList(int applyIdx) throws Exception;

//입찰관리 견적값 넣기 insert 하기
public int driverAuctionInsert(DriverVO driverVO) throws Exception;

//입찰관리 입찰상태 update 하기
public int driverAuctionUpdate(int applyIdx) throws Exception;

//이사관리 상세보기 기사정보 값 보기
public DriverVO driverMoveSelectOne(int applyIdx) throws Exception;



}