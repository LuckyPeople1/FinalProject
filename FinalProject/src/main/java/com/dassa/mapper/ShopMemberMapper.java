package com.dassa.mapper;

import com.dassa.vo.ShopMemberVO;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan("shopMemberMapper")
public interface ShopMemberMapper {


	public int memberReg(ShopMemberVO shopMemberVO) throws Exception;

	public List<ShopMemberVO> getMember(int userIdx) throws Exception;

	public int removeMember(int shopMemberIdx) throws Exception;
}
