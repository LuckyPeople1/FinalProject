<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일-->
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/driver/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/driver/page/nav_set.jsp" %>    <!--맨왼쪽 2번째 네비 메뉴 (마이페이지 메뉴)  -->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">기본환경설정</div>
			<div class="page_sub_title"></div>
		</div>
		<form id="driverMypageUpdate">
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
							<td><input class="tbox full" id="userName" name="userName" value="${user.userName }"></td>  <!--여기 이름 추가해야함!!!  -->
							<th>아이디<span class="ess">*</span></th>
							<td><input class="tbox full" readonly="readonly" name="userId" value="${user.userId }"></td>
						</tr>
						<tr>
							<th>이메일<span class="ess">*</span></th>
							<td><input class="tbox full" id="userEmail" name="userEmail" value="${user.userEmail }"></td>
							<th>사업자등록번호<span class="ess">*</span></th>
							<td><input class="tbox full" readonly="readonly" name="userRegistration" value="${user.registrationNumber }"></td>
						</tr>
						<tr>
							<th>자기소개<span class="ess">*</span></th>
							<td colspan="3"><input class="tbox full" id="userIntroduce" name="userIntroduce" value="${user.userIntroduce }"></td>
						</tr>
						<tr>
							<th>운반차량<span class="ess">*</span></th>
							<td><input class="tbox full" id="userCar" name="userCar" value="${user.userCar }"></td>
							<th>휴대폰번호<span class="ess">*</span></th>
							<td><input class="tbox full" id="userPhone" name="userPhone" value="${user.userPhone }"></td>
						</tr>
						<tr>
							<th>프로필 사진<span class="ess">*</span></th>
							<td colspan="3">
								<div class="img_upload">
									<input type="file" name="fileImg" id="img_0" class="hide" onchange="img_change(this)" value="${user.proFilepath }">
									<a href="#none" class="imgUp" id="imgUp_0" onclick="img_up(this)" name="fileName">
										<img id="mypage"  src="${user.proFilepath }"> 
									</a>
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
		</form>
		<div class="btn_box">
			<a href="/driver/" class="btn col_blue">목록으로</a>
			<a href="javascript:void(0)" class="btn col_blue" onclick="DriverupdateClick();">정보수정</a>
		</div>
		<div class="list_form">
		</div>

	</div>
	
	<script src="/driver/js/shop_setting.js"></script>
	<script src="/driver/js/driver.js"></script>
</div>
<%@include file="/WEB-INF/views/driver/common/footer.jsp"%>
</body>
</html>