package com.dassa.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dassa.vo.NoticeVO;

public class NoticeRowMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rset, int rowNum) throws SQLException {
		NoticeVO nv = new NoticeVO();
		nv.setNoticeIndex(rset.getInt("noticeIndex"));
		nv.setNoticeTitle(rset.getString("noticeTitle"));
		nv.setNoticeContent(rset.getString("noticeContent"));
		nv.setNoticeWriter(rset.getString("noticeWriter"));
		nv.setNoticeFilename(rset.getString("noticeFiliename"));
		nv.setNoticeFilepath(rset.getString("noticeFilepath"));
		nv.setNoticeHit(rset.getInt("noticeHit"));
		nv.setNoticeRegDate(rset.getDate("noticeRegDate"));
		return nv;
	}
}
