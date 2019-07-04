<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<div class="page_title">예약 상세보기</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title">회원정보</div>
			<div class="set_form">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<thead></thead>
					<tbody>
					<tr>
						<th>아이디</th>
						<td>ssooya90</td>
						<th>이름</th>
						<td>최희수</td>
					</tr>
					<tr>
						<th>연락처</th>
						<td>01084649696</td>
						<th>추천인</th>
						<td>qug89889</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>ssooya90@naver.com</td>
						<th>생년월일</th>
						<td>19901015</td>
					</tr>
					<tr>
						<th>성별</th>
						<td>남자</td>
						<th>예약횟수</th>
						<td>42</td>
					</tr>
					<tr>
						<th>총결제금액</th>
						<td>650,000원</td>
						<th>노쇼(NOSHOW) 횟수</th>
						<td>20</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="section">
			<div class="section_title">예약정보</div>
			<div class="set_form">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<thead></thead>
					<tbody>
					<tr>
						<th>예약번호</th>
						<td>123456789</td>
						<th>예약상태</th>
						<td>예약중</td>
					</tr>
					<tr>
						<th>매장명</th>
						<td>가인헤어</td>
						<th>담당직원</th>
						<td>
							<span class="sbox normal">
								<select>
									<option>ssooya90 (이나영)</option>
									<option>quyfsdaf (김별)</option>
								</select>
							</span>
						</td>
					</tr>
					<tr>
						<th>예약일시</th>
						<td class="date_info">
							<span>18-09-30 15:30</span>
							<a href="javascript:date_change()" class="btn col_red f_w ml10">변경</a>
							<a href="javascript:reserve_change_pop()" class="btn col_darkGrey f_w ml5">변경내역 보기</a>
						</td>
						<th>소요시간</th>
						<td>2:00</td>
					</tr>
					<tr>
						<th>예약메모</th>
						<td class="">첨부 이미지를 참고하여 펌 부탁드립니다.</td>
						<th rowspan="2">첨부 이미지</th>
						<td rowspan="2">
							<div class="attach_img">
								<img src="/driver/img/itemImg.png" alt="첨부 이미지">
							</div>
						</td>
					</tr>
					<tr>
						<th>상품정보</th>
						<td colspan="">
							<div class="item_name">블링블링 웨이브펌</div>
							<div class="option_name">기장 추가 - 어깨 아래 (+50,000)</div>
						</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="section">
			<div class="section_title">결제정보</div>
			<div class="set_form">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<thead></thead>
					<tbody>
					<tr>
						<th>결제일</th>
						<td>18-09-23 15:22:21</td>
						<th>결제번호</th>
						<td>123456779</td>
					</tr>
					<tr>
						<th>결제수단</th>
						<td>카드</td>
						<th>카드정보</th>
						<td>현대카드 / 2088-54**-****-****</td>
					</tr>
					<tr>
						<th>결제방식</th>
						<td>3개월</td>
						<th>총 결제금액</th>
						<td>280,000원</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="section">
			<div class="section_title">메모</div>
			<div class="set_form">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<thead></thead>
					<tbody>
					<tr>
						<th>메모</th>
						<td colspan="3">
							<textarea class="text_editor smaller"></textarea>
						</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="btn_box">
			<a href="javascript:history.back()" class="btn col_darkGrey">취소</a>
			<a href="javascript:void(0)" class="btn col_red">저장</a>
		</div>
	</div>
	<%@include file="/WEB-INF/views/driver/common/footer.jsp"%>

</div>
<script src="driver/js/shop_setting.js"></script>
<script>


</script>
</body>
</html>

