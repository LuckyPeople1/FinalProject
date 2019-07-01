<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="container full">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
	</nav>
	<div class="contents">
		<div class="section_box">
			<div class="page_header">
				<div class="page_title">예약현황</div>
				<div class="page_sub_title"></div>
			</div>
			<div class="section">
				<div class="section_title"></div>
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
			</div>
		</div>

	</div>
	<%@include file="/WEB-INF/views/shop/common/footer.jsp"%>

</div>
</body>
</html>