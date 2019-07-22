package com.dassa.vo;

import java.util.ArrayList;

public class MapImageData {
	private ArrayList<String> imgList;
	private ArrayList<ShopItemVO> list;
	public MapImageData() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MapImageData(ArrayList<String> imgList, ArrayList<ShopItemVO> list) {
		super();
		this.imgList = imgList;
		this.list = list;
	}
	public ArrayList<String> getImgList() {
		return imgList;
	}
	public void setImgList(ArrayList<String> imgList) {
		this.imgList = imgList;
	}
	public ArrayList<ShopItemVO> getList() {
		return list;
	}
	public void setList(ArrayList<ShopItemVO> list) {
		this.list = list;
	}
	
}
