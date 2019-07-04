package com.dassa.service;

import com.dassa.mapper.MovePackageMapper;
import com.dassa.vo.PackageRegOptionVO;
import com.dassa.vo.PackageRegVO;
import com.dassa.vo.PackageTempVO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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


	/**
	 * 가공되지 않은 짐 정보를 가져옴
	 * @return
	 * @throws Exception
	 */
	public List<PackageRegVO> getPackageList() throws Exception {

		// 임시데이터를 가져옴
		List<PackageTempVO>tempList = movePackageMapper.getPackageList();

		// 데이터가공
		List<PackageRegVO>packageRegVOList	=	changePackageList(tempList);

		return packageRegVOList;
	}


	/**
	 * 임시데이터를 용도에 맞게 가공
	 * @param tempList
	 * @return
	 */
	public List<PackageRegVO> changePackageList(List<PackageTempVO> tempList){


		// 기본정보 + 옵션을 담아 리턴시킬 짐 리스트
		List<PackageRegVO> packageVOList		=	new ArrayList<PackageRegVO>();

		// 임시데이터의 행만큼 회전
		for(PackageTempVO tempVO : tempList){

			PackageRegVO packageRegVO	=	new PackageRegVO();

			// 옵션담기
			List<PackageRegOptionVO> optionVOList	=	new ArrayList<PackageRegOptionVO>();


			PackageRegOptionVO optionVO = new PackageRegOptionVO();
			optionVO.setPackageOptionName(tempVO.getPackageOption1Name());
			optionVO.setPackageOptionValue(tempVO.getPackageOption1Value());
			optionVO.setPackageOptionEtc(tempVO.getPackageOption1Etc());
			optionVOList.add(optionVO);

			optionVO = new PackageRegOptionVO();
			optionVO.setPackageOptionName(tempVO.getPackageOption2Name());
			optionVO.setPackageOptionValue(tempVO.getPackageOption2Value());
			optionVO.setPackageOptionEtc(tempVO.getPackageOption2Etc());
			optionVOList.add(optionVO);

			optionVO = new PackageRegOptionVO();
			optionVO.setPackageOptionName(tempVO.getPackageOption3Name());
			optionVO.setPackageOptionValue(tempVO.getPackageOption3Value());
			optionVO.setPackageOptionEtc(tempVO.getPackageOption3Etc());
			optionVOList.add(optionVO);

			optionVO = new PackageRegOptionVO();
			optionVO.setPackageOptionName(tempVO.getPackageOption4Name());
			optionVO.setPackageOptionValue(tempVO.getPackageOption4Value());
			optionVO.setPackageOptionEtc(tempVO.getPackageOption4Etc());
			optionVOList.add(optionVO);

			optionVO = new PackageRegOptionVO();
			optionVO.setPackageOptionName(tempVO.getPackageOption5Name());
			optionVO.setPackageOptionValue(tempVO.getPackageOption5Value());
			optionVO.setPackageOptionEtc(tempVO.getPackageOption5Etc());
			optionVOList.add(optionVO);

			// 기본정보 담기
			packageRegVO.setPackageIdx(tempVO.getPackageIdx());
			packageRegVO.setPackageType(tempVO.getPackageType());
			packageRegVO.setPackageName(tempVO.getPackageName());
			packageRegVO.setPackageImgName(tempVO.getPackageImgName());
			packageRegVO.setPackageImgPath(tempVO.getPackageImgPath());
			packageRegVO.setPackageStatus(tempVO.getPackageStatus());
			packageRegVO.setPackageRegDate(tempVO.getPackageRegDate());
			packageRegVO.setPackageDeleteDate(tempVO.getPackageDeleteDate());
			packageRegVO.setPackageOptionList(optionVOList);

			packageVOList.add(packageRegVO);
		}

		return packageVOList;


	}


}
