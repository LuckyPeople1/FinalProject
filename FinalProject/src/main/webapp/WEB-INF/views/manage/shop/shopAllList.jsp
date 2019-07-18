<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
	<!-- gnb -->
	<%@include file="/WEB-INF/views/manage/common/header.jsp"%>
	<div class="wrapper">
		<!-- lnb -->
		<%@include file="/WEB-INF/views/manage/shop/page/moveNav.jsp"%>
		
		<div class="contents">
			<div class="set_field">
				<div class="field_title"><span class="title_mark">■ 부동산 목록</span></div>
				<table class="set_table">
					<colgroup>
						<col width="200">
						<col width="*">
						<col width="200">
						<col width="*">
					</colgroup>
				<tbody>
				<tr>
					<th>부동산 검색</th>
					<td colspan="4">
						<span class="sbox small">
							<select name="searchType" id="searchType">
								<option value="1">아이디</option>
								<option value="2">중개사명</option>
							</select>
						</span>
						<input class="tbox" name="searchWord" id="searchWord" value="">
					</td>
				</tr>
				</tbody>
			</table>
			<div class="set_menu">
				<button type="submit" id="search_btn"  class="btn normal col_main f_w">검색</button>
				<a href="javascript:void(0)" class="btn normal col_darkGrey f_w ml5">전체목록</a>
			</div>
		</div>
		<div class="list_field">
			<table class="list_table">
				<colgroup>
					<col width="40">
					<col width="80">
					<col width="100">
					<col width="100">
					<col width="100">
					<col width="200">
					<col width="120">
					<col width="65">
					<col width="85">
				</colgroup>
				<thead>
				<tr>
					<th>No</th>
					<th>아이디</th>
					<th>중개사명</th>
					<th>주소</th>
					<th>휴대폰번호</th>
					<th>이메일</th>
					<th>회원 구분</th>
					<th>회원가입일</th>
					<th>상태</th>
				</tr>
				</thead>
				<tbody>
					<c:forEach var="u" items="${list}">
						<tr>
							<td>${u.userIdx }</td>
							<td>${u.userId }</td>
							<td>${u.userName }</td>
							<td>${u.userAddr }</td>
							<td>${u.userPhone }</td>
							<td>${u.userEmail }</td>
							<td>${u.type }</td>
							<td>${u.enrollDate }</td>
							<td>
								<a href="/userManage/reLoad?userIdx=${u.userIdx }" class="tag col_blue f_w">${u.userStatus}</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="page_group clearFix">
			<ul class="page_box">
				<li class="first arrow">
					<a href="#none"></a>
				</li>
				<li class="prev arrow">
					<a href="#none"></a>
				</li>
				<li class="on">
					<a href="#none">1</a>
				</li>
				<li class="">
					<a href="#none">2</a>
				</li>
				<li class="next arrow">
					<a href="#none "></a>
				</li>
				<li class="end arrow">
					<a href="#none"></a>
				</li>
			</ul>
		</div>
	</section>
</div>
</body>
</html>