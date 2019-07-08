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
							<label><input class="tbox" type="text" value="최희수" readonly="readonly"></label>
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
						<th>출발지 엘레베이터유무</th>
						<td><input class="tbox full" value="삼항연삭식 희수형이 씀 찾아봐.! Y/X" readonly="readonly"></td>
						<th>도착지  엘레베이터 유무</th>
						<td><input class="tbox full" value="Y/X" readonly="readonly"></td>	
					</tr>
					<tr>
						<th>출발지 주차 유무</th>
						<td><input class="tbox full" value="삼항연삭식 희수형이 씀 찾아봐.! Y/X" readonly="readonly"></td>
						<th>도착지  주차 유무</th>
						<td><input class="tbox full" value="Y/X" readonly="readonly"></td>	
					</tr>
					<tr>
						<th>출발지 집형태</th>
						<td><input class="tbox full" value="오피스텔" readonly="readonly"></td>
						<th rowspan="1">도착지  집형태</th>
						<td><input class="tbox full" value="오피스텔" readonly="readonly"></td>	
					</tr>
					<tr>
						<th>출발지 방구조</th>
						<td><input class="tbox full" value="1.5룸" readonly="readonly"></td>	
					</tr>
					<tr>
						<th>출발지 집평수</th>
						<td><input class="tbox full" value="10~15평" readonly="readonly"></td>	
					</tr>
					<tr>
						<th>출발지 층수</th>
						<td><input class="tbox full" value="1층(계단X)" readonly="readonly"></td>
						<th>도착지 층수</th>
						<td><input class="tbox full" value="1층(계단0)" readonly="readonly"></td>	
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
			<div class="section_title">상세정보</div><hr>
			<br>
			<div class="driverPont"><p3>이사사진</p3></div><br>
			<div class="set_form">
				<colgroup>
					<col width="*">
				</colgroup>
				<table class="table_set">
					<tr>
						<th colspan="1">이사 사진</th>
						<td colspan="3" class="">
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
				</table>
				<br>
				<div class="driverPont"><p3>짐정보</p3></div><br>
				<div class="infoBox">
							<div class="infoTitle">짐 정보</div>
							<ul class="infoListBox">
								<li class="bg">
									<div class="row static">
										<div class="subject">가전</div>
									</div>
								</li>
								<li class="package">
									<div class="row">
										<div class="subject">제품이미지</div>
										<div class="con">
											<div class="packageName">상품명</div>
											<div class="packageOption">옵션..</div>
										</div>
									</div>
								</li>
							</ul>
							<ul class="infoListBox">
								<li class="bg">
									<div class="row static">
										<div class="subject">가구</div>
									</div>
								</li>
								<li class="package">
									<div class="row">
										<div class="subject">제품이미지</div>
										<div class="con">
											<div class="packageName">상품명</div>
											<div class="packageOption">옵션..</div>
										</div>
									</div>
								</li>
							</ul>
							<ul class="infoListBox">
								<li class="bg">
									<div class="row static">
										<div class="subject">기타</div>
									</div>
								</li>
								<li class="package">
									<div class="row">
										<div class="subject">제품이미지</div>
										<div class="con">
											<div class="packageName">상품명</div>
											<div class="packageOption">옵션..</div>
										</div>
									</div>
								</li>
							</ul>
							<ul class="infoListBox">
								<li class="bg">
									<div class="row static">
										<div class="subject">짐박스</div>
									</div>
								</li>
								<li class="">
									<div class="row">
										<div class="subject">제품이미지</div>
										<div class="con">
											<div class="packageName">상품명</div>
											<div class="packageOption">옵션..</div>
										</div>
									</div>
								</li>
							</ul>
							<ul class="infoListBox">
								<li class="bg">
									<div class="row static">
										<div class="subject">사진정보</div>
									</div>
								</li>
								<li class="">
									<div class="row">
										<div class="subject">제품이미지</div>
										<div class="con">
											<div class="packageName">상품명</div>
											<div class="packageOption">옵션..</div>
										</div>
									</div>
								</li>
							</ul>
							<ul class="infoListBox">
								<li class="bg">
									<div class="row static">
										<div class="subject">메모</div>
									</div>
								</li>
								<li class="">
									<textarea class="memo" placeholder="이사 시 요청사항 및 특이사항을 입력해주세요."></textarea>
								</li>
							</ul>
						</div>
				<table class="table_set">
					<colgroup>
						<col width="*">
						<col width="*">
						<col width="*">
						<col width="*">
					</colgroup>
					<thead></thead>
					<!--tr(table row) th(table head) td(table data)  -->
					<tbody>
						<<tr>
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
				</table> --%>
			</div>
		</div>
		<div class="btn_box">
			<a href="javascript:history.back()" class="btn col_darkGrey">취소</a>
			<a href="javascript:void(0)" class="btn col_red">저장</a>
		</div>
		

	</div>
	<%@include file="/WEB-INF/views/driver/common/footer.jsp"%>
</div>
<script src="/driver/js/shop_setting2.js"></script>
</body>
</html>