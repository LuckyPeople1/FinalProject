package com.dassa.service;

import com.dassa.mapper.MovePackageMapper;
import com.dassa.vo.PackageRegOptionVO;
import com.dassa.vo.PackageRegVO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("MovePackageService")
public class MovePackageService {

	@Resource(name = "movePackageMapper")
	private MovePackageMapper movePackageMapper;

	/**
	 * 	 * 관리자페이지 - 짐 등록
	 * @param packageRegVO
	 * @return
	 * @throws Exception
	 */
	public int regPackage(PackageRegVO packageRegVO) throws Exception {

		return movePackageMapper.regPackage(packageRegVO);
	}



	public List<PackageRegVO> getPackageList() throws Exception {

		List<PackageRegVO>list = movePackageMapper.getPackageList();

		System.out.println(list.get(0) + "이름");


		return list;
	}
}
