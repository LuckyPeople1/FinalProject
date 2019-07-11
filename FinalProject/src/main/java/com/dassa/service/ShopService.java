package com.dassa.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dassa.mapper.ShopMapper;
import com.dassa.vo.JusoDongVO;
import com.dassa.vo.JusoGuVO;
import com.dassa.vo.NoticePageData;
import com.dassa.vo.NoticeVO;
import com.dassa.vo.SaleInLotsPageDataVO;
import com.dassa.vo.SaleInLotsVO;
import com.dassa.vo.ShopItemImgVO;
import com.dassa.vo.ShopItemPageDataVO;
import com.dassa.vo.ShopItemVO;

@Service("shopService")
public class ShopService {

	@Resource(name="shopMapper")
	private ShopMapper shopMapper;
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
	 * 중개사페이지 - 매물등록 
	 * @param sItem
	 * @return
	 * @throws Exception
	 */
	public int shopItemAdd(ShopItemVO sItem, List<ShopItemImgVO> sItemImgList) throws Exception {
		shopMapper.shopItemAdd(sItem);
		return shopMapper.shopItemImgAdd(sItemImgList);
		
	}
	/**
	 * 
	 */
	public int shopItemImgAdd(List<ShopItemImgVO> sItemImgList) throws Exception{
		return shopMapper.shopItemImgAdd(sItemImgList);
	}
	/**
	 * 중개사 매물 조회
	 * @param reqPage
	 * @return
	 * @throws Exception
	 */
	public ShopItemPageDataVO selectAllList(int reqPage) throws Exception{
		int numPerPage = 6;
		int totalCount = shopMapper.shopItemTotalCount();
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		int end = reqPage*numPerPage;
		ArrayList<ShopItemVO> list = shopMapper.selectAllList(start,end);
		String pageNavi = "";
		int pageNaviSize = 5;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;
		if(pageNo !=1) {
			pageNavi += "<a class='btn' href='/shop/item/shopItemList?reqPage="+(pageNo-1)+"'>이전</a>";
		}
		int i = 1;
		while( !(i++>pageNaviSize || pageNo>totalPage) ) { //둘 중 하나라도 만족하면 수행하지 않겠다
			if(reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>"+pageNo+"</span>"; //4페이지 상태에서 4페이지를 누를수가 없도록 하기 위해서 a태그 없애줌 
			}else {
				pageNavi += "<a class='btn' href='/shop/item/shopItemList?reqPage="+pageNo+"'>"+pageNo+"</a>";
			}
			pageNo++;
		}
		//다음 버튼 생성
		if(pageNo <= totalPage) {
			pageNavi +="<a class='btn' href='/shop/item/shopItemList?reqPage="+pageNo+"'>다음</a>";
		}
		ShopItemPageDataVO sipd = new ShopItemPageDataVO(list,pageNavi);
		return sipd;
	}
}
