package com.dassa.mapper;


import com.dassa.vo.*;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;
import java.util.Map;

@MapperScan("movePackageMapper")
public interface MovePackageMapper {

	public int regPackage(PackageRegVO packageRegVO) throws Exception;

	public List<PackageTempVO> getPackageList() throws Exception;

	public PackageTempVO getPackage(int idx) throws Exception;

	public int regApply(MoveApplyVO moveApplyVO) throws Exception;

	public int regApplyPackage(List<PackageOptionSelectVO> packageOptionList) throws Exception;

	public int regApplyImg(List<MoveApplyImgVO> moveApplyImgList) throws Exception;

	public int modifyPackage(PackageRegVO packageRegVO) throws Exception;

	public int packageListCnt(PackageSearchFilterVO packageSearchFilterVO) throws Exception;
}
