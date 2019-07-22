package com.dassa.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.ShopMapper;
import com.dassa.vo.JusoDongVO;
import com.dassa.vo.JusoGuVO;
import com.dassa.vo.ShopItemImgVO;
import com.dassa.vo.ShopItemPageDataVO;
import com.dassa.vo.ShopItemSearchVO;
import com.dassa.vo.ShopItemVO;
import com.dassa.vo.ShopMemberVO;
import com.dassa.vo.ShopPowerItemVO;
import com.dassa.vo.ShopPremiumItemVO;
import com.dassa.vo.ShopReservationPageDataVO;
import com.dassa.vo.ShopReservationVO;
import com.dassa.vo.UserVO;

@Service("shopService")
public class ShopService {

	@Resource(name="shopMapper")
	private ShopMapper shopMapper;
	/**
	 * 전체직원가져오기
	 * @param userIdx
	 * @return
	 * @throws Exception
	 */
	public List<ShopMemberVO> getMember(int userIdx) throws Exception {
		System.out.println("서비스 유저 번호 : "+userIdx);
		return shopMapper.getMember(userIdx);

	}
	/**
	 * 담당 직원 가져오기
	 * @param userName
	 * @return
	 * @throws Exception
	 */
	public ShopMemberVO getMemberView(String shopMemberName) throws Exception{
		System.out.println("서비스 담당자 이름 :"+shopMemberName);
		return shopMapper.getMemberView(shopMemberName);
	}
	/**
	 * 중개사페이지 - 마이페이지
	 * @param userVO
	 * @return
	 * @throws Exception
	 */
	public UserVO selectOne(UserVO userVO) throws Exception {
		return shopMapper.shopMyPage(userVO);
	}
	
	/**
	 * 중개사페이지 - 도시 선택 시 해당 구 가져오기
	 * @param jusoCityCode
	 * @return
	 * @throws Exception
	 */
	public List<JusoGuVO> getJusoGuList(String jusoCityCode) throws Exception{
		return shopMapper.getJusoGuList(jusoCityCode);
	}
	/**
	 * 중개사페이지 - 구 선택 시 해당 동 가져오기
	 * @param jusoGuCode
	 * @return
	 * @throws Exception
	 */
	public List<JusoDongVO> getJusoDongList(String jusoGuCode) throws Exception{
		return shopMapper.getJusoDongList(jusoGuCode);
	}
	/**
	 * 등록 가능 매물 개수
	 * @param userIdx
	 * @return
	 * @throws Exception
	 */
	public int shopCount(int userIdx) throws Exception{
		ArrayList<ShopPremiumItemVO> list = shopMapper.shopCount(userIdx);
		int arrSize = list.size();
		System.out.println("service userIdx : "+userIdx);
		System.out.println("return count : "+arrSize);
		return arrSize;
	}
	/**
	 * 아이템 적용 가능 매물 개수
	 * @param userIdx
	 * @return
	 * @throws Exception
	 */
	public int powerCount(int userIdx) throws Exception{
		ArrayList<ShopPowerItemVO> list = shopMapper.powerCount(userIdx);
		int arrSize = list.size();
		System.out.println("service userIdx : "+userIdx);
		System.out.println("return count : "+arrSize);
		return arrSize;
	}
	
	/**
	 * 중개사페이지 - 매물등록, 이미지 같이 등록
	 * @param sItem
	 * @return
	 * @throws Exception
	 */
	public int shopItemAdd(ShopItemVO sItem, List<ShopItemImgVO> sItemImgList) throws Exception {
		shopMapper.shopItemAdd(sItem);
		return shopMapper.shopItemImgAdd(sItemImgList);
	}
	/**
	 * 매물 등록 시 아이템에 해당 매물 등록(올릴 수 있는 카운트 차감)
	 * @param sItem
	 * @return
	 * @throws Exception
	 */
	public int shopCountUpdate(ShopItemVO sItem)throws Exception{
		return shopMapper.shopCountUpdate(sItem);
	}
	
	/**
	 * 중개사 페이지 - 매물수정, 이미지 같이 수정
	 * @param sItem
	 * @param sItemImgList
	 * @return
	 * @throws Exception
	 */
	public int shopItemModify(ShopItemVO sItem, List<ShopItemImgVO> sItemImgList) throws Exception {
		//shopMapper.shopItemImgModify(sItemImgList);
		return shopMapper.shopItemModify(sItem);  
	}
	/**
	 * 중개사 페이지 - 매물리스트
	 * @param reqPage
	 * @return
	 * @throws Exception
	 */
	public ShopItemPageDataVO selectAllList(int reqPage,UserVO uservo) throws Exception{
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = shopMapper.shopItemTotalCount();
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		System.out.println("시작번호"+start);
		int end = reqPage*numPerPage;
		System.out.println(start+"/"+end);
		   Map<String, Object> map = new HashMap<String, Object>();
		   int userIdx=uservo.getUserIdx();
		   map.put("start",start);
		   map.put("end",end);
		   map.put("userIdx", userIdx);

			ArrayList<ShopItemVO> list= shopMapper.selectAllList(map);
	
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		//이전 버튼 생성
		if(pageNo !=1) {
			pageNavi += "<a class='btn' href='/shop/item?reqPage="+(pageNo-1)+"'>이전</a>";
		}
		//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
			if(reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>"+pageNo+"</span>"; //4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌 
			}else {
				pageNavi += "<a class='btn' href='/shop/item?reqPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			pageNavi +="<a class='btn' href='/shop/item?reqPage="+pageNo+"'>다음</a>";
		}
		ShopItemPageDataVO pd = new ShopItemPageDataVO(list,pageNavi);
		return pd;
	}
	/**
	 * 중개사 페이지 - 매물상세보기
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	public ShopItemVO shopItemInfo(int shopItemIdx) throws Exception{
		return shopMapper.shopItemInfo(shopItemIdx);
	}
	/**
	 * 중개사 페이지 - 상세보기매물이미지
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	public List<ShopItemImgVO> shopItemImgList(int shopItemIdx) throws Exception{
		return shopMapper.shopItemImgList(shopItemIdx);
	}
	/**
	 * 중개사 페이지 - 매물 삭제
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	public int shopItemDelete(int shopItemIdx) throws Exception{
		return shopMapper.shopItemDelete(shopItemIdx);
	}
	/**
	 * 중개사 페이지 - 매물 판매중단
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	public int shopItemStop(int shopItemIdx) throws Exception{
		return shopMapper.shopItemStop(shopItemIdx);
	}
	
	/**
	 * 아이템 적용
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	public int powerIng(int shopItemIdx) throws Exception{
		return shopMapper.powerIng(shopItemIdx);
	}
	
	/**
	 * 아이템 해지
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	public int powerEnd(int shopItemIdx) throws Exception{
		return shopMapper.powerEnd(shopItemIdx);
	}
	
	/**
	 * 중개사 페이지 - 매물 판매중단 시 아이템 개수 update
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	public int shopPremiumItemStop(int shopItemIdx) throws Exception{
		return shopMapper.shopPremiumItemStop(shopItemIdx);
	}
	/**
	 * 중개사 페이지 - 매물 판매진행 시 아이템 개수 update
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	public int shopPremiumItemIng(Map<String, Object> map) throws Exception{
		return shopMapper.shopPremiumItemIng(map);
	}
	
	public int shopPowerItemIng(Map<String, Object> map) throws Exception{
		return shopMapper.shopPowerItemIng(map);
	}
	public int shopPowerItemEnd(Map<String, Object> map) throws Exception{
		return shopMapper.shopPowerItemEnd(map);
	}


	/**
	 * 중개사 페이지 - 매물 판매진행
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	public int shopItemIng(int shopItemIdx) throws Exception{
		return shopMapper.shopItemIng(shopItemIdx);
	}
	public int shopItemSuc(int shopItemIdx) throws Exception{
		return shopMapper.shopItemSuc(shopItemIdx);
	}
	/**
	 * 부동산 방문예약 등록
	 * @param sReserVO
	 * @return
	 * @throws Exception
	 */
	public int shopReserveJoin(ShopReservationVO sReserVO) throws Exception{
		return shopMapper.shopReserveJoin(sReserVO);
	}
	/**
	 * 방문 예약삭제
	 * @param sReserVO
	 * @return
	 * @throws Exception
	 */
	public int reservationDel(int shopReservationIdx) throws Exception{
		return shopMapper.reservationDel(shopReservationIdx);
	}
	/**
	 * 방문 예약진행
	 * @param sReserVO
	 * @return
	 * @throws Exception
	 */
	public int reservationhold(int shopReservationIdx) throws Exception{
		return shopMapper.reservationhold(shopReservationIdx);
	}
	/**
	 * 방분 예약완료
	 * @param sReserVO
	 * @return
	 * @throws Exception
	 */
	public int reservationIng(int shopReservationIdx) throws Exception{
		return shopMapper.reservationIng(shopReservationIdx);
	}
	/**
	 * 중개사 페이지 - 예약리스트
	 * @param reqPage
	 * @return
	 * @throws Exception
	 */
	public ShopReservationPageDataVO selectReservationAllList(int reqPage,UserVO uservo) throws Exception{
		System.out.println("요청페이지"+reqPage);
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = shopMapper.shopReservationTotalCount();
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		System.out.println("시작번호"+start);
		int end = reqPage*numPerPage;
		System.out.println(start+"/"+end);
		Map<String, Object> map = new HashMap<String, Object>();
		int userIdx=uservo.getUserIdx();
		System.out.println("방문페이지유저번호"+userIdx);
		map.put("start", start);
		map.put("end", end);
		map.put("shopIdx", userIdx);
		ArrayList<ShopReservationVO> list = shopMapper.selectReservationAllList(map);
		//페이지 네비 작성
		String pageNavi = "";
		//페이지 네비의 수
		int pageNaviSize = 5;
		//페이지 번호
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		//이전 버튼 생성
		if(pageNo !=1) {
			pageNavi += "<a class='btn' href='/shop/reserve?reqPage="+(pageNo-1)+"'>이전</a>";
		}
		//페이지 번호 버튼 생성 ( 1 2 3 4 5 )
		int i = 1;
		while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
			if(reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>"+pageNo+"</span>"; //4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌 
			}else {
				pageNavi += "<a class='btn' href='/shop/reserve?reqPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			pageNavi +="<a class='btn' href='/shop/reserve?reqPage="+pageNo+"'>다음</a>";
		}
		ShopReservationPageDataVO pd = new ShopReservationPageDataVO(list,pageNavi);
		return pd;
	}
}
