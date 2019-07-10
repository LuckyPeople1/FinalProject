package com.dassa.service;

import com.dassa.mapper.MovePackageMapper;
import com.dassa.vo.*;
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

	/**
	 * idx 기준으로 짐 DB 가져옴
	 * @param idx
	 * @return
	 * @throws Exception
	 */
	public List<PackageRegOptionVO> getPackageOptionList(int idx) throws Exception {


		// idx를 기준으로 짐 DB를 가져옴
		PackageTempVO packageTempVO = movePackageMapper.getPackage(idx);

		// 해당 짐의 옵션만 담는 리스트 생성
		List<PackageRegOptionVO>packageOptionList	=	setOptionList(packageTempVO);

		return packageOptionList;

	}


	/**
	 * 해당 idx 옵션만 받아오기
	 * @param tempVO
	 * @return
	 */
	private List<PackageRegOptionVO> setOptionList(PackageTempVO tempVO) {

		List<PackageRegOptionVO>optionVOList	=	new ArrayList<PackageRegOptionVO>();

		PackageRegOptionVO optionVO = new PackageRegOptionVO();

		if(tempVO.getPackageOption1Name() != null){
			optionVO.setPackageOptionName(tempVO.getPackageOption1Name());
			optionVO.setPackageOptionValue(tempVO.getPackageOption1Value());
			optionVO.setPackageOptionEtc(tempVO.getPackageOption1Etc());
			optionVOList.add(optionVO);
		}

		if(tempVO.getPackageOption2Name() != null){
			optionVO = new PackageRegOptionVO();
			optionVO.setPackageOptionName(tempVO.getPackageOption2Name());
			optionVO.setPackageOptionValue(tempVO.getPackageOption2Value());
			optionVO.setPackageOptionEtc(tempVO.getPackageOption2Etc());
			optionVOList.add(optionVO);
		}

		if(tempVO.getPackageOption3Name() != null){
			optionVO = new PackageRegOptionVO();
			optionVO.setPackageOptionName(tempVO.getPackageOption3Name());
			optionVO.setPackageOptionValue(tempVO.getPackageOption3Value());
			optionVO.setPackageOptionEtc(tempVO.getPackageOption3Etc());
			optionVOList.add(optionVO);
		}

		if(tempVO.getPackageOption4Name() != null){
			optionVO = new PackageRegOptionVO();
			optionVO.setPackageOptionName(tempVO.getPackageOption4Name());
			optionVO.setPackageOptionValue(tempVO.getPackageOption4Value());
			optionVO.setPackageOptionEtc(tempVO.getPackageOption4Etc());
			optionVOList.add(optionVO);
		}

		if(tempVO.getPackageOption5Name() != null){
			optionVO = new PackageRegOptionVO();
			optionVO.setPackageOptionName(tempVO.getPackageOption5Name());
			optionVO.setPackageOptionValue(tempVO.getPackageOption5Value());
			optionVO.setPackageOptionEtc(tempVO.getPackageOption5Etc());
			optionVOList.add(optionVO);
		}

		return optionVOList;

	}


	/**
	 * 세션이 있는 각각의 데이터를 VO에 넣어줌
	 * @param startAddr
	 * @param endAddr
	 * @param scheduleInfo
	 * @param userVO
	 * @return
	 */
	public MoveApplyVO pushData(MoveAddrInfoVO startAddr, MoveAddrInfoVO endAddr, MoveAddrScheduleVO scheduleInfo, UserVO userVO) {

		MoveApplyVO moveApplyVO	=	new MoveApplyVO();
		moveApplyVO.setGuestIdx(userVO.getUserIdx());
		moveApplyVO.setGuestName(userVO.getUserName());
		moveApplyVO.setGuestPhone(userVO.getUserPhone());
		moveApplyVO.setStartAddr1(startAddr.getAddr1());
		moveApplyVO.setStartAddr2(startAddr.getAddr2());
		moveApplyVO.setStartAddr3(startAddr.getAddr3());
		moveApplyVO.setStartLatitude(startAddr.getLatitude());
		moveApplyVO.setStartLongitude(startAddr.getLongitude());
		moveApplyVO.setStartType(startAddr.getType());
		moveApplyVO.setStartStructure(startAddr.getStructure());
		moveApplyVO.setStartSize(startAddr.getSize());
		moveApplyVO.setStartFloor(startAddr.getFloor());
		moveApplyVO.setStartElevator(startAddr.getElevator());
		moveApplyVO.setStartParking(startAddr.getParking());
		moveApplyVO.setEndAddr1(endAddr.getAddr1());
		moveApplyVO.setEndAddr2(endAddr.getAddr2());
		moveApplyVO.setEndAddr3(endAddr.getAddr3());
		moveApplyVO.setEndLatitude(endAddr.getLatitude());
		moveApplyVO.setEndLongitude(endAddr.getLongitude());
		moveApplyVO.setEndType(endAddr.getType());
		moveApplyVO.setEndFloor(endAddr.getFloor());
		moveApplyVO.setEndElevator(endAddr.getElevator());
		moveApplyVO.setEndParking(endAddr.getParking());
		moveApplyVO.setApplyDate(scheduleInfo.getDate());
		moveApplyVO.setApplyTime(scheduleInfo.getTime());
		moveApplyVO.setApplyHope(scheduleInfo.getMoveHope());
		moveApplyVO.setApplyHelp(scheduleInfo.getMoveHelp());
		moveApplyVO.setApplyMemo("일단메모");

		return moveApplyVO;
	}


	public int regApply(MoveApplyVO moveApplyVO) throws Exception {

		return movePackageMapper.regApply(moveApplyVO);
	}

	public int regApplyPackage(List<PackageOptionSelectVO> packageOptionList) throws Exception {

		return movePackageMapper.regApplyPackage(packageOptionList);

	}

	public int regApplyImg(List<MoveApplyImgVO> imgList) throws Exception {

		return movePackageMapper.regApplyImg(imgList);

	}
}
