<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="container">
	<!-- gnb -->
	<%@include file="/WEB-INF/views/manage/common/header.jsp"%>
	<div class="wrapper">
		<!-- lnb -->
		<%@include file="/WEB-INF/views/manage/move/page/moveNav.jsp"%>
		
		<div class="contents">
			<div class="set_field">
				<div class="field_title"><span class="title_mark">■ 짐 관리</span></div>
				<form id="searchFrm">
					<table class="set_table">
						<colgroup>
							<col width="200">
							<col width="*">
							<col width="200">
							<col width="*">
						</colgroup>
						<tbody>
						<tr>
							<th>짐 이름</th>
							<td colspan="3">
								<input class="tbox normal" name="packageName" value="${searchFilter.packageName}">
							</td>
						</tr>
						<tr>
							<th>짐 유형</th>
							<td colspan="3">
								<label>
									<input type="checkbox" name="packageType" value="0"
									<c:forEach items="${searchFilter.packageType}" var="item">
										<c:if test="${item == 0}">checked</c:if>
									</c:forEach>
									>
									<span>가전</span>
									
								</label>
								<label class="ml10">
									<input type="checkbox" name="packageType" value="1"
									<c:forEach items="${searchFilter.packageType}" var="item">
										   <c:if test="${item == 1}">checked</c:if>
									</c:forEach>
									>
									<span>가구</span>
								</label>
								<label class="ml10">
									<input type="checkbox" name="packageType" value="2"
									<c:forEach items="${searchFilter.packageType}" var="item">
										   <c:if test="${item == 2}">checked</c:if>
									</c:forEach>
									>									<span>기타</span>
								</label>
							</td>
						</tr>
						<tr>
							<th>등록일</th>
							<td colspan="3">
								<input id="dateS" class="tbox" name="minDate" value="${searchFilter.minDate}"> ~ <input id="dateE" class="tbox" name="maxDate" value="${searchFilter.maxDate}">
								<a href="javascript:setSearchDate('0d')" class="btn smaller higher col_grey ml10">당일</a>
								<a href="javascript:setSearchDate('1d')" class="btn smaller higher col_grey ml5">어제</a>
								<a href="javascript:setSearchDate('1w')" class="btn smaller higher col_grey ml5">일주일</a>
								<a href="javascript:setSearchDate('1m')" class="btn smaller higher col_grey ml5">1달</a>
								<a href="javascript:setSearchDate('3m')" class="btn smaller higher col_grey ml5">3달</a>
								<a href="javascript:setSearchDate('6m')" class="btn smaller higher col_grey ml5">6달</a>
							</td>
						</tr>
						</tbody>
					</table>
				
				</form>
				<div class="set_menu">
					<a href="javascript:$('#searchFrm').submit()" class="btn normal col_main f_w">검색</a>
					<a href="/manage/move/packageList" class="btn normal col_darkGrey f_w ml5">전체목록</a>
				</div>
			</div>
			<table class="list_table">
				<colgroup>
					<col width="40">
					<col width="65">
					<col width="150">
					<col width="300">
					<col width="120">
					<col width="150">
					<col width="100">
				</colgroup>
				<thead>
				<tr>
					<th>
						<label>
							<input type="checkbox" name="all_chk">
						</label>
					</th>
					<th>No</th>
					<th>유형</th>
					<th>상품명</th>
					<th>등록일시</th>
					<th>상태</th>
					<th>관리</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${packageList}" var="item">
					<c:if test="${item.packageType != 3}">
						<tr>
							<td>
								<label>
									<input type="checkbox" name="">
								</label>
							</td>
							<td>1</td>
							<td>
								<c:choose>
									<c:when test="${item.packageType == 0}">가전</c:when>
									<c:when test="${item.packageType == 1}">가구</c:when>
									<c:when test="${item.packageType == 2}">기타</c:when>
								</c:choose>
							</td>
							<td>${item.packageName}</td>
							<td>${item.packageRegDate}</td>
							<td>
								<c:choose>
									<c:when test="${item.packageStatus == 0}">
										<span class="tag col_blue f_w">정상</span>
									</c:when>
									<c:when test="${item.packageType == 1}">
										<span class="tag col_darkGrey f_w">정지</span>
									</c:when>
								</c:choose>
							</td>
							<td>
								<div>
									<a href="/manage/move/packageModify?packageIdx=${item.packageIdx}" class="btn small col_main f_w">수정</a>
								</div>
								<div>
									<a href="#none" class="btn small col_darkGrey f_w">정지</a>
								</div>
							</td>
						</tr>
					</c:if>
				</c:forEach>
				</tbody>
			</table>
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
		</div>
		
		
		
		<!-- 푸터 -->
		<?php include $_SERVER['DOCUMENT_ROOT'] . '/manager/common/page/footer.php'; ?>
	</div>
</div>
