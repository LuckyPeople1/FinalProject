<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="container">
	<!-- gnb -->
	<%@include file="/WEB-INF/views/manage/common/header.jsp"%>
	<div class="wrapper">
		<!-- lnb -->
		<%@include file="/WEB-INF/views/manage/sale/page/saleNav.jsp"%>
		
		<div class="contents">
			<div class="set_field">
				<div class="field_title"><span class="title_mark">■ 상품 매출 목록</span></div>
				<form action="/manage/sale/salePremiumList" id="salePremuimList">
				<table class="set_table">
					<colgroup>
						<col width="200">
						<col width="*">
						<col width="200">
						<col width="*">
					</colgroup>
					<tbody>
					<tr>
						<th>구매자</th>
						<td colspan="">
							<span class="sbox small">
								<select name="searchType">
									<option value="1">아이디</option>
									<option value="2">회원명</option>
									<option value="3">휴대폰번호</option>
								</select>
							</span>
							<input class="tbox" name="searchWord" value="">
						</td>
						<th>구매금액</th>
						<td>
							<input class="tbox small" name="minAmount" value=""> ~ <input class="tbox small" name="maxAmount" value="">
						</td>
					</tr>
					
					<tr>
						<th>결제일</th>
						<td colspan="3">
							<input id="dateS" class="tbox"> ~ <input id="dateE" class="tbox">
							<a href="javascript:setSearchDate('0d')" class="btn smaller higher col_grey ml10">당일</a>
							<a href="javascript:setSearchDate('1d')" class="btn smaller higher col_grey ml5">내일</a>
							<a href="javascript:setSearchDate('1w')" class="btn smaller higher col_grey ml5">일주일</a>
							<a href="javascript:setSearchDate('1m')" class="btn smaller higher col_grey ml5">1달</a>
							<a href="javascript:setSearchDate('3m')" class="btn smaller higher col_grey ml5">3달</a>
							<a href="javascript:setSearchDate('6m')" class="btn smaller higher col_grey ml5">6달</a>
						</td>
					</tr>
					
					</tbody>
				</table>
				<div class="set_menu">
					<a href="javascript:$('#salePremuimList').submit();" class="btn normal col_main f_w">검색</a>
					<a href="/manage/sale/salePremiumList" class="btn normal col_darkGrey f_w ml5">전체목록</a>
				</div>
				</form>
			</div>
			<div class="list_field">
				<div class="list_menu">
					
					<span class="right_menu">
						<a href="javascript:void(0)" class="btn col_darkGrey f_w">엑셀저장</a>
						<span class="sbox small">
							<select>
								<option>번호순 ▲</option>
								<option>번호순 ▼</option>
								<option>결제일순 ▲</option>
								<option>결제일순 ▼</option>
							</select>
						</span>
						<span class="sbox small">
							<select>
								<option>20개씩</option>
								<option>50개씩</option>
								<option>100개씩</option>
							</select>
						</span>
					</span>
				</div>
				<table class="list_table">
					<colgroup>
						<col width="40">
						<col width="130">
						<col width="70">
						<col width="100">
						<col width="100">
						<col width="120">
						<col width="120">
						<col width="150">
						<col width="100">
						<col width="100">
						<col width="100">
						<col width="100">

					</colgroup>
					<thead>
					<tr>
						
						<th>No</th>
						<th>imp_uid<br>merchant_uid</th>
						<th>PG사</th>
						<th>PG승인번호</th>
						<th>결제 상세</th>
						<th>아이디</th>
						<th>회원명</th>
						<th>이메일</th>
						<th>구매금액</th>
						<th>결제시각</th>
						<th>종료시각</th>
						<th>상태</th>
						
					</tr>
					</thead>
					<tbody>
					<c:forEach var="list" items="${msData.list }">
					<tr>
						<td>${list.shopPaymentIdx }</td>
						<td>${list.shopPaymentImpUid }<br>${list.shopPaymentMerchantUid}</td>
						<td>${list.shopPaymentPg }</td>
						<td>${list.shopPaymentPgNumber }</td>
						<td>${list.shopPaymentCardName }</td>
						<td>${list.userId}</td>
						<td>${list.userName }</td>
						<td>${list.userEmail }</td>
						<td class="">${list.shopPaymentPrice }</td>
						<td><fmt:formatDate value="${list.shopPaymentDate }"
										pattern="yyyy-MM-dd hh:mm:ss" /></td>
						<td><fmt:formatDate value="${list.shopPaymentLastDate }"
										pattern="yyyy-MM-dd hh:mm:ss" /></td>
						<td>
							<span class="tag col_blue f_w">결제완료</span>
						</td>
						
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="page_group clearFix">
				<ul class="page_box">
					${msData.pageNavi }
				</ul>
			</div>
		</div>
		
		
		
		<!-- 푸터 -->
		<?php include $_SERVER['DOCUMENT_ROOT'] . '/manager/common/page/footer.php'; ?>
	</div>
</div>
