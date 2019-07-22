package com.dassa.vo;


import java.util.List;

public class SaleMoveInfoData {
	private SaleMoveInfoVO smVO;
	private List<DriverApplyOptionVO> optionList;
	private List<DriverApplyImgVO> imgList;
	public SaleMoveInfoData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SaleMoveInfoData(SaleMoveInfoVO smVO, List<DriverApplyOptionVO> optionList, List<DriverApplyImgVO> imgList) {
		super();
		this.smVO = smVO;
		this.optionList = optionList;
		this.imgList = imgList;
	}
	public SaleMoveInfoVO getSmVO() {
		return smVO;
	}
	public void setSmVO(SaleMoveInfoVO smVO) {
		this.smVO = smVO;
	}
	public List<DriverApplyOptionVO> getOptionList() {
		return optionList;
	}
	public void setOptionList(List<DriverApplyOptionVO> optionList) {
		this.optionList = optionList;
	}
	public List<DriverApplyImgVO> getImgList() {
		return imgList;
	}
	public void setImgList(List<DriverApplyImgVO> imgList) {
		this.imgList = imgList;
	}
	
	
}
