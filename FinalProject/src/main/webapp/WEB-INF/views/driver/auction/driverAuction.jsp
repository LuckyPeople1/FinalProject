<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/driver/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/driver/page/nav_shop.jsp" %>    <!--맨왼쪽 2번째 네비 메뉴 (입찰관리)  -->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">입찰 관리</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title"></div>
			<div class="set_form search">
			<form action="driver/search/driverAuction" id="driverAuctionSearch" method="get">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tr>
						<th>고객명</th>
						<td colspan="4">
							<input type="hidden" name="guestIdx">
							<input class="tbox w_1p" name="guestName">
						</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td colspan="3">
							<input class="tbox" id="dateS">
							<span class="hyphen">~</span>
							<input class="tbox" id="dateE">
							<a href="javascript:setSearchDate('0d')" class="btn col_grey line ml10">당일</a>
							<a href="javascript:setSearchDate('1d')" class="btn col_grey line">어제</a>
							<a href="javascript:setSearchDate('1w')" class="btn col_grey line">일주일</a>
							<a href="javascript:setSearchDate('1m')" class="btn col_grey line">1개월</a>
							<a href="javascript:setSearchDate('3m')" class="btn col_grey line ">3개월</a>
							<a href="javascript:setSearchDate('6m')" class="btn col_grey line ">6개월</a>
						</td>
					</tr>
				</table>
				</form>
				<div class="set_form_search">
					<!-- <a href="javascript:$('#frm').submit()">전송</a> -->
					<a href="javascript:$('#driverAuctionSearch').submit()" class="btn col_red f_w">검색</a>
					<a href="javascript:void(0)" class="btn col_grey line ml5">전체 목록</a>
				</div>
			</div>
			<div class="list_form">
				<div class="table_list_btn">
					
				</div>
				<table class="table_list">
					<colgroup>
						<col width="40">
						<col width="70">
						<col width="140">
						<col width="80">
						<col width="100">
						<col width="190">
						<col width="100">
						<col width="100">
						<col width="150">
						<col width="100">
					</colgroup>
					<thead>
					<tr>
						<th><label><input type="checkbox"></label></th>
						<th>NO</th>
						<th>이사날짜</th>
						<th>이사시간</th>
						<th>고객명</th>
						<th>출발지</th>
						<th>도착지</th>
						<th>진행상황</th>
						<th>관리</th>
						<th>결정</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="moveApply" varStatus="i">
					<tr>
						<td><label><input type="checkbox"></label></td>
						<td>${moveApply.guestIdx }</td>
						<td>${moveApply.applyDate }</td>
						<td>${moveApply.applyTime }</td>
						<td>${moveApply.guestName }</td>
						<td>${moveApply.startAddr1 }</td>
						<td>${moveApply.endAddr1 }</td>
						<td><span class="tag col_blue f_w">견적대기</span></td>
						<td>
							<a href="/driver/auctionDetail" class="btn col_navy f_w">상세보기</a>
							<a href="javascript:void(0)" class="btn col_red f_w">삭제</a>
						</td>
						<td>
							<a href="shop_info_set.html" class="tag col_blue f_w">최종결정</a>
							
						</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<ul class="page_wrap">
				<li><a href="#none">First</a></li>
				<li><a href="#none">Prev</a></li>
				<li><a href="#none" class="num active">1</a></li>
				<li><a href="#none" class="num">2</a></li>
				<li><a href="#none" class="num">3</a></li>
				<li><a href="#none">Next</a></li>
				<li><a href="#none">Last</a></li>
			</ul>
		</div>

	</div>
	<%@include file="/WEB-INF/views/driver/common/footer.jsp"%>

</div>
<script>

</script>
</body>
</html>