package com.dassa.vo;

import java.util.ArrayList;
import java.util.List;

public class MoveInfoTotalData {
	private DriverAuctionDetailVO driverAuctionDetail;
	private List<DriverApplyOptionVO> optionList;
	private List<DriverApplyImgVO> imgList;
	private MovePaymentVO payVo;
	private MoveAuctionVO maVo;
	private MoveAuctionReview reVo;
	private DriverReviewVO reOneVo;
	public MoveInfoTotalData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MoveInfoTotalData(DriverAuctionDetailVO driverAuctionDetail, List<DriverApplyOptionVO> optionList,
			List<DriverApplyImgVO> imgList, MovePaymentVO payVo, MoveAuctionVO maVo, MoveAuctionReview reVo,
			DriverReviewVO reOneVo) {
		super();
		this.driverAuctionDetail = driverAuctionDetail;
		this.optionList = optionList;
		this.imgList = imgList;
		this.payVo = payVo;
		this.maVo = maVo;
		this.reVo = reVo;
		this.reOneVo = reOneVo;
	}
	public DriverAuctionDetailVO getDriverAuctionDetail() {
		return driverAuctionDetail;
	}
	public void setDriverAuctionDetail(DriverAuctionDetailVO driverAuctionDetail) {
		this.driverAuctionDetail = driverAuctionDetail;
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
	public MovePaymentVO getPayVo() {
		return payVo;
	}
	public void setPayVo(MovePaymentVO payVo) {
		this.payVo = payVo;
	}
	public MoveAuctionVO getMaVo() {
		return maVo;
	}
	public void setMaVo(MoveAuctionVO maVo) {
		this.maVo = maVo;
	}
	public MoveAuctionReview getReVo() {
		return reVo;
	}
	public void setReVo(MoveAuctionReview reVo) {
		this.reVo = reVo;
	}
	public DriverReviewVO getReOneVo() {
		return reOneVo;
	}
	public void setReOneVo(DriverReviewVO reOneVo) {
		this.reOneVo = reOneVo;
	}
	
}
