<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_reserve.jsp" %>   <!--맨왼쪽  서브네비 메뉴-->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">전체 예약관리</div>
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
						<th>검색어</th>
						<td>
							<span class="sbox small">
								<select>
									<option>고객명</option>
									<option>아이디</option>
									<option>예약번호</option>
									<option>상품명</option>
									<option>담당직원</option>
								</select>
							</span>
							<input class="tbox w_6p">
						</td>
						<th>메모 유무</th>
						<td>
							<label><input type="checkbox"><span>있음</span></label>
							<label class="ml10"><input type="checkbox"><span>없음</span></label>
						</td>

					</tr>
					<tr>
						<th>상태</th>
						<td colspan="3">
							<label><input type="checkbox"><span>예약중</span></label>
							<label class="ml10"><input type="checkbox"><span>완료</span></label>
							<label class="ml10"><input type="checkbox"><span>취소</span></label>
							<label class="ml10"><input type="checkbox"><span>노쇼</span></label>
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
				<div class="table_list_btn">
					<span class="right_btn">
						<a href="javascript:void(0)" class="btn col_darkGrey f_w">선택 취소</a>
					</span>
				</div>
				<table class="table_list">
					<colgroup>
						<col width="40">
						<col width="65">
						<col width="115">
						<col width="80">
						<col width="80">
						<col width="115">
						<col width="90">
						<col width="200">
						<col width="90">
						<col width="80">
						<col width="85">
						<col width="170">
					</colgroup>
					<thead>
					<tr>
						<th><label><input type="checkbox"></label></th>
						<th>NO</th>
						<th>예약번호</th>
						<th>매장명</th>
						<th>아이디<br/>고객명</th>
						<th>연락처</th>
						<th>예약일시</th>
						<th>상품명</th>
						<th>총 상품금액</th>
						<th>담당직원</th>
						<th>예약상태</th>
						<th>관리</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td><label><input type="checkbox"></label></td>
						<td>1</td>
						<td>
							<div class="mb5">1808021-1234</div>
							<a href="#none" class="btn col_grey line" onclick="memo_pop(this)">메모</a>
						</td>
						<td>
							<div>가인네일</div>
						</td>
						<td>ssooya90<br/>최희수</td>
						<td>01084649696</td>
						<td>18-09-30<br/>11:30</td>
						<td>
							<div class="item_name">블링블링 웨이브펌</div>
							<div class="option_name">기장추가 - 가슴아래(+50,000)</div>
							<div class="option_name">클리닉 - 클리닉A(+50,000)</div>
						</td>
						<td>150,000</td>
						<td>이나영</td>
						<td>
							<span class="tag col_green f_w">체크아웃</span>
						</td>
						<td>
							<div class="set_menu">
								<a href="reserve_info.html" class="btn col_navy f_w">상세보기</a>
							</div>

						</td>
					</tr>
					<tr>
						<td><label><input type="checkbox"></label></td>
						<td>1</td>
						<td>
							<div class="mb5">1808021-1234</div>
							<a href="#none" class="btn col_grey line" onclick="memo_pop(this)">메모</a>
						</td>
						<td>
							<div>가인네일</div>
						</td>
						<td>ssooya90<br/>최희수</td>
						<td>01084649696</td>
						<td>18-09-30<br/>11:30</td>
						<td>
							<div class="item_name">블링블링 웨이브펌</div>
							<div class="option_name">기장추가 - 가슴아래(+50,000)</div>
							<div class="option_name">클리닉 - 클리닉A(+50,000)</div>
						</td>
						<td>150,000</td>
						<td>이나영</td>
						<td>
							<span class="tag col_green f_w">예약중</span>
						</td>
						<td>
							<div class="set_menu">
								<a href="reserve_checkout.html" class="btn col_red f_w">체크아웃</a>
								<a href="reserve_noshow.html" class="btn col_darkGrey f_w">노쇼</a>
								<a href="reserve_info.html" class="btn col_navy f_w">상세보기</a>
								<a href="reserve_cancel_info.html" class="btn col_grey line">취소</a>
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
	<footer role="footer" data-include="footer.html"></footer>
</div>
</body>
</html>