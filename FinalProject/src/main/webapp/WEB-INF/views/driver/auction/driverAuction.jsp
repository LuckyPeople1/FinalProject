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
			<form action="/driver/auction" id="driverAuctionSearch" method="post">
				<input type="hidden" id="page" name="page" value="${pagination.page }">
				<input type="hidden" id="range" name="range" value="${pagination.range }">
				<input type="hidden" id="rangeSize" name="rangeSize" value="${pagination.rangeSize }">
					<table class="table_set">
						<colgroup>
							<col width="180">
							<col width="*">
							<col width="180">
							<col width="*">
						</colgroup>
						<tr>
							<th>고객명</th>
							<td colspan="3">
								<input class="tbox w_1p" name="userName" id="userName" value="${pagination.userName }">
							</td>
						</tr>
						<tr>
							<th>작성일</th>
							<td colspan="3">
								<input class="tbox minDate" id="dateS" name="minDate" value="${pagination.minDate }" readonly="readonly">
								<span class="hyphen">~</span>
								<input class="tbox maxDate" id="dateE" name="maxDate" value="${pagination.maxDate }" readonly="readonly">
								<a href="javascript:setSearchDate('0d')" class="btn col_grey line ml10">당일</a>
								<a href="javascript:setSearchDate('1d')" class="btn col_grey line">어제</a>
								<a href="javascript:setSearchDate('1w')" class="btn col_grey line">일주일</a>
								<a href="javascript:setSearchDate('1m')" class="btn col_grey line">1개월</a>
								<a href="javascript:setSearchDate('3m')" class="btn col_grey line ">3개월</a>
								<a href="javascript:setSearchDate('6m')" class="btn col_grey line ">6개월</a>
							</td>
						</tr>
						
						<tr>
							<th>출발지 주소지 검색</th>
							<td>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="서울"><span>서울</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="경기"><span>경기</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="인천"><span>인천</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="대전"><span>대전</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="세종"><span>세종</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="충남"><span>충남</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="충북"><span>충북</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="광주"><span>광주</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="전남"><span>전남</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="전북"><span>전북</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="대구"><span>대구</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="경북"><span>경북</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="부산"><span>부산</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="울산"><span>울산</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="경남"><span>경남</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="강원"><span>강원</span></label>
								<label class="ml10"><input type="checkbox" name="startAddr1" value="제주"><span>제주</span></label>
							</td>
							<th>도착지 주소지 검색</th>
							<td>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="서울"><span>서울</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="경기"><span>경기</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="인천"><span>인천</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="대전"><span>대전</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="세종"><span>세종</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="충남"><span>충남</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="충북"><span>충북</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="광주"><span>광주</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="전남"><span>전남</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="전북"><span>전북</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="대구"><span>대구</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="경북"><span>경북</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="부산"><span>부산</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="울산"><span>울산</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="경남"><span>경남</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="강원"><span>강원</span></label>
								<label class="ml10"><input type="checkbox" name="endAddr1" value="제주"><span>제주</span></label>
							</td>
							<%-- <td>출발지<input type="text" class="tbox w_1p" name="startAddr1" value="${list[0].startAddr1 }"></td>
							<td>도착지<input type="text" name="endAddr1" value="${list[0].endAddr1 }"></td> --%>
						</tr>
					</table>
				</form>
				<div class="set_form_search">
					<!-- <a href="javascript:$('#frm').submit()">전송</a> -->
					<a href="javascript:$('#driverAuctionSearch').submit()" class="btn col_red f_w">검색</a>
					<a href="/driver/auction" class="btn col_grey line ml5">전체 목록</a>
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
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="moveApply" varStatus="i">
					<tr>
						<td><label><input type="checkbox"></label></td>
						<td>${moveApply.applyIdx }</td>
						<td>${moveApply.applyDate }</td>
						<td>${moveApply.applyTime }</td>
						<td>${moveApply.guestName }</td>
						<td>${moveApply.startAddr1 }</td>
						<td>${moveApply.endAddr1 }</td>
						<td><span class="tag col_blue f_w">견적대기</span></td>
						<td>
							<a href="/driver/auctionDetail?applyIdx=${moveApply.applyIdx }" class="btn col_navy f_w">상세보기</a>
							<a href="javascript:void(0)" class="btn col_red f_w">삭제</a>
						</td>
<!-- 						<td>
							<a href="shop_info_set.html" class="tag col_blue f_w">최종결정</a>
							
						</td> -->
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<ul class="page_wrap">
		<!-- pagination{s} -->
			<c:if test="${pagination.prev}">
				<li>
					<a class="" href="#" onclick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a>
				</li>
			</c:if>
			
			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
					<a class="num" href="#" onclick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a>
				</li>
			</c:forEach>
			
			
			
			
			<c:if test="${pagination.next}">
				<li>
					<a href="#" onclick="fn_next('${pagination.range}','${pagination.range}', '${pagination.rangeSize}')" >Next</a>
				</li>
			</c:if>
	
			</ul>
		</div>

	</div>
	<%@include file="/WEB-INF/views/driver/common/footer.jsp"%>
	<script src="/driver/js/driver.js"></script>
</div>
<script>
//이전 버튼 이벤트
/* function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "${pageContext.request.contextPath}/driver/auction";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		 location.href = url; 
	} */


  //페이지 번호 클릭
	function fn_pagination(page, range, rangeSize) {
		var elem = document.getElementById('driverAuctionSearch');
		elem.action = "${pageContext.request.contextPath}/driver/auction";
		elem.page.value = page;
		elem.range.value = range;
		elem.rangeSize.value = rangeSize;
		elem.method = "post";
		elem.submit();
	}

  
  /* 
	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize) {

		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "${pageContext.request.contextPath}/driver/auction";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		location.href = url;

	} */
</script>
</body>
</html>