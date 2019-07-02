<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/user/common/head.jsp" %>
<body>
<div class="container">
	<div class="contents">
		<div class="page_header">
			<div class="page_title">기본환경설정</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title">기본 설정</div>
			<div class="set_form">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<thead></thead>
					<tbody>
					<tr>
						<th>이름<span class="ess">*</span></th>
						<td><input class="tbox full"></td>
						<th>아이디<span class="ess">*</span></th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>이메일<span class="ess">*</span></th>
						<td><input class="tbox full"></td>
						<th>사업자등록번호<span class="ess">*</span></th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>자기소개<span class="ess">*</span></th>
						<td colspan="3"><input class="tbox full"></td>
					</tr>
					<tr>
						<th>운반차량<span class="ess">*</span></th>
						<td><input class="tbox full"></td>
						<th>휴대폰번호<span class="ess">*</span></th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>프로필 사진<span class="ess">*</span></th>
						<td colspan="">
							<div class="img_upload">
								<input type="file" name="img_0" id="img_0" class="hide" onchange="img_change(this)">
								<a href="#none" class="imgUp" id="imgUp_0" onclick="img_up(this)"></a>
							</div>
						</td>
					</tr>
					</tbody>
				</table>
				<div class="tip_box">
					<div class="tip">
						<span class="f_red">*</span>표시는 필수입력입니다.
					</div>
				</div>
			</div>
		</div>
		<div class="btn_box">
			<a href="javascript:void(0)" class="btn col_blue">회원가입</a>
		</div>
		<div class="list_form">
		</div>

	</div>
	<%@include file="/WEB-INF/views/driver/common/footer.jsp"%>
	<script src="/driver/js/shop_setting.js"></script>
</div>
</body>
</html>