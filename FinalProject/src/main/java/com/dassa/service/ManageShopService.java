package com.dassa.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.dassa.mapper.DriverMapper;
import com.dassa.mapper.ManageShopMapper;
import com.dassa.mapper.ShopMapper;
import com.dassa.vo.ShopItemPageDataVO;
import com.dassa.vo.ShopItemVO;
import com.dassa.vo.UserVO;

@Service("manageShopService")
public class ManageShopService {
	@Resource(name="manageShopMapper")
	private ManageShopMapper manageShopMapper;
	@Resource(name="shopMapper")
	private ShopMapper shopMapper;
	
	public ShopItemPageDataVO selectAllList(int reqPage) throws Exception{
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = manageShopMapper.shopItemTotalCount();
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		System.out.println("시작번호"+start);
		int end = reqPage*numPerPage;
		System.out.println(start+"/"+end);
		   Map<String, Object> map = new HashMap<String, Object>();
		   map.put("start",start);
		   map.put("end",end);

			ArrayList<ShopItemVO> list= manageShopMapper.selectAllList(map);
	
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
	 * 중개사 페이지 - 매물 판매진행
	 * @param shopItemIdx
	 * @return
	 * @throws Exception
	 */
	public int shopItemIng(int shopItemIdx) throws Exception{
		return shopMapper.shopItemIng(shopItemIdx);
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
	public ShopItemPageDataVO shopSuc(int reqPage) throws Exception{
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = shopMapper.shopSucCount();
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		System.out.println("시작번호"+start);
		int end = reqPage*numPerPage;
		System.out.println(start+"/"+end);
		   Map<String, Object> map = new HashMap<String, Object>();
		   map.put("start",start);
		   map.put("end",end);

			ArrayList<ShopItemVO> list= shopMapper.shopSuc(map);
	
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
	public ShopItemPageDataVO shopDel(int reqPage) throws Exception{
		//페이지 당 게시물 수
		int numPerPage = 5;
		//총 게시물 수 구하기
		int totalCount = shopMapper.shopDelCount();
		//총 페이지 수 구하기
		int totalPage = (totalCount%numPerPage==0)?(totalCount/numPerPage):(totalCount/numPerPage)+1;
		//요청 페이지의 시작 게시물 번호와 끝 게시물 번호 구하기
		//시작 게시물 번호
		int start = (reqPage-1)*numPerPage +1;
		System.out.println("시작번호"+start);
		int end = reqPage*numPerPage;
		System.out.println(start+"/"+end);
		   Map<String, Object> map = new HashMap<String, Object>();
		   map.put("start",start);
		   map.put("end",end);

			ArrayList<ShopItemVO> list= shopMapper.shopDel(map);
	
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
}
