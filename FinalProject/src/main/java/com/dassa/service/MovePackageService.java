package com.dassa.service;

import com.dassa.mapper.MovePackageMapper;
import com.dassa.vo.PackageRegOptionVO;
import com.dassa.vo.PackageRegVO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("packageSerivce")
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



}
