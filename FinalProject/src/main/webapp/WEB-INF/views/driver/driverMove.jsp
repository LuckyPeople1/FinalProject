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
							<input class="tbox w_1p">
						</td>
					</tr>
					<tr>
						<th>예약일</th>
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
				<table class="table_list">
					<colgroup>
						<col width="40">
						<col width="65">
						<col width="115">
						<col width="80">
						<col width="80">
						<col width="115">
						<col width="90">
						<col width="150">
						<col width="90">
						<col width="80">
						<col width="85">
						<col width="170">
					</colgroup>
					<thead>
					<tr>
						<th><label><input type="checkbox" name="allChk"></label></th>
						<th>NO</th>
						<th>이사날짜</th>
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
					<tr>
						<td><label><input type="checkbox"></label></td>
						<td>2</td>
						<td>2019.6.30</td>
						<td>유성연</td>
						<td>01023399207</td>
						<td>서울시 마포구 매봉산로 31 SPLEX-CENTER 11층</td>
						<td>서울시 영등포구 당산동 이레빌딩</td>
						<td><span class="tag col_blue f_w">차량만/일반/반포장/포장</span></td>
						<td>
							<span class="tag col_green f_w">예약중</span>
						</td>
						<td>
							<div class="set_menu">
								<a href="reserve_info.html" class="btn col_navy f_w">상세보기</a>
							</div>
						</td>
					</tr>
					<tr>
						<td><label><input type="checkbox"></label></td>
						<td>2</td>
						<td>2019.6.30</td>
						<td>유성연</td>
						<td>01023399207</td>
						<td>서울시 마포구 매봉산로 31 SPLEX-CENTER 11층</td>
						<td>서울시 영등포구 당산동 이레빌딩</td>
						<td><span class="tag col_blue f_w">차량만/일반/반포장/포장</span></td>
						<td>
							<span class="tag col_green f_w">예약완료</span>
						</td>
						<td>
							<div class="set_menu">
								<a href="reserve_info.html" class="btn col_navy f_w">상세보기</a>
							</div>
						</td>
					</tr>
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
	<div class="popup memo">
		<div class="popupCon">
			<div class="head">
				<span>메모</span>
			</div>
			<div class="body scroll">
				<textarea class="text_editor smaller"></textarea>
			</div>
			<div class="footer">
				<a href="javascript:closePop()" class="btn pop col_darkGrey f_w">닫기</a>
				<a href="javascript:void(0)" class="btn pop col_red f_w">저장</a>
			</div>
		</div>
	</div>

</div>
<script>


	// 메모 팝업창
	function memo_pop(e){
		$('.contents').addClass('overlay');
		$('.popup').show();
	}
</script>
</body>
</html>