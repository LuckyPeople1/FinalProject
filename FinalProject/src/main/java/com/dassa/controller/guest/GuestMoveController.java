package com.dassa.controller.guest;


import com.dassa.common.FileCommon;
import com.dassa.service.MovePackageService;
import com.dassa.vo.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/move")
public class GuestMoveController {


	@Resource
	private FileCommon fileCommon;

	@Resource
	private MovePackageService movePackageService;


	/**
	 * 등록된 짐 가져오기
	 *
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/step1")
	public String moveStep1(Model model, HttpSession httpSession) throws Exception {

		List<PackageRegVO> packageTempVOList = movePackageService.getPackageList();

		model.addAttribute("selectPackageList", (List<PackageSelectVO>) httpSession.getAttribute("packageList"));




		model.addAttribute("packageList", packageTempVOList);

		return "guest/move/moveStep1";
	}


	/**
	 * 짐 선택 (이사하기 Step1)
	 * @param httpSession
	 * @param packageList
	 * @return
	 */
	@RequestMapping(value = "/packageSelect", method = RequestMethod.POST)
	@ResponseBody
	public String packageSelect(
			HttpSession httpSession,
			@RequestBody List<PackageSelectVO> packageList) {


		for (PackageSelectVO packageSelectVO : packageList) {
			System.out.println(packageSelectVO.getPackageType());
			System.out.println(packageSelectVO.getPackageName());
			System.out.println(packageSelectVO.getPackageAmount());
		}


		httpSession.setAttribute("selectPackageList", packageList);


		return "Y";
	}

	/**
	 * 짐 상세입력 페이지 이동 (이사하기 Step2)
	 * @param httpSession
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/step2")
	public String moveStep2(HttpSession httpSession, Model model) throws Exception {

		// 스탭1에서 저장한 리스트를 가져와서 뷰로 넘겨줌
		model.addAttribute("selectPackageList", (List<PackageSelectVO>) httpSession.getAttribute("selectPackageList"));

		// 스탭2에서 저장한 리스트를 가져와서 뷰로 넘겨줌
		model.addAttribute("packageOptionList", (List<PackageOptionSelectVO>) httpSession.getAttribute("packageOptionList"));

		return "guest/move/moveStep2";
	}


	/**
	 * 짐 상세정보 팝업
	 * @param idx
	 * @param name
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/packagePop")
	public String packagePop(int idx, String name, Model model) throws Exception {

		List<PackageRegOptionVO> optionList	=	movePackageService.getPackageOptionList(idx);

		model.addAttribute("optionList", optionList);
		model.addAttribute("name",name);

		return "guest/move/page/packagePop";
	}


	@RequestMapping("/packageFinish")
	@ResponseBody
	public String packageFinish(
			HttpSession httpSession,
			@RequestBody List<PackageOptionSelectVO>packageOptionList){

		httpSession.setAttribute("packageOptionList",packageOptionList);

		return "Y";
	}


	/**
	 * 이사 상세정보 입력페이지 이동
	 * @return
	 */
	@RequestMapping("/step3")
	public String moveStep3(HttpSession httpSession, Model model){


		MoveAddrInfoVO startInfo	=	 (MoveAddrInfoVO)httpSession.getAttribute("startAddr");
		MoveAddrInfoVO endInfo	=	 (MoveAddrInfoVO)httpSession.getAttribute("endAddr");
		MoveAddrScheduleVO scheduleInfo	=	 (MoveAddrScheduleVO)httpSession.getAttribute("scheduleInfo");

		if(startInfo != null){
			model.addAttribute("startInfo", startInfo);
		}

		if(endInfo != null){
			model.addAttribute("endInfo", endInfo);
		}

		if(scheduleInfo != null){
			model.addAttribute("scheduleInfo", scheduleInfo);
		}

		return "guest/move/moveStep3";

	}


	/**
	 * 주소입력 페이지로 이동
	 * @return
	 */
	@RequestMapping("/addr")
	public String addr(String addrType, Model model){

		model.addAttribute("addrType", addrType);
		return "guest/move/moveStepAddr";

	}



	/**
	 * 주소 선택
	 * @param moveAddrSelectVO
	 * @param httpSession
	 * @param addrType
	 * @return
	 */
	@RequestMapping("/addrSelect")
	@ResponseBody
	public String addrSelect(MoveAddrSelectVO moveAddrSelectVO,
							 HttpSession httpSession,
							 @RequestParam("addrType") String addrType)
	{
		httpSession.setAttribute("addrInput", moveAddrSelectVO);


		MoveAddrInfoVO moveAddrInfoVO	=	new MoveAddrInfoVO();
		moveAddrInfoVO.setAddr1(moveAddrSelectVO.getAddr1());
		moveAddrInfoVO.setAddr2(moveAddrSelectVO.getAddr2());
		moveAddrInfoVO.setLatitude(moveAddrSelectVO.getLatitude());
		moveAddrInfoVO.setLongitude(moveAddrSelectVO.getLongitude());

		if(addrType.equals("start")){
			httpSession.setAttribute("startAddr", moveAddrInfoVO);

		}else if(addrType.equals("end")){
			httpSession.setAttribute("endAddr", moveAddrInfoVO);
		}

		return addrType;

	}


	/**
	 * 주소 상세입력 페이지 이동
	 * @param httpSession
	 * @param model
	 * @param addrType
	 * @return
	 */
	@RequestMapping("/detail")
	public String start(HttpSession httpSession, Model model, String addrType){

		MoveAddrInfoVO startInfo	=	 (MoveAddrInfoVO)httpSession.getAttribute("startAddr");
		MoveAddrInfoVO endInfo		=	 (MoveAddrInfoVO)httpSession.getAttribute("endAddr");

		model.addAttribute("addrType", addrType);

		if(addrType.equals("start")){
			model.addAttribute("addrInfo", startInfo);
		}

		if(addrType.equals("end")){

			model.addAttribute("addrInfo", endInfo);
		}

		return "guest/move/moveStepDetail";
	}


	/**
	 * 주소지 입력 후 주소지 유형(출발,도착지)에 구별하여 세션에 등록
	 * @param httpSession
	 * @param moveAddrInfoVO
	 * @param addrType
	 * @return
	 */
	@RequestMapping("/addrProc")
	@ResponseBody
	public String addrProc(HttpSession httpSession, MoveAddrInfoVO moveAddrInfoVO, @RequestParam("addrType") String addrType){


		if(addrType.equals("start")){
			httpSession.setAttribute("startAddr", moveAddrInfoVO);

		}else if(addrType.equals("end")){
			httpSession.setAttribute("endAddr", moveAddrInfoVO);
		}

		return "Y";
	}


	/**
	 * 날짜 이사 페이지 이동
	 * @param httpSession
	 * @return
	 */
	@RequestMapping("/schedule")
	public String schedule(HttpSession httpSession){

		httpSession.getAttribute("scheduleInfo");

		return "guest/move/moveStepSchedule";
	}


	/**
	 * 날짜 이사 종류 선택
	 * @param httpSession
	 * @param moveAddrScheduleVO
	 * @return
	 */
	@RequestMapping("/scheduleProc")
	@ResponseBody
	public String scheduleProc(HttpSession httpSession, MoveAddrScheduleVO moveAddrScheduleVO){

		httpSession.setAttribute("scheduleInfo", moveAddrScheduleVO);

		return "Y";

	}




	/** 이사 이미지 등록 **/
	@RequestMapping(value = "/finishProc" , method = RequestMethod.POST)
	@ResponseBody
	public String finishProc(HttpServletRequest httpServletRequest,
							 List<MultipartFile> fileImg,
							 HttpSession httpSession
							 ){

		List<MoveApplyImgVO>imgList	=	new ArrayList<MoveApplyImgVO>();

		for(MultipartFile img : fileImg){


			if(!img.getOriginalFilename().equals("")){
				String[] fileInfo	=	fileCommon.fileUp(img, httpServletRequest, "moveApply");
				MoveApplyImgVO moveApplyImgVO	=	new MoveApplyImgVO();
				moveApplyImgVO.setImgName(fileInfo[0]);
				moveApplyImgVO.setImgPath(fileInfo[1]);
				imgList.add(moveApplyImgVO);
			}
		}

		httpSession.setAttribute("imgList",imgList);

		return "Y";
	}


	/**
	 * 최종정보 확인 페이지로 이동
	 * @param httpSession
	 * @param model
	 * @return
	 */
	@RequestMapping("/apply")
	public String apply(HttpSession httpSession, Model model){

		MoveAddrInfoVO startInfo	=	 (MoveAddrInfoVO)httpSession.getAttribute("startAddr");
		MoveAddrInfoVO endInfo	=	 (MoveAddrInfoVO)httpSession.getAttribute("endAddr");
		MoveAddrScheduleVO scheduleInfo	=	 (MoveAddrScheduleVO)httpSession.getAttribute("scheduleInfo");
		List<PackageOptionSelectVO> packageOptionList	=	(List<PackageOptionSelectVO>)httpSession.getAttribute("packageOptionList");

		model.addAttribute("startInfo", startInfo);
		model.addAttribute("endInfo", endInfo);
		model.addAttribute("scheduleInfo", scheduleInfo);
		model.addAttribute("packageOptionList", packageOptionList);


		return "guest/move/moveStepApply";
	}


	/**
	 * 최종 이사정보 확인(이사 요청 처리)
	 * @param httpSession
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/applyProc")
	@ResponseBody
	public String applyProc(HttpSession httpSession, @RequestParam String applyMemo) throws Exception {

		UserVO userVO	=	(UserVO)httpSession.getAttribute("user");

		// 비회원일경우 막음
		if(userVO == null){
			return "L";
		}

		// 세션에서 객체를 가져옴
		List<PackageOptionSelectVO> packageOptionList	=	(List<PackageOptionSelectVO>)httpSession.getAttribute("packageOptionList");
		List<MoveApplyImgVO> imgList	=	(List<MoveApplyImgVO>)httpSession.getAttribute("imgList");



		// 세션에 있는 데이터들을 하나의 VO로 합침
		MoveApplyVO moveApplyVO	=	movePackageService.pushData(
				(MoveAddrInfoVO)httpSession.getAttribute("startAddr"),
				(MoveAddrInfoVO)httpSession.getAttribute("endAddr"),
				(MoveAddrScheduleVO)httpSession.getAttribute("scheduleInfo"),
				userVO, applyMemo);

		// 기본정보 데이터 삽입
		int rs	=	movePackageService.regApply(moveApplyVO);

		if(rs > 0){

			// 옵션 데이터 삽입
			rs	=	 movePackageService.regApplyPackage(packageOptionList);


			// 이미지가 있을 때만 처리
			if(imgList.size() != 0){

				//이미지 데이터 삽입
				movePackageService.regApplyImg(imgList);
			}

			if(rs >0){

				// 세션초기화
				httpSession.removeAttribute("startAddr");
				httpSession.removeAttribute("endAddr");
				httpSession.removeAttribute("scheduleInfo");
				httpSession.removeAttribute("imgList");
				httpSession.removeAttribute("packageOptionList");
				httpSession.removeAttribute("selectPackageList");


				return "Y";
			}
		}

		return "N";


	}



}
