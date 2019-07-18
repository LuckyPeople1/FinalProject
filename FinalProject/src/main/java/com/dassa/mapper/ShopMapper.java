package com.dassa.mapper;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.JusoDongVO;
import com.dassa.vo.JusoGuVO;
import com.dassa.vo.ShopItemImgVO;
import com.dassa.vo.ShopItemPageDataVO;
import com.dassa.vo.ShopItemSearchVO;
import com.dassa.vo.ShopItemVO;
import com.dassa.vo.ShopReservationVO;

@MapperScan("shopMapper")
public interface ShopMapper {
	//주소 구 조회
	public List<JusoGuVO> getJusoGuList(String jusoCityCode) throws Exception;
	
	//주소 동 조회
	public List<JusoDongVO> getJusoDongList(String jusoGuCode) throws Exception;
	
	//매물 등록
	public int shopItemAdd(ShopItemVO sItem) throws Exception;
	
	//매물 이미지 등록
	public int shopItemImgAdd(List<ShopItemImgVO> sItemImgList) throws Exception;
	
	//매물 관리 총 게시물 수
	public int shopItemTotalCount() throws Exception;
	
	//매물 총 리스트
	public ArrayList<ShopItemVO> selectAllList(@Param("start") int start,@Param("end") int end) throws Exception;
	
	//매물 수정
	public int shopItemModify(ShopItemVO sItem) throws Exception;
	
	//매물 이미지 수정
	public int shopItemImgModify(List<ShopItemImgVO> sItemImgList) throws Exception;
	
	//매물 검색 게시물 수
	public int shopItemSearchCount(Map<String, Object> map) throws Exception;
	
	//매물 검색 리스트
	public ArrayList<ShopItemVO> itemSearchList(@Param("start")int start, @Param("end") int end, Map<String, Object> map) throws Exception;
	
	//매물 상세 보기
	public ShopItemVO shopItemInfo(int shopItemIdx) throws Exception;
	
	//매물 이미지 뿌리기
	public List<ShopItemImgVO> shopItemImgList(int shopItemIdx) throws Exception;
	
	//매물 삭제
	public int shopItemDelete(int shopItemIdx) throws Exception;
	
	//방문 예약 신청
	public int ShopReserveJoin(ShopReservationVO sReserVO) throws Exception;
}
