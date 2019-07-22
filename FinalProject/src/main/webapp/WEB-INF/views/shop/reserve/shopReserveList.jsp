<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_reserve.jsp" %>   <!--맨왼쪽  서브네비 메뉴-->
	</nav>
	<div class="contents">
		<section class="shopItemList">
		<div class="page_header">
			<div class="page_title">전체 방문관리</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title"></div>
			<div class="set_form search">
			<form action="/shop/reservationSearch" id="shopReservationSearch" method="get">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tr>
						<th>카테고리</th>
						<td colspan="3">
							<span class="sbox small">
								<select name="shopItemManager">
									<option selected="selected" value="">담당자선택</option>
								</select>
							</span>
							<span class="sbox small">
								<select name="type">
									<option selected="selected" value="all">매물선택</option>
									<option value="one">원룸</option>
									<option value="two">투룸</option>
									<option value="three">쓰리룸</option>
									<option value="offi">오피스텔</option>
									<option value="kapt">아파트</option>
								</select>
							</span>
						</td>
					</tr>
					<tr>
						<th>검색어</th>
						<td colspan="3">
							<input class="tbox w_6p">
						</td>
					</tr>
				</table>
				</form>
				<div class="set_form_search">
					<a href="javascript:$('#shopItemSearch').submit()" class="btn col_blue f_w">검색</a>
					<a href="/shop/item" class="btn col_grey line ml5">전체 목록</a>
				</div>
			</div>
			<div class="list_form">
				<div class="table_list_btn">
				</div>
				<table class="table_list">
					<colgroup>
						<col width="50">
						<col width="90">
						<col width="90">
						<col width="90">
						<col width="90">
						<col width="200">
						<col width="80">
						<col width="90">
						<col width="150">
					</colgroup>
					<thead>
					<tr>
						<th><label><input type="checkbox"></label></th>
						<th>예약번호</th>
						<th>예약매물번호</th>
						<th>예약고객명</th>
						<th>예약고객연락처</th>
						<th>담당자</th>
						<th>예약신청일</th>
						<th>상태</th>
						<th>관리</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${list}" var="item">
					<tr>
						<td><label><input type="checkbox"></label></td>
						<td>${item.shopReservationIdx }</td>
						<td>
							<div class="mb5">${item.shopItemIdx }</div>
						</td>
						<td>
							<div>${item.userName}</div>
						</td>
						<td>
							<div>${item.userTel }</div>
						</td>
						<td>${item.shopItemManager }</td>
						<td>
						<c:if test="${item.shopReservationState eq '예약대기'}">
							<span class="tag col_green f_w">${item.shopReservationState }</span>
						</c:if>
						<c:if test="${item.shopReservationState eq '예약완료'}">
							<span class="tag col_navy f_w">${item.shopReservationState }</span> 
						</c:if>
						<c:if test="${item.shopReservationState eq '상담완료'}">
							<span class="tag col_darkGrey f_w">${item.shopReservationState }</span> 
						</c:if>
						</td>
						<td>${item.shopReservationDate }</td>
						<td>
							<div class="set_menu">
								<input name="idx" type="hidden" value=${item.shopReservationIdx }>
								<c:if test="${item.shopReservationState eq '예약대기'}">
									<button type="button" class="btn small col_blue f_w" name="reservationhold" value=${item.shopReservationIdx }>예약진행</button>
								</c:if>
								<c:if test="${item.shopReservationState eq '예약완료'}">
									<button type="button" class="btn small col_navy f_w" name="reservationIng" value=${item.shopReservationIdx }>상담완료</button>
								</c:if>
								<button type="button" class="btn small col_red f_w" name="reservationDel" value=${item.shopReservationIdx }>삭제</button>
							</div>
						</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<div id="pageNavi" class="page_group clearFix">
				${pageNavi}
			</div>
		</div>
		</section>
	</div>
	<footer role="footer" data-include="footer.html"></footer>
</div>
<script>
	$("button[name='reservationhold']").click(function(){
		var idx = $(this).val();
		if(confirm("예약진행하시겠습니까?")){
			location.href="/shop/reservationhold?shopReservationIdx="+idx;
		}
		return;
	});
	$("button[name='reservationIng']").click(function(){
		var idx = $(this).val();
		if(confirm("예약종료하시겠습니까?")){
			location.href="/shop/reservationIng?shopReservationIdx="+idx;
		}
		return;
	});
	$("button[name='reservationDel']").click(function(){
		var idx = $(this).val();
		if(confirm("삭제하시겠습니까?")){
			location.href="/shop/reservationDel?shopReservationIdx="+idx;
		}
		return;
	})
</script>
</body>
</html>