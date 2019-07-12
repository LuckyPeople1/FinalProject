package com.dassa.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.annotation.MapperScan;

import com.dassa.vo.EmployeeVO;
import com.dassa.vo.NoticeVO;

@MapperScan("employeeMapper")
public interface EmployeeMapper {
	public int memberInsert(EmployeeVO emp);
	public int totalCount() throws Exception;
	public ArrayList<EmployeeVO> selectAllList(@Param("start") int start,@Param("end") int end) throws Exception;
}
