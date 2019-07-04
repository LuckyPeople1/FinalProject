<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일-->
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/driver/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/driver/page/nav_shop.jsp" %>    <!--맨왼쪽 2번째 네비 메뉴 (입찰관리)  -->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">이사 입찰 상세보기</div>
			<div class="page_sub_title"></div>
		</div>
		<ul class="tabs_group clearfix">
			<li>
				<a href="/driver/auctionDetail" class="on">기본정보</a>
			</li>
		</ul>
		<div class="section">
			<div class="section_title">사용자정보</div>
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
						<th>이름</th>
						<td colspan="3">
							<label><input type="text" value="최희수" readonly="readonly"></label>
						</td>
					</tr>
					<tr>
						<th>이사날짜</th>
						<td><input class="tbox full" type="text" value="2019.6.30" readonly="readonly"></td>
						<th>휴대폰번호</th>
						<td><input class="tbox full" type="text" value="01012345678" readonly="readonly"></td>
					</tr>
					<tr>
						<th>출발지정보</th>
						<td><input class="tbox full" value="서울시 마포구 매봉산로 31 SPLEXCENTER" readonly="readonly"></td>
						<th>도착지정보</th>
						<td><input class="tbox full" value="서울시 영등포구 당산동 이레빌딩" readonly="readonly"></td>
					</tr>
					<tr>
						<th>이사 시작 시간</th>
						<td>
							<input type="text" value="13:30" readonly="readonly">
						</td>
						<th>이사종류</th>
						<td><input type="text" value="차량만/일반/반보팡/포장" readonly="readonly"></td>
					</tr>
					<tr>
						<th>도움여부(짐을 함께 옮길사람여부)</th>
						<td colspan="3"><input type="text" value="있음" readonly="readonly"></td>
					
					</tr>
					<tr>
						<th>메모</th>
						<td colspan="3"><textarea class="text_editor smaller" readonly="readonly">깨지지 않게 조심해주세요!!! </textarea></td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="section">
			<div class="section_title">출발지 상세정보</div>
			<div class="set_form">
				<table class="table_set">
					<colgroup>
						<col width="200">
						<col width="100">
						<col width="250">
						<col width="*">
						<col width="*">
					</colgroup>
					<thead></thead>
					<tbody>
					<tr>
						<th>이사 사진</th>
						<td colspan="5" class="">
							<script>
								/* 이미지 업로드 5개 만들기 (추후 php for문 쓸 것..) 퍼스트 차일드가 안먹음 ㅠㅠ */

								var strBox = new Array()

								for(var i = 0; i <= 11 ; i++){

									strBox +='<div class="img_upload">';
									strBox +='	<input type="file" name="img_'+i+'" id="img_'+i+'" class="hide" onchange="img_change(this)">';
									strBox +='	<a href="#none" class="imgUp" id="imgUp_'+i+'" onclick="img_up(this)"></a>';
									strBox +='</div>';

								}
								document.write(strBox);
							</script>
						</td>
					</tr>
					<%-- <c:forEach items="${dfddf }" var="sadf" varStatus="status">
						sadf.arr[status.index]
					</c:forEach> --%>
					<tr>
						<th colspan="2">짐이름</th>
						<td colspan="">
							냉장고(package_name)
						</td>
						<th colspan="">총수량</th>
						<td colspan="3">
							3
						</td>
					</tr>
					
					 <tr>
						<th>냉장고(1)</th>
						<th>냉장고 종류</th>
						<td>양문형</td><br>
						<th>용량</td>
						<td colspan="3">120~250리터</td>
					</tr>
					
					
					<tr>
						<th>냉장고(2)</th>
						<th>냉장고 종류</th>
						<td>일반형</td>
						<th>용량</th>
						<td colspan="3">251~460리터</td>
					</tr>
					
					
					
					<tr>
						<th colspan="2">짐이름</th>
						<td>침대</td>
						<th>총수량</th>
						<td colspan="3">2</td>
					</tr>
					<tr>
						<th>침대(1)</th>
						<th>침대크기</th>
						<td>더블</td><br>
						<th>프레임 여부 및 종류</td>
						<td>일반 프레임</td>
						<th>특이사항</th>
						<td>일반 침대</td>
					</tr>
					
					<tr>
						<th>상품고시정보</th>
						<td colspan="5">
							<textarea class="text_editor smaller"></textarea>
						</td>
					</tr>
					<tr>
						<th>거래정보</th>
						<td colspan="3">
							<textarea class="text_editor smaller"></textarea>
						</td>
					</tr>
					<tr>
						<th>예약취소 및 환불규정</th>
						<td colspan="3">
							<textarea class="text_editor smaller"></textarea>
						</td>
					</tr>
					<tr>
						<th>사업자번호</th>
						<td><input class="tbox full" placeholder="'-'을 제외한 숫자만 입력"></td>
						<th>은행명</th>
						<td><input class="tbox full"></td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="btn_box">
			<a href="javascript:history.back()" class="btn col_darkGrey">취소</a>
			<a href="javascript:void(0)" class="btn col_red">저장</a>
		</div>
		<div class="list_form">

		</div>

	</div>
	<%@include file="/WEB-INF/views/driver/common/footer.jsp"%>
</div>
<script src="/driver/js/shop_setting.js"></script>

</body>
</html>