package com.dassa.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.JusoDongVO;
import com.dassa.vo.JusoGuVO;
import com.dassa.vo.ShopItemImgVO;
import com.dassa.vo.ShopItemPageDataVO;
import com.dassa.vo.ShopItemVO;

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
	
	//매물 관리 리스트
	public ArrayList<ShopItemVO> selectAllList(@Param("start") int start,@Param("end") int end) throws Exception;
	
	//매물 상세 보기
	public ShopItemVO shopItemInfo(int shopItemIdx) throws Exception;
	
	//매물 이미지 뿌리기
	public List<ShopItemImgVO> shopItemImgList(int shopItemIdx) throws Exception;
}
