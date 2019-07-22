<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
	<!-- gnb -->
	<%@include file="/WEB-INF/views/manage/common/header.jsp"%>
	<div class="wrapper">
		<!-- lnb -->
		<%@include file="/WEB-INF/views/manage/user/page/userNav.jsp"%>
		<div class="contents">
			<div class="set_field">
				<div class="field_title"><span class="title_mark">■ 부동산 승인 관리</span></div>
				<table class="set_table">
					<colgroup>
						<col width="200">
						<col width="*">
						<col width="200">
						<col width="*">
					</colgroup>
					<tr>
						<th>회원 검색</th>
						<td colspan="3">
							<span class="sbox small">
							<select name="searchType" id="searchType">
								<option value="1">아이디</option>
								<option value="2">회원명</option>
							</select>
						</span>
						<input class="tbox" name="searchWord" id="searchWord" value="">
						</td>
					</tr>
					<tbody>
					<tr>
						<th>가입 신청일</th>
						<td colspan="3">
							<input id="dateS" class="tbox"> ~ <input id="dateE" class="tbox">
							<a href="javascript:setSearchDate('0d', ${status }, ${userType })" class="btn smaller higher col_grey ml10">당일</a>
							<a href="javascript:setSearchDate('1d', ${status }, ${userType })" class="btn smaller higher col_grey ml5">어제</a>
							<a href="javascript:setSearchDate('1w', ${status }, ${userType })" class="btn smaller higher col_grey ml5">일주일</a>
							<a href="javascript:setSearchDate('1m', ${status }, ${userType })" class="btn smaller higher col_grey ml5">1달</a>
							<a href="javascript:setSearchDate('3m', ${status }, ${userType })" class="btn smaller higher col_grey ml5">3달</a>
							<a href="javascript:setSearchDate('6m', ${status }, ${userType })" class="btn smaller higher col_grey ml5">6달</a>
						</td>
					</tr>
					</tbody>
				</table>
				<div class="set_menu">
					<button type="submit" id="search_btn" onclick="search_btn(${userType}, ${status })" class="btn normal col_main f_w">검색</button>
					<button type="submit" id="searchAll_btn" onclick="searchAll_btn(${userType}, ${status })" class="btn normal col_darkGrey f_w ml5">전체목록</button>
				</div>
			</div>
			<table class="list_table">
				<colgroup>
					<col width="40">
					<col width="65">
					<col width="150">
					<col width="100">
					<col width="150">
					<col width="150">
					<col width="120">
					<col width="65">
					<col width="85">
					<col width="100">
				</colgroup>
				<thead>
				<tr>
					<th>No</th>
					<th>아이디</th>
					<th>회원명</th>
					<th>주소</th>
					<th>휴대폰번호</th>
					<th>회사명</th>
					<th>이메일</th>
					<th>회원 구분</th>
					<th>가입 신청일</th>
					<th>상태</th>
				</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${not empty list }">
							<c:forEach var="u" items="${list}" varStatus="i">
								<tr>
									<td>${i.count }</td>
									<td>${u.userId }</td>
									<td>${u.userName }</td>
									<td>${u.userAddr }</td>
									<td>${u.userPhone }</td>
									<td>${u.companyName }</td>
									<td>${u.userEmail }</td>
									<td>${u.type }</td>
									<td>${u.enrollDate }</td>
									<td>
										<a href="/userManage/reloadApproUser?userIdx=${u.userIdx }" class="tag col_blue f_w">${u.userStatus}</a>
									</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="10">승인대기 회원 목록이 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
		<div class="page_group clearFix">
			<ul class="page_box">
				${pageNavi}
			</ul>
		</div>
	</div>
			
	<!-- 푸터 -->
</div>
<script src="/manage/js/user/userSearch.js"></script>
</body>
</html>