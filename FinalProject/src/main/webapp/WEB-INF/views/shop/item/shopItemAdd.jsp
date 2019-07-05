<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/shop/common/head.jsp"%>
<script></script>
<!--스타일-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp"%>
		<!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_room.jsp"%>
		<!--맨왼쪽  서브네비 메뉴-->
	</nav>
	<div class="contents">
		<section class="shopItemAdd">
			<div class="page_header">
				<div class="page_title">매물 등록</div>
				<div class="page_sub_title"></div>
			</div>
			<div class="section">
				<div class="etFHhl" name="roomType">
					<h1>매물 종류</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>종류 선택</th>
								<td class="fNOtpc"><label class="bVNPCb fSFsCh"> <input
										type="radio" name="room_type" checked="" class="room">
										<p>원룸</p>
								</label> <label class="bVNPCb fSFsCh"> <input type="radio"
										name="room_type" class="room">
										<p>투룸</p>
								</label> <label class="bVNPCb fSFsCh"> <input type="radio"
										name="room_type" class="room">
										<p>쓰리룸</p>
								</label> <label class="bVNPCb fSFsCh"> <input type="radio"
										name="room_type" id="officetels">
										<p>오피스텔(도시형)</p>
								</label> <label class="bVNPCb fSFsCh"> <input type="radio"
										name="room_type" id="kapt">
										<p>아파트</p>
								</label></td>
							</tr>
							<tr class="building_type">
								<th>건물 유형</th>
								<td class="fNOtpc">
									<div class="building_type1">
										<label class="bVNPCb fSFsCh"> <input type="radio"
											name="building_type">
											<p>단독주택</p>
										</label> <label class="bVNPCb fSFsCh"> <input type="radio"
											name="building_type">
											<p>다가구주택</p>
										</label> <label class="bVNPCb fSFsCh"> <input type="radio"
											name="building_type">
											<p>빌라/연립/다세대</p>
										</label> <label class="bVNPCb fSFsCh"> <input type="radio"
											name="building_type">
											<p>상가주택</p>
										</label>
									</div>
									<div class="building_type2">
										<label class="bVNPCb fSFsCh"> <input type="radio"
											name="building_type">
											<p>오피스텔</p>
										</label> <label class="bVNPCb fSFsCh"> <input type="radio"
											name="building_type">
											<p>도시형</p>
										</label>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="etFHhl" name="location2" id="location2"
					style="display: none;">
					<h1>
						위치 정보<span>*등기부등본 상의 주소를 입력해 주세요.</span>
					</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>주소</th>
								<td class="cjeVnz"><div class="jrPoTn">
										<div class="buhbPP">
											<select class="iqpoyl hRFrgm" name="selCity">
												<option value="">시/도 선택</option>
												<option value="11">서울특별시</option>
												<option value="26">부산광역시</option>
												<option value="27">대구광역시</option>
												<option value="28">인천광역시</option>
												<option value="29">광주광역시</option>
												<option value="30">대전광역시</option>
												<option value="31">울산광역시</option>
												<option value="36">세종특별자치시</option>
												<option value="41">경기도</option>
												<option value="42">강원도</option>
												<option value="43">충청북도</option>
												<option value="44">충청남도</option>
												<option value="45">전라북도</option>
												<option value="46">전라남도</option>
												<option value="47">경상북도</option>
												<option value="48">경상남도</option>
												<option value="50">제주특별자치도</option>
											</select> <select class="iqpoyl hRFrgm" name="selGu">
												<option value="">구/군 선택</option>
											</select> <select class="iqpoyl hRFrgm" name="selDong">
												<option value="">동 선택</option>
											</select>
										</div>
										<form class="fQrInE">
											<input autocomplete="off" class="fbxLHj kTQnUD"
												name="keyword" placeholder="단지명 입력 예) 래미안, 리치빌" value="">
											<button type="button" class="kTyFCo" id="jusoBtn">주소검색</button>
										</form>
										<div id="jusoList"></div>
										<div class="cuOBSd"></div>
										<div class="jjeyfJ">
											<div class="gryuVg cmjtGP">
												<input autocomplete="off" class="mtaUF kTQnUD" name="dong"
													placeholder="예)101동" value="">
											</div>
											<div class="igeEIT cmjtGP">
												<input autocomplete="off" class="hTUuaO kTQnUD" name="ho"
													placeholder="예)201호" value="">
											</div>
										</div>
										<div class="ifWEqm">
											<label class="kAqGVi" size="22"> <input
												type="checkbox" class="PcMeW" name="is_noinfo_dong" value="">
												<span class="CheckBox"></span> <span class="hsrjeP">등본에
													동정보가 없는 경우 선택해 주세요.</span>
											</label>
										</div>
										<p class="dLNiOJ">
											<svg width="18" height="18" viewBox="0 0 18 18">
												<g fill="none" fill-rule="evenodd">
												<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
												<path fill="#9C9EA3"
													d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
												</g>
											</svg>
											<span>단지명이 검색되지 않는다면 고객센터1899-6840으로 문의주세요.</span>
										</p>
									</div>
									<div class="hkuNdh">
										<div class="kCBxYt">
											<svg width="52" height="52" viewBox="0 0 52 52">
												<g fill="none" fill-rule="evenodd"
													transform="translate(1 1)">
												<circle cx="25.2" cy="25.2" r="25.2" fill="#FFF"
													stroke="#EEE" stroke-width="1.2"></circle>
												<path fill="#000"
													d="M28.286 21.257a3.435 3.435 0 0 0-3.429-3.428 3.435 3.435 0 0 0-3.428 3.428 3.435 3.435 0 0 0 3.428 3.429 3.435 3.435 0 0 0 3.429-3.429zm3.428 0c0 .817-.093 1.66-.442 2.397l-4.875 10.367c-.28.589-.897.95-1.54.95s-1.259-.361-1.527-.95l-4.888-10.367c-.348-.736-.442-1.58-.442-2.397a6.853 6.853 0 0 1 6.857-6.857 6.853 6.853 0 0 1 6.857 6.857z"></path>
												</g>
											</svg>
										</div>
										<p class="ilxtFq">주소 검색을 하시면</p>
										<p class="ilxtFq">해당 위치가 지도에 표시됩니다.</p>
									</div></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="etFHhl" name="location" id="location1">
					<h1>
						위치 정보<span>*등기부등본 상의 주소를 입력해 주세요.</span>
					</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>주소</th>
								<td class="dZxpBV">
									<div class="xMNKR">
										<p class="dvECgk">
											<svg width="18" height="18" viewBox="0 0 18 18">
											<g fill="none" fill-rule="evenodd">
											<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
											<path fill="#9C9EA3"
													d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
											</g>
											</svg>
											<span>도로명, 건물명, 지번에 대해 통합검색이 가능합니다.</span>
										</p>
										<form class="fQrInE">
											<input autocomplete="off" class="fbxLHj kTQnUD"
												name="keyword" placeholder="예)번동 10-1, 강북구 번동" value="">
											<button type="button" class="kTyFCo">주소검색</button>
										</form>
										<div class="fUXvpI"></div>
										<div class="kXKUhT">
											<div class="jlsyRm gnEBbX">
												<input autocomplete="off" class="bVCGUR kTQnUD" name="dong"
													placeholder="예)101동" value="">
											</div>
											<div class="xUWNs gnEBbX">
												<input autocomplete="off" class="gVtYYG kTQnUD" name="ho"
													placeholder="예)201호" value="">
											</div>
										</div>
										<div class="gZWbGn">
											<label class="kAqGVi" size="22"> <input
												type="checkbox" class="PcMeW" name="is_noinfo_dong" value="">
												<span class="CheckBox"></span> <span class="kmXRUf">등본에
													동정보가 없는 경우 선택해 주세요.</span>
											</label>
										</div>
										<p class="dvECgk">
											<svg width="18" height="18" viewBox="0 0 18 18">
											<g fill="none" fill-rule="evenodd">
											<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
											<path fill="#9C9EA3"
													d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
											</g>
											</svg>
											<a>주소가 검색되지 않으세요?</a>
										</p>
									</div>
									<div class="kADOdT">
										<div class="dioXoB">
											<svg width="52" height="52" viewBox="0 0 52 52">
											<g fill="none" fill-rule="evenodd" transform="translate(1 1)">
											<circle cx="25.2" cy="25.2" r="25.2" fill="#FFF"
													stroke="#EEE" stroke-width="1.2"></circle>
											<path fill="#000"
													d="M28.286 21.257a3.435 3.435 0 0 0-3.429-3.428 3.435 3.435 0 0 0-3.428 3.428 3.435 3.435 0 0 0 3.428 3.429 3.435 3.435 0 0 0 3.429-3.429zm3.428 0c0 .817-.093 1.66-.442 2.397l-4.875 10.367c-.28.589-.897.95-1.54.95s-1.259-.361-1.527-.95l-4.888-10.367c-.348-.736-.442-1.58-.442-2.397a6.853 6.853 0 0 1 6.857-6.857 6.853 6.853 0 0 1 6.857 6.857z"></path>
											</g>
											</svg>
										</div>
										<p class="cOSEj">주소 검색을 하시면</p>
										<p class="cOSEj">해당 위치가 지도에 표시됩니다.</p>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="etFHhl" name="dealType">
					<h1>거래 정보</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th rowspan="2">거래 종류</th>
								<td class="iFmBhb">
								<div class="bMtYCv">
										<p class="tmpFp">월세</p>
										<input autocomplete="off" class="fqDzuM kTQnUD" name="deposit" type="0" placeholder="보증금" value="">
										<p class="ktwJnl">/</p>
										<input autocomplete="off" class="ghUXBC kTQnUD"	name="price" type="text" placeholder="월세" value="">
										<p class="fIWZWk">만원
											<span>(예 월세 1000만원/50만원)</span>
										</p>
										<button class="iFqJVZ"></button>
								</div>
								<div class="bMtYCv">
										<p class="tmpFp">전세</p>
										<input autocomplete="off" class="fqDzuM kTQnUD" name="deposit" type="1" placeholder="전세" value="">
										<p class="fIWZWk">만원
											<span>(예 전세 2000만원)</span>
										</p>
										<button class="iFqJVZ"></button>
								</div>
								</td>
							</tr>
							<tr>
								<td class="iFmBhb">
								<button class="gvJkZp">월세</button>
									<button class="gvJkZp" disabled="">전세</button>
									<div class="fZAwwn">
										<label class="kAqGVi" size="22">
										<input type="checkbox" class="PcMeW" name="short_lease" value="">
										<span class="CheckBox"></span>
										<span class="kjAlFQ">단기가능</span></label>
									</div>
									<p class="ZbkTp">
										<svg width="18" height="18" viewBox="0 0 18 18">
											<g fill="none" fill-rule="evenodd">
											<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
											<path fill="#9C9EA3" d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
											</g>
										</svg>
										<span>처음에 선택한 거래 종류가 우선노출됩니다. 예치금이 있는 경우 보증금 입력란에 필히 입력하세요.</span>
									</p>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="etFHhl" name="baseInfo" id="baseInfo">
					<h1>기본 정보</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col width="450px">
							<col width="150px">
							<col width="430px">
						</colgroup>
						<tbody>
							<tr>
								<th rowspan="2"><p>건물 크기</p> <span>(1P = 3.3058㎡)</span></th>
								<td class="ggZjqG">
									<p class="hNdXGi">공급 면적</p> <input autocomplete="off"
									class="gsCYXz kTQnUD" name="provision_size_pyeong" value="">
									<p class="cmXpqK">평</p> <input autocomplete="off"
									class="gsCYXz kTQnUD" name="provision_size" value="">
									<p class="cmXpqK">㎡</p>
								</td>
								<th rowspan="2">건물 층수</th>
								<td class="ggZjqG">
									<p class="hNdXGi">건물 층수</p> <select class="freEbZ hRFrgm"
									name="building_floor">
										<option value="">건물 층수 선택</option>
										<c:forEach var="i" begin="1" end="49" step="1">
											<option value=i>${i }층</option>
										</c:forEach>
								</select>
								</td>
							</tr>
							<tr>
								<td class="ggZjqG">
									<p class="hNdXGi">전용 면적</p> <input autocomplete="off"
									class="gsCYXz kTQnUD" name="room_size_pyeong" value="">
									<p class="cmXpqK">평</p> <input autocomplete="off"
									class="gsCYXz kTQnUD" name="room_size" value="">
									<p class="cmXpqK">㎡</p>
								</td>
								<td class="ggZjqG">
									<p class="hNdXGi">해당 층수</p> <select class="freEbZ hRFrgm"
									name="room_floor">
										<option value="">해당 층수 선택</option>
										<option value="-1">반지층</option>
										<option value="0">옥탑</option>
										<c:forEach var="i" begin="1" end="49" step="1">
											<option value=i>${i }층</option>
										</c:forEach>
								</select>
								</td>
							</tr>
							<tr>
								<th>난방 종류</th>
								<td class="ggZjqG" colspan="3"><select
									class="iDUqOA hRFrgm" name="heating_type">
										<option value="">난방 종류 선택</option>
										<option value="0">중앙 난방</option>
										<option value="1">개별 난방</option>
										<option value="2">지역 난방</option>
								</select></td>
							</tr>
							<tr>
								<th>입주 가능일</th>
								<td class="ggZjqG" colspan="3">
									<button class="zxfCA">즉시 입주</button>
									<button class="zxfCA">날짜 협의</button>
									<button class="zxfCA">날짜 선택</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="etFHhl" name="additional">
					<h1>추가정보</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col width="450px">
							<col width="150px">
							<col width="430px">
						</colgroup>
						<tbody>
							<tr>
								<th rowspan="2">관리비</th>
								<td class="cCUCai" colspan="3"><label class="gBFyOc fSFsCh">
										<input type="radio" name="maintenance" checked="">
										<p>없음</p>
								</label> <label class="gBFyOc fSFsCh"> <input type="radio"
										name="maintenance">
										<p>있음</p>
								</label> <input autocomplete="off" class="esuiyZ kTQnUD" type="text"
									name="maintenance_cost" disabled="" value="">
									<p class="iOAqhO">만원</p></td>
							</tr>
							<tr>
								<td class="cCUCai" colspan="3">
									<div class="cdRbFB">
										<p>관리비항목</p>
										<p>(다중선택가능)</p>
									</div> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="maintenance_items">
										<p>인터넷</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="maintenance_items">
										<p>유선TV</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="maintenance_items">
										<p>청소비</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="maintenance_items">
										<p>수도세</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="maintenance_items">
										<p>도시가스</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="maintenance_items">
										<p>전기세</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="maintenance_items">
										<p>기타</p>
								</label>
								</td>
							</tr>
							<tr>
								<th>주차여부</th>
								<td class="cCUCai"><label class="gBFyOc fSFsCh"> <input
										type="radio" name="parking" checked="">
										<p>불가능</p>
								</label> <label class="gBFyOc fSFsCh"> <input type="radio"
										name="parking">
										<p>가능</p>
								</label> <input autocomplete="off" class="esuiyZ kTQnUD" type="text"
									name="parking_cost" disabled="" value="">
									<p class="iOAqhO">만원</p></td>
								<th>반려동물</th>
								<td class="cCUCai"><label class="gBFyOc fSFsCh"> <input
										type="radio" name="animal" checked="">
										<p>불가능</p>
								</label> <label class="gBFyOc fSFsCh"> <input type="radio"
										name="animal">
										<p>가능</p>
								</label></td>
							</tr>
							<tr>
								<th>엘리베이터</th>
								<td class="cCUCai"><label class="gBFyOc fSFsCh"> <input
										type="radio" name="elevator" checked="">
										<p>없음</p>
								</label> <label class="gBFyOc fSFsCh"> <input type="radio"
										name="elevator">
										<p>있음</p>
								</label></td>
								<th>베란다/발코니</th>
								<td class="cCUCai"><label class="gBFyOc fSFsCh"> <input
										type="radio" name="balcony" checked="">
										<p>없음</p>
								</label> <label class="gBFyOc fSFsCh"> <input type="radio"
										name="balcony">
										<p>있음</p>
								</label></td>
							</tr>
							<tr>
								<th>빌트인
									<div class="dROiWG">
										<svg width="18" height="18" viewBox="0 0 18 18">
										<g fill="none" fill-rule="evenodd">
										<circle cx="9" cy="9" r="9" fill="#CCC"></circle>
										<g fill="#FFF" transform="translate(6 3.5)">
										<path fill-rule="nonzero"
												d="M3.11 6.728c.11-.47.352-.738 1.049-1.256l.054-.04c1.079-.804 1.502-1.359 1.502-2.468 0-1.505-1.159-2.726-2.678-2.726C1.701.238.57 1.04.224 2.132a.574.574 0 1 0 1.096.347c.192-.608.875-1.092 1.717-1.092.87 0 1.53.694 1.53 1.577 0 .644-.226.94-1.04 1.546l-.054.04c-.901.671-1.292 1.104-1.481 1.917a.574.574 0 0 0 1.119.26z"></path>
										<circle cx="2.75" cy="9.75" r="1"></circle></g></g></svg>
										<div class="imVndG">
											<h1>빌트인이란?</h1>
											<p>냉장고나 싱크대 등을 돌출시키지 않은 일체형 인테리어</p>
										</div>
									</div>
								</th>
								<td class="cCUCai" colspan="1"><label class="gBFyOc fSFsCh">
										<input type="radio" name="built_in" checked="">
										<p>없음</p>
								</label> <label class="gBFyOc fSFsCh"> <input type="radio"
										name="built_in">
										<p>있음</p>
								</label></td>
								<th>구조</th>
								<td class="cCUCai"><label class="fyqlMy cdcjQK"> <input
										type="checkbox" name="duplex">
										<p>복층</p>
								</label> <label class="fyqlMy cdcjQK"> <input type="checkbox"
										name="division">
										<p>1.5룸/주방분리형</p>
								</label></td>
							</tr>
							<tr>
								<th>옵션항목</th>
								<td class="cCUCai" colspan="3"><label class="hrokF cdcjQK">
										<input type="checkbox" name="room_options">
										<p>에어컨</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="room_options">
										<p>세탁기</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="room_options">
										<p>침대</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="room_options">
										<p>책상</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="room_options">
										<p>옷장</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="room_options">
										<p>TV</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="room_options">
										<p>신발장</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="room_options">
										<p>냉장고</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="room_options">
										<p>가스레인지</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="room_options">
										<p>인덕션</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="room_options">
										<p>전자레인지</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="room_options">
										<p>전자도어락</p>
								</label> <label class="hrokF cdcjQK"> <input type="checkbox"
										name="room_options">
										<p>비데</p>
								</label></td>
							</tr>
							<tr>
								<th>전세자금대출</th>
								<td class="cCUCai" colspan="3"><label class="gBFyOc fSFsCh">
										<input type="radio" name="loan" checked="">
										<p>불가능</p>
								</label> <label class="gBFyOc fSFsCh"> <input type="radio"
										name="loan" checked="">
										<p>가능</p>
								</label></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="etFHhl" name="detailInfo">
					<h1>상세 설명</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>제목</th>
								<td class="iXeisV"><input autocomplete="off"
									class="cNKZeV kTQnUD" type="text" name="title"
									placeholder="예)신논현역 도보 5분거리, 혼자 살기 좋은 방 입니다." value="">
								</td>
							</tr>
							<tr>
								<th>상세 설명</th>
								<td class="iXeisV"><textarea class="iePFTd hunnDM"
										name="memo"
										placeholder="상세설명 작성 주의사항
			
-방 정보와 관련없는 홍보성 정보는 입력하실 수 없습니다. (홈페이지 주소, 블로그, SNS, 메신저ID, 전화번호, 이메일 등)
- 중개수수료를 언급한 내용은 입력할 수 없습니다. (중개수수료 무료, 꽁짜, 반값 등)

*주의사항 위반시 허위매물로 간주되어 매물 삭제 및 이용의 제한이 있을 수 있습니다."></textarea>
								</td>
							</tr>
							<tr>
								<th>비공개 메모</th>
								<td class="iXeisV"><textarea class="fAiWMO hunnDM"
										name="private_memo"
										placeholder="외부에 공개되지 않으며, 등록자에게만 보이는 메모입니다."></textarea></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="etFHhl" name="photo">
				<h1>사진 등록</h1>
				<div class="Xyvt">
					<div class="hhdFgg">
						<p>- 사진은 가로로 찍은 사진을 권장합니다. (가로 사이즈 최소 800px)</p>
						<p>- 사진 용량은 사진 한 장당 10MB 까지 등록이 가능합니다.</p>
						<p>- 사진은 최소 3장 이상 등록해야하며, 최대 15장 까지 권장합니다. 그 이상 등록할 경우 업로드 시간이
							다소 지연될 수 있습니다.</p>
					</div>
					<div class="heKOml">
						<div class="jAfNtH"></div>
						<div class="gpqhxG">
							<svg width="70" height="70" viewBox="0 0 70 70">
							<g fill="none" fill-rule="evenodd">
								<circle cx="35" cy="35" r="35" fill="#D8D8D8"></circle>
								<g transform="translate(19 23)">
									<rect width="30" height="22" x="1" y="1" stroke="#777"
									stroke-width="2" rx="3"></rect>
									<circle cx="25" cy="7" r="2" fill="#777"></circle>
									<path fill="#777"
									d="M3.996 13.038l6.042-6.042 4 4 2.981-2.98 10.988 10.988v1.015H3.984z"></path>
									</g>
							</g>
							</svg>
							<p class="sBZgE">실 사진 최소 3장 이상 등록 하셔야 하며, 가로 사진을 권장합니다.</p>
							<p class="hUkkO">다싸 로고를 제외한 불필요한 정보(워터마크, 상호, 전화번호 등)가 있는 매물은
								비공개 처리 됩니다.</p>
						</div>
						<div class="cNXJpD" style="position: relative;">
							<button class="kkaIZb" id="uploadPhoto"
								style="position: relative; z-index: 1;">일반 사진 등록</button>
							<div id="html5_1deomgtapghi1tbr10e9va5u7d4_container"
								class="moxie-shim moxie-shim-html5"
								style="position: absolute; top: 0px; left: 493px; width: 134px; height: 40px; overflow: hidden; z-index: 0;">
								<input id="html5_1deomgtapghi1tbr10e9va5u7d4" type="file"
									style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;"
									multiple="" accept=".jpg,.jpeg,.png" tabindex="-1">
							</div>
						</div>
					</div>
					<p class="bhZAGT">
						<svg width="18" height="18" viewBox="0 0 18 18">
							<g fill="none" fill-rule="evenodd">
								<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
								<path fill="#9C9EA3"
								d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
							</g>
						</svg>
						<span>허위 매물을 등록할 경우 다방에서 임의로 계정 및 매물 전체 삭제 처리됩니다.</span> <a
							href="https://blog.naver.com/dabangapp/220122235428"
							target="_blank" rel="noopener noreferrer">허위매물 제재 정책 확인하기</a>
					</p>
				</div>
			</div>
			<div class="gfvOAV">
				<label class="kAqGVi" size="22"> <input type="checkbox"
					class="PcMeW" name="isAgree" value=""> <span
					class="CheckBox"></span> <span class="eUWDCR">매물관리규정을
						확인하였으며, 입력한 정보는 실제 매물과 다름이 없습니다.</span>
				</label>
				<button class="kcMULl">취소</button>
				<button class="iEZQG">매물등록</button>
			</div>
			<div class="list_form"></div>

			<%-- juso팝업모달 --%>
			<div class="modal">
				<div class="hCCxcd">
					<div class="dmQPSa" width="550">
						<header class="GoREo">
							<h1>주소검색</h1>
							<button class="kXLdvu" id="jusoPopupCloseBtn">
								<svg width="30" height="30" viewBox="0 0 32 32">
									<g fill="none" fill-rule="evenodd" transform="translate(1 1)">
									<circle class="Circle" cx="15" cy="15" r="15"></circle>
									<g class="Close" stroke-linecap="round" stroke-width="2">
									<path
										d="M19.243 19.243l-8.486-8.486M19.243 10.757l-8.486 8.486"></path>
									</g>
									</g>
								</svg>
							</button>
						</header>
						<div class="lpldun">
							<div class="kIQVvC">
								<select class="lfasRf hRFrgm" name="selCity">
									<option value="">시/도 선택</option>
									<option value="11">서울특별시</option>
									<option value="26">부산광역시</option>
									<option value="27">대구광역시</option>
									<option value="28">인천광역시</option>
									<option value="29">광주광역시</option>
									<option value="30">대전광역시</option>
									<option value="31">울산광역시</option>
									<option value="36">세종특별자치시</option>
									<option value="41">경기도</option>
									<option value="42">강원도</option>
									<option value="43">충청북도</option>
									<option value="44">충청남도</option>
									<option value="45">전라북도</option>
									<option value="46">전라남도</option>
									<option value="47">경상북도</option>
									<option value="48">경상남도</option>
									<option value="50">제주특별자치도</option>
								</select> <select class="lfasRf hRFrgm" name="selGu">
									<option value="">구/군 선택</option>
								</select> <select class="ixarYj hRFrgm" name="selDong">
									<option value="">동 선택</option>
								</select>
							</div>
							<form class="bfHMFZ">
								<input autocomplete="off" class="kHPisP kTQnUD" name="keyword"
									placeholder="단지명 입력 예) 래미안, 리치빌" value="">
								<button class="laHiXv">
									<svg width="18" height="17" viewBox="0 0 18 17">
										<g fill="none" fill-rule="evenodd" stroke="#222"
											transform="translate(1 1)">
										<circle cx="6.5" cy="6.5" r="6.5"></circle>
										<path d="M11 11l5 5"></path>
										</g>
									</svg>
								</button>
							</form>
						</div>
						<div class="eAsCFY">
							<h1>알아두세요!</h1>
							<ul>
								<li>- 단지명을 검색 후 검색된 주소를 선택해주세요.</li>
								<li>- 위치 선택 후 단지명을 검색하시면 더욱 정확한 결과가 검색됩니다.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
	</div>
	</section>
	<%@include file="/WEB-INF/views/shop/common/footer.jsp"%>
	<script src="/shop/js/shop_setting.js"></script>
	<script>
		//시 선택 시  구/군 리스트 뽑아오는 스크립트 
		$("select[name='selCity']")
				.change(
						function() {
							var jusoCityCode = $(this).find("option:selected")
									.val();
							$("select[name='selCity']").find("option:selected")
									.text(
											$(this).find("option:selected")
													.text());
							$("select[name='selGu']").find("option").remove();
							$("select[name='selDong']").find("option").remove();
							$("select[name='selGu']").append(
									"<option>구/군 선택</option>");
							$("select[name='selDong']").append(
									"<option>동 선택</option>");
							$
									.ajax({
										type : "GET",
										url : "/shop/jusoGuList",
										data : {
											jusoCityCode : jusoCityCode
										},
										success : function(data) {
											if (data.length > 0) {
												for (var i = 0; i < data.length; i++) {
													$("select[name='selGu']")
															.append(
																	"<option value='" + data[i].jusoGuCode + "'>"
																			+ data[i].jusoGuName
																			+ "</option>")
												}
											}

										}
									});
						});
		//구/군 선택 시  동 리스트 뽑아오는 스크립트 
		$("select[name='selGu']")
				.change(
						function() {
							var jusoGuCode = $(this).find("option:selected")
									.val();
							$("select[name='selGu']").find("option:selected")
									.text(
											$(this).find("option:selected")
													.text());
							$("select[name='selDong']").find("option").remove();
							$("select[name='selDong']").append(
									"<option>동 선택</option>");
							$
									.ajax({
										type : "GET",
										url : "/shop/jusoDongList",
										data : {
											jusoGuCode : jusoGuCode
										},
										success : function(data) {
											if (data.length > 0) {
												for (var i = 0; i < data.length; i++) {
													$("select[name='selDong']")
															.append(
																	"<option value='" + data[i].jusoDongCode + "'>"
																			+ data[i].jusoDongName
																			+ "</option>")
												}
											}

										}
									});
						});
		//동 선택 시 아파트리스트 뽑아오는 스크립트
		$("select[name='selDong']").change(
				function() {
					var jusoDongCode = $(this).find("option:selected").val();
					$("select[name='selDong']").find("option:selected").text(
							$(this).find("option:selected").text());
					$.ajax({
						type : "GET",
						url : "/shop/kaptList",
						data : {
							jusoDongCode : jusoDongCode
						},
						success : function(data) {
							if (data.length > 0) {
								for (var i = 0; i < data.length; i++) {
									$('#jusoList').html(data[i]);
								}
							}
						}
					});
				});
		//주소 팝업 창 열기
		$('#jusoBtn').click(function() {
			$(".modal").css("display", "block");
		});
		//주소 팝업 창 닫기
		$("#jusoPopupCloseBtn").click(function() {
			$(".modal").css("display", "none");
		});
		//매물종류 선택 시 입력 폼 변경
		$(".room").click(function() {
			if ($(".room").is(":checked")) {
				alert("매물 종류를 변경하면 기존 입력한 항목들이 변경되거나 삭제될 수 있습니다.");
				$(".building_type1").css("display", "block");
				$(".building_type2").css("display", "none");
				$(".building_type").show();
				$("#location1").find('input').val("");
				$("#location1").find('select').val("");
				$("#baseInfo").find('input').val("");
				$("#baseInfo").find('select').val("");
				$("#location1").show();
				$("#location2").hide();
			}

		});
		$("#officetels").click(function() {
			alert("매물 종류를 변경하면 기존 입력한 항목들이 변경되거나 삭제될 수 있습니다.");
			$(".building_type1").css("display", "none");
			$(".building_type2").css("display", "block");
			$("#location2").find('input').val("");
			$("#location2").find('select').val("");
			$("#location2").show();
			$("#location1").hide();
			$(".building_type").show();
		});
		$("#kapt").click(function() {
			alert("매물 종류를 변경하면 기존 입력한 항목들이 변경되거나 삭제될 수 있습니다.");
			$(".building_type1").css("display", "none");
			$(".building_type2").css("display", "none");
			$("#location2").find('input').val("");
			$("#location2").find('select').val("");
			$("#location2").show();
			$("#location1").hide();
			$(".building_type").hide();
		});
	</script>
</div>
</body>
</html>