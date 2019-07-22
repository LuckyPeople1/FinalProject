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
import com.dassa.vo.ShopMemberVO;
import com.dassa.vo.ShopPowerItemVO;
import com.dassa.vo.ShopPremiumItemVO;
import com.dassa.vo.ShopReservationVO;
import com.dassa.vo.UserVO;

@MapperScan("shopMapper")
public interface ShopMapper {
	//직원 가져오기
	public List<ShopMemberVO> getMember(int userIdx) throws Exception;
	
	//담당직원 가져오기
	public ShopMemberVO getMemberView(String shopMemberName) throws Exception;
	
	//부동산 마이페이지
	public UserVO shopMyPage(UserVO userVO) throws Exception;
	
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
	public ArrayList<ShopItemVO> selectAllList(Map<String, Object> map) throws Exception;
	
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
	
	//매물 중단
	public int shopItemStop(int shopItemIdx) throws Exception;
	
	//매물 진행
	public int shopItemIng(int shopItemIdx)throws Exception;
	
	//매물 완료
	public int shopItemSuc(int shopItemIdx)throws Exception;
	
	//매물 삭제
	public int shopItemDelete(int shopItemIdx) throws Exception;
	
	//방문 예약 신청
	public int shopReserveJoin(ShopReservationVO sReserVO) throws Exception;
	
	//방문 리스트 개수
	public int shopReservationTotalCount() throws Exception;
	
	//방문 리스트 뿌리기
	public ArrayList<ShopReservationVO> selectReservationAllList(Map<String, Object> map) throws Exception;
	
	//방문 진행
	public int reservationhold(int shopReservationIdx) throws Exception;
	
	//방문 완료
	public int reservationIng(int shopReservationIdx) throws Exception;
	
	//방문 삭제
	public int reservationDel(int shopReservationIdx) throws Exception;
	
	//매물 등록 시 현재 매물개수 확인 수정확인
	public ArrayList<ShopPremiumItemVO> shopCount(int userIdx) throws Exception;
	
	//아이템 적용 가능 개수 확인
	public ArrayList<ShopPowerItemVO> powerCount(int userIdx) throws Exception;
	
	//매물 등록 개수 update
	public int shopCountUpdate(ShopItemVO sItem) throws Exception;
	
	//매물 판매 중단 시 아이템 개수 update
	public int shopPremiumItemStop(int shopItemIdx) throws Exception;
	
	//매물 진행 시 아이템 개수 update
	public int shopPremiumItemIng(Map<String, Object> map) throws Exception;
	
	//파워링크 적용
	public int powerIng(int shopItemIdx) throws Exception;
	
	//파워링크 해지
	public int powerEnd(int shopItemIdx) throws Exception;
	
	//파워링크 적용 시 개수 update
	public int shopPowerItemIng(Map<String, Object> map) throws Exception;
	
	//파워링크 해지 시 개수 update
	public int shopPowerItemEnd(Map<String, Object> map) throws Exception;
	
	//삭제 매물 가져오기
	public int shopDelCount() throws Exception;
	public ArrayList<ShopItemVO> shopDel(Map<String, Object> map) throws Exception;
	
	//판매완료 매물 가져오기
	public int shopSucCount() throws Exception;
	public ArrayList<ShopItemVO> shopSuc(Map<String, Object> map) throws Exception;
	
	//부동산마이페이지
	public UserVO selectOne(int userIdx)throws Exception;
}
