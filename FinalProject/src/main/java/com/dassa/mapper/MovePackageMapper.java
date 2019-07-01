package com.dassa.mapper;


import com.dassa.vo.PackageRegOptionVO;
import com.dassa.vo.PackageRegVO;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

@MapperScan("movePackageMapper")
public interface MovePackageMapper {

	public int regPackage(PackageRegVO packageRegVO) throws Exception;
}
