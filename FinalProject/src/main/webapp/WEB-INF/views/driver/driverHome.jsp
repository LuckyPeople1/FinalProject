<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일-->
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/driver/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/driver/page/nav_reserve.jsp" %>    <!--맨왼쪽 2번째 네비 메뉴 (마이페이지 메뉴)  -->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">전체 이사관리</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title"></div>
			<div class="set_form search">
				<form action="/driver/home" id="driverMoveForm" method="post">
					<input type="hidden" id="page" name="page" value="${pagination.page }">
					<input type="hidden" id="range" name="range" value="${pagination.range }">
					<input type="hidden" id="rangeSize" name="rangeSize" value="${pagination.rangeSize }">
					<input type="hidden" id="driverIdx" name="driverIdx" value="${pagination.driverIdx }">
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
								<input class="tbox w_1p" name="userName" value="${pagination.userName }">
							</td>
						</tr>
						<tr>
							<th>이사날짜</th>
							<td colspan="3">
								<input class="tbox maxDate" id="dateE" name="minDate" value="${pagination.minDate }" readonly="readonly">
								<span class="hyphen">~</span>
								<input class="tbox minDate" id="dateS" name="maxDate" value="${pagination.maxDate }" readonly="readonly">
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
					<a href="javascript:$('#driverMoveForm').submit()" class="btn col_red f_w">검색</a>
					<a href="/driver/home?driverIdx=${pagination.driverIdx }" class="btn col_grey line ml5">전체 목록</a>
				</div>
			</div>
			<div class="list_form">
				<table class="table_list">
					<colgroup>
						<col width="40">
						<col width="60">
						<col width="50">
						<col width="80">
						<col width="80">
						<col width="100">
						<col width="130">
						<col width="130">
						<col width="100">
						<col width="80">
						<col width="85">
						<col width="100">
					</colgroup>
					<thead>
					<tr>
						<th><label><input type="checkbox" name="allChk"></label></th>
						<th>NO</th>
						<th>이사날짜</th>
						<th>이사시간</th>
						<th>고객명</th>
						<th>연락처</th>
						<th>출발지</th>
						<th>도착지</th>
						<th>이사타입</th>
						<th>예약상태</th>
						<th>관리</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="moveApply" varStatus="i" >
					<tr>
						<td><label><input type="checkbox"></label></td>
						<td>${moveApply.applyIdx }</td>
						<td>${moveApply.applyDate }</td>
						<td>${moveApply.applyTime }</td>
						<td>${moveApply.guestName }</td>
						<td>${moveApply.guestPhone }</td>
						<td>${moveApply.startAddr1 }</td>
						<td>${moveApply.endAddr1 }</td>
						<td><span class="tag col_blue f_w">${moveApply.applyHope }</span></td>
						<c:if test="${moveApply.auctionState eq 1 }">
							<td>
								<span class="tag col_green f_w">견적 완료</span>
							</td>
						</c:if>
						<c:if test="${moveApply.auctionState eq 2 }">
							<td>
								<span class="tag col_green f_w">결제 완료</span>
							</td>
						</c:if>
						<c:if test="${moveApply.auctionState eq 3 }">
							<td>
								<span class="tag col_orange f_w">최종완료</span>
							</td>
						</c:if>
						<c:if test="${moveApply.auctionState eq 4 }">
							<td>
								<span class="tag col_red f_w">예약 취소</span>
							</td>
						</c:if>
						
						<td>
							<div class="set_menu">
								<a href="/driver/Detail?applyIdx=${moveApply.applyIdx }" class="btn col_navy f_w">상세보기</a>
							</div>
						</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<ul class="page_wrap">
				<c:if test="${pagination.prev}">
				<li>
					<a class="" href="" onclick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a>
				</li>
			</c:if>
			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li <c:out value="${pagination.page == idx ? 'active' : ''}"/> >
					<a class="num" href="" onclick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a>
				</li>
			</c:forEach>
			<c:if test="${pagination.next}">
				<li>
					<a href="" onclick="fn_next('${pagination.range}','${pagination.range}', '${pagination.rangeSize}')" >Next</a>
				</li>
			</c:if>
			</ul>
		</div>
	</div>
	<%@include file="/WEB-INF/views/driver/common/footer.jsp"%>

</div>
<script>

	function fn_pagination(page, range, rangeSize) {
	  	var driverIdx=$('#driverIdx').val();
		var elem = document.getElementById('driverMoveForm');
		elem.action = "${pageContext.request.contextPath}/driver/move?driverIdx="driverIdx;
		elem.page.value = page;
		elem.range.value = range;
		elem.rangeSize.value = rangeSize;
		elem.method = "post";
		elem.submit();
	}
</script>
</body>
</html>