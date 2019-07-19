<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일-->
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/driver/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/driver/page/nav_stats.jsp" %>   <!--맨왼쪽  네비 메뉴-->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">매출 통계</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title"></div>
			<div class="set_form search">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tr>
						<th>날짜</th>
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
				<div class="set_form_search">
					<a href="javascript:void(0)" class="btn col_red f_w">검색</a>
					<a href="javascript:void(0)" class="btn col_grey line ml5">전체 목록</a>
				</div>
			</div>
			<div class="list_form">
				<div class="table_list_btn">
					<span class="right_btn">
						<!-- <a href="board_notice_write.html" class="btn col_green f_w">엑셀저장</a> -->
					</span>
				</div>
				<table class="table_list">
					<colgroup>
						<col width="140">
						<col width="100">
						<col width="140">
						<col width="100">
						<col width="140">
						<col width="100">
						<col width="100">
						<col width="100">
						<col width="170">
					</colgroup>
					<thead>
					<tr>
						<th>이사날짜</th>
						<th>사용자리뷰</th>
						<th>최종견적</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="driverPayment">
					<tr>
						<td>${driverPayment.movePaymentIdx }</td>
						<td>${driverPayment.movePaymentImpUid }</td>
						<td>${driverPayment.movePaymentAmount }원</td>
					</tr>	
					</c:forEach>	
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/driver/common/footer.jsp"%>

</div>
</body>
</html>
