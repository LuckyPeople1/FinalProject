<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일--> --%>
<body>
<div class="container">
	<nav>
		<!--맨왼쪽  네비 메뉴-->
		<jsp:include page="/WEB-INF/views/shop/page/nav_main.jsp"/>
		<!--맨왼쪽  서브네비 메뉴-->
		<jsp:include page="/WEB-INF/views/shop/page/nav_member.jsp"/>
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">직원 등록</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title">기본 설정</div>
			<form id="regFrm">
				<!-- 추후 로그인이 필수가 되면 삼항 연산자 삭제 -->
				<input type="hidden" name="shopIdx"
					   value="${sessionScope.user.userIdx == null ? '1' : sessionScope.user.userIdx}">
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
							<td><input class="tbox full" id="shopMemberName" name="shopMemberName"></td>
							<!--여기 이름 추가해야함!!!  -->
							<th>전화번호<span class="ess">*</span></th>
							<td><input class="tbox full" id="shopMemberPhone" name="shopMemberPhone"></td>
						</tr>
						<tr>
							<th>프로필 사진</th>
							<td colspan="3">
								<div class="img_upload">
									<input type="file" name="fileImg" id="fileImg" class="hide"
										   onchange="img_change(this)">
									<a href="#none" class="imgUp" id="imgUp_0" onclick="img_up(this)"
									   name="fileName"></a>
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
			</form>
		</div>
		<div class="btn_box">
			<a href="/shop/member/" class="btn col_darkGrey">목록으로</a>
			<a href="javascript:member.reg()" class="btn col_blue">등록</a>
		</div>
	
	</div>
	<script src="<c:url value="/shop/js/member/member.js"/>"></script>
</div>
</body>
</html>