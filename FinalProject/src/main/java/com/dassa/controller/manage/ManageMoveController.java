package com.dassa.controller.manage;

import com.dassa.common.FileCommon;
import com.dassa.service.MovePackageService;
import com.dassa.vo.PackageRegOptionVO;
import com.dassa.vo.PackageRegVO;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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


	/**
	 * 이사 목록
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping("/moveAllList")
	public String moveList(Model model){

		model.addAttribute("headerNum",3);
		model.addAttribute("headerNum",3);
		return "/manage/move/moveAllList";
	}

	/**
	 * 짐 등록 페이지
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping("/packageReg")
	public String packageReg(Model model){

		model.addAttribute("headerNum",3);
		return "/manage/move/packageReg";
	}

	/**
	 * 짐 관리 페이지
	 *
	 * @param model
	 * @return
	 */
	@RequestMapping("/packageList")
	public String packageList(Model model){

		model.addAttribute("headerNum",3);
		return "/manage/move/packageList";

	}

	@RequestMapping(value = "/packageRegProc", method = RequestMethod.POST)
	@ResponseBody
	public int packageRegProc(PackageRegVO packageRegVO, HttpServletRequest httpServletRequest, MultipartFile fileImg) throws Exception {

		String jsonString	=	httpServletRequest.getParameter("data");
		System.out.println(jsonString);
		Gson gson = new Gson();

		packageRegVO.setPackageOptionList((List<PackageRegOptionVO>)gson.fromJson(jsonString, new TypeToken<List<PackageRegOptionVO>>(){}.getType()));


		System.out.println(packageRegVO.getPackageOptionList().size());


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
