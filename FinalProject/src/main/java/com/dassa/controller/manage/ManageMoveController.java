package com.dassa.controller.manage;

import com.dassa.common.Criteria;
import com.dassa.common.FileCommon;
import com.dassa.service.MovePackageService;
import com.dassa.vo.*;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import javafx.scene.control.Pagination;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.activation.CommandMap;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
@RequestMapping("/manage/move")
public class ManageMoveController {


	@Resource
	private FileCommon fileCommon;

	@Resource
	private MovePackageService movePackageService;

	private Logger logger = LoggerFactory.getLogger(ManageMoveController.class);


	/**
	 * 이사 목록
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping("/moveAllList")
	public String moveList(Model model) throws Exception {

		model.addAttribute("headerNum",3);
		model.addAttribute("subNav",0);

		return "/manage/move/moveAllList";
	}



	/**
	 * 짐 관리 페이지
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping("/packageList")
	public String packageList(Model model, Criteria cri) throws Exception {


		// null값일 경우 빈값으로 만듦
		cri.setKeyword(cri.getKeyword() == null ? "" : cri.getKeyword());
		cri.setMinDate(cri.getMinDate() == null ? "" : cri.getMinDate());
		cri.setMaxDate(cri.getMaxDate() == null ? "" : cri.getMaxDate());


		int total	=	movePackageService.getTotal(cri);

		model.addAttribute("packageList",movePackageService.getManagePackageList(cri));
		model.addAttribute("pageMaker",new PagingVO(cri, total));
		model.addAttribute("headerNum",3);
		model.addAttribute("subNav",2);


		return "/manage/move/packageList";

	}


	/**
	 * 짐 등록 페이지
	 * @param model
	 * @return
	 */
	@RequestMapping("/packageReg")
	public String packageReg(Model model){

		model.addAttribute("headerNum",3);
		model.addAttribute("subNav",3);
		return "/manage/move/packageReg";
	}


	/**
	 * 짐 수정 페이지
	 * @param model
	 * @param packageIdx
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/packageModify")
	public String packageModify(Model model, @RequestParam int packageIdx) throws Exception {

		PackageTempVO packageTempVO	=	movePackageService.getPackageSelect(packageIdx);
		List<PackageRegOptionVO> optionList	=	movePackageService.getPackageOptionList(packageIdx);


		model.addAttribute("item", packageTempVO);
		model.addAttribute("optionList", optionList);


		model.addAttribute("headerNum",3);
		model.addAttribute("subNav",2);

		return "/manage/move/packageModify";
	}

	/**
	 * 짐 정보 수정 로직
	 * @param packageRegVO
	 * @param httpServletRequest
	 * @param fileImg
	 * @return
	 */
	@RequestMapping(value = "/packageModifyProc", method = RequestMethod.POST)
	@ResponseBody
	public String packageModifyProc(PackageRegVO packageRegVO, HttpServletRequest httpServletRequest, MultipartFile fileImg) throws Exception {

		String jsonString	=	httpServletRequest.getParameter("data");
		Gson gson = new Gson();

		packageRegVO.setPackageOptionList((List<PackageRegOptionVO>)gson.fromJson(jsonString, new TypeToken<List<PackageRegOptionVO>>(){}.getType()));


		/**
		 * 단일 파일업로드, fileName , request, folderName
		 */

		System.out.println(fileImg);
		if(fileImg != null){

			String[] fileInfo	=	fileCommon.fileUp(fileImg,httpServletRequest, "package");
			packageRegVO.setPackageImgName(fileInfo[0]);
			packageRegVO.setPackageImgPath(fileInfo[1]);
		}

		int rs	=	movePackageService.modifyPackage(packageRegVO);


		if(rs > 0){
			return "Y";
		}else{
			return "N";
		}
	}


	/**
	 * 짐 등록
	 * @param packageRegVO
	 * @param httpServletRequest
	 * @param fileImg
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/packageRegProc", method = RequestMethod.POST)
	@ResponseBody
	public int packageRegProc(PackageRegVO packageRegVO, HttpServletRequest httpServletRequest, MultipartFile fileImg) throws Exception {


		String jsonString	=	httpServletRequest.getParameter("data");
		Gson gson = new Gson();

		packageRegVO.setPackageOptionList((List<PackageRegOptionVO>)gson.fromJson(jsonString, new TypeToken<List<PackageRegOptionVO>>(){}.getType()));






		// 이미지가 빈값이 아니라면,


		/**
		 * 단일 파일업로드, fileName , request, folderName
		 */
		if(!fileImg.getOriginalFilename().equals("")){
			String[] fileInfo	=	fileCommon.fileUp(fileImg,httpServletRequest, "package");
			packageRegVO.setPackageImgName(fileInfo[0]);
			packageRegVO.setPackageImgPath(fileInfo[1]);
		}


		int rs	=	movePackageService.regPackage(packageRegVO);

		return rs;
	}

}
