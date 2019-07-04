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
				<div class="styled__Box-sc-1etgh1k-1 etFHhl" name="roomType">
					<h1>매물 종류</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>종류 선택</th>
								<td class="styled__Td-loqpne-0 fNOtpc">
									<label class="styled__Radio-loqpne-1 bVNPCb styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="room_type" checked="" class="room">
											<p>원룸</p>
									</label>
									<label class="styled__Radio-loqpne-1 bVNPCb styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="room_type" class="room">
											<p>투룸</p>
									</label>
									<label class="styled__Radio-loqpne-1 bVNPCb styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="room_type" class="room">
											<p>쓰리룸</p>
									</label>
									<label class="styled__Radio-loqpne-1 bVNPCb styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="room_type" id="officetels">
											<p>오피스텔(도시형)</p>
									</label>
									<label class="styled__Radio-loqpne-1 bVNPCb styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="room_type" id="kapt">
											<p>아파트</p>
									</label>
								</td>
							</tr>
							<tr>
								<th>건물 유형</th>
								<td class="styled__Td-loqpne-0 fNOtpc">
									<div class="building_type1">
										<label class="styled__Radio-loqpne-1 bVNPCb styled__RadioBtn-j1kyvo-0 fSFsCh">
											<input type="radio" name="building_type">
												<p>단독주택</p>
										</label>
										<label class="styled__Radio-loqpne-1 bVNPCb styled__RadioBtn-j1kyvo-0 fSFsCh">
											<input type="radio" name="building_type">
												<p>다가구주택</p>
										</label>
										<label class="styled__Radio-loqpne-1 bVNPCb styled__RadioBtn-j1kyvo-0 fSFsCh">
											<input type="radio" name="building_type">
												<p>빌라/연립/다세대</p>
										</label>
										<label class="styled__Radio-loqpne-1 bVNPCb styled__RadioBtn-j1kyvo-0 fSFsCh">
											<input type="radio" name="building_type">
												<p>상가주택</p>
										</label>
									</div>
									<div class="building_type2">
										<label class="styled__Radio-loqpne-1 bVNPCb styled__RadioBtn-j1kyvo-0 fSFsCh">
											<input type="radio" name="building_type">
												<p>오피스텔</p>
										</label>
										<label class="styled__Radio-loqpne-1 bVNPCb styled__RadioBtn-j1kyvo-0 fSFsCh">
											<input type="radio" name="building_type">
												<p>도시형</p>
										</label>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="styled__Box-sc-1etgh1k-1 etFHhl" name="location">
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
								<td class="styled__Td-mnzuks-0 cjeVnz"><div
										class="styled__Wrap-mnzuks-1 jrPoTn">
										<div class="styled__SelWrap-mnzuks-3 buhbPP">
											<select	class="styled__Sel-mnzuks-4 iqpoyl Select-sc-1sy32zq-0 hRFrgm"	name="selCity">
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
											</select>
											<select	class="styled__Sel-mnzuks-4 iqpoyl Select-sc-1sy32zq-0 hRFrgm"	name="selGu">
												<option value="">구/군 선택</option>
											</select>
											<select	class="styled__Sel-mnzuks-4 iqpoyl Select-sc-1sy32zq-0 hRFrgm"	name="selDong">
												<option value="">동 선택</option>
											</select>
										</div>
										<form class="styled__Form-mnzuks-5 fQrInE">
											<input autocomplete="off" class="styled__Keyword-mnzuks-6 fbxLHj Input-sfsekm-0 kTQnUD"	name="keyword" placeholder="단지명 입력 예) 래미안, 리치빌" value="">
											<button type="button" class="styled__SearchBtn-mnzuks-7 kTyFCo" id="jusoBtn">주소검색</button>
										</form>
										<div id="jusoList"></div>
										<div class="styled__Address-mnzuks-8 cuOBSd"></div>
										<div class="styled__Detail-mnzuks-9 jjeyfJ">
											<div	class="styled__DongBox-mnzuks-11 gryuVg styled__Box-mnzuks-10 cmjtGP">
												<input autocomplete="off" class="styled__Dong-mnzuks-12 mtaUF Input-sfsekm-0 kTQnUD" name="dong" placeholder="예)101동" value="">
											</div>
											<div	class="styled__HoBox-mnzuks-13 igeEIT styled__Box-mnzuks-10 cmjtGP">
												<input autocomplete="off" class="styled__Ho-mnzuks-14 hTUuaO Input-sfsekm-0 kTQnUD" name="ho" placeholder="예)201호" value="">
											</div>
										</div>
										<div class="styled__CheckWrap-mnzuks-15 ifWEqm">
											<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi" size="22">
												<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="is_noinfo_dong" value="">
													<span class="CheckBox"></span>
													<span class="styled__CheckText-mnzuks-16 hsrjeP">등본에 동정보가 없는 경우 선택해 주세요.</span>
											</label>
										</div>
										<p class="styled__Text-mnzuks-2 dLNiOJ">
											<svg width="18" height="18" viewBox="0 0 18 18">
												<g fill="none" fill-rule="evenodd">
												<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
												<path fill="#9C9EA3" d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
												</g>
											</svg>
											<span>단지명이 검색되지 않는다면 고객센터1899-6840으로 문의주세요.</span>
										</p>
									</div>
									<div class="styled__Map-mnzuks-17 hkuNdh">
										<div class="styled__Pin-mnzuks-18 kCBxYt">
											<svg width="52" height="52" viewBox="0 0 52 52">
												<g fill="none" fill-rule="evenodd"	transform="translate(1 1)">
												<circle cx="25.2" cy="25.2" r="25.2" fill="#FFF"	stroke="#EEE" stroke-width="1.2"></circle>
												<path fill="#000" d="M28.286 21.257a3.435 3.435 0 0 0-3.429-3.428 3.435 3.435 0 0 0-3.428 3.428 3.435 3.435 0 0 0 3.428 3.429 3.435 3.435 0 0 0 3.429-3.429zm3.428 0c0 .817-.093 1.66-.442 2.397l-4.875 10.367c-.28.589-.897.95-1.54.95s-1.259-.361-1.527-.95l-4.888-10.367c-.348-.736-.442-1.58-.442-2.397a6.853 6.853 0 0 1 6.857-6.857 6.853 6.853 0 0 1 6.857 6.857z"></path>
												</g>
											</svg>
										</div>
										<p class="styled__MapDesc-mnzuks-19 ilxtFq">주소 검색을 하시면</p>
										<p class="styled__MapDesc-mnzuks-19 ilxtFq">해당 위치가 지도에	표시됩니다.</p>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="styled__Box-sc-1etgh1k-1 etFHhl" name="location" style="display: none;">
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
								<td class="styled__Td-sc-1wmqs5y-0 dZxpBV">
									<div	class="styled__Wrap-sc-1wmqs5y-1 xMNKR">
										<p class="styled__Text-sc-1wmqs5y-2 dvECgk">
											<svg width="18" height="18" viewBox="0 0 18 18">
											<g fill="none" fill-rule="evenodd">
											<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
											<path fill="#9C9EA3"	d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
											</g>
											</svg>
											<span>도로명, 건물명, 지번에 대해 통합검색이 가능합니다.</span>
										</p>
										<form class="styled__Form-mnzuks-5 fQrInE">
											<input autocomplete="off" class="styled__Keyword-mnzuks-6 fbxLHj Input-sfsekm-0 kTQnUD"	name="keyword" placeholder="단지명 입력 예) 래미안, 리치빌" value="">
											<button type="button" class="styled__SearchBtn-mnzuks-7 kTyFCo">주소검색</button>
										</form>
										<div class="styled__Address-sc-1wmqs5y-6 fUXvpI"></div>
										<div class="styled__Detail-sc-1wmqs5y-7 kXKUhT">
											<div class="styled__DongBox-sc-1wmqs5y-9 jlsyRm styled__Box-sc-1wmqs5y-8 gnEBbX">
												<input autocomplete="off" class="styled__Dong-sc-1wmqs5y-10 bVCGUR Input-sfsekm-0 kTQnUD" name="dong" placeholder="예)101동" value="">
											</div>
											<div	class="styled__HoBox-sc-1wmqs5y-11 xUWNs styled__Box-sc-1wmqs5y-8 gnEBbX">
												<input autocomplete="off" class="styled__Ho-sc-1wmqs5y-12 gVtYYG Input-sfsekm-0 kTQnUD" name="ho" placeholder="예)201호" value="">
											</div>
										</div>
										<div class="styled__CheckWrap-sc-1wmqs5y-13 gZWbGn">
											<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi" size="22">
												<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="is_noinfo_dong" value="">
													<span class="CheckBox"></span>
													<span class="styled__CheckText-sc-1wmqs5y-14 kmXRUf">등본에	동정보가 없는 경우 선택해 주세요.</span>
											</label>
										</div>
										<p class="styled__Text-sc-1wmqs5y-2 dvECgk">
											<svg width="18" height="18" viewBox="0 0 18 18">
											<g fill="none" fill-rule="evenodd">
											<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
											<path fill="#9C9EA3" d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
											</g>
											</svg>
											<a>주소가 검색되지 않으세요?</a>
										</p>
									</div>
									<div class="styled__Map-sc-1wmqs5y-15 kADOdT">
										<div class="styled__Pin-sc-1wmqs5y-16 dioXoB">
											<svg width="52" height="52" viewBox="0 0 52 52">
											<g fill="none" fill-rule="evenodd" transform="translate(1 1)">
											<circle cx="25.2" cy="25.2" r="25.2" fill="#FFF" stroke="#EEE" stroke-width="1.2"></circle>
											<path fill="#000" d="M28.286 21.257a3.435 3.435 0 0 0-3.429-3.428 3.435 3.435 0 0 0-3.428 3.428 3.435 3.435 0 0 0 3.428 3.429 3.435 3.435 0 0 0 3.429-3.429zm3.428 0c0 .817-.093 1.66-.442 2.397l-4.875 10.367c-.28.589-.897.95-1.54.95s-1.259-.361-1.527-.95l-4.888-10.367c-.348-.736-.442-1.58-.442-2.397a6.853 6.853 0 0 1 6.857-6.857 6.853 6.853 0 0 1 6.857 6.857z"></path>
											</g>
											</svg>
										</div>
										<p class="styled__MapDesc-sc-1wmqs5y-17 cOSEj">주소 검색을 하시면</p>
										<p class="styled__MapDesc-sc-1wmqs5y-17 cOSEj">해당 위치가 지도에	표시됩니다.</p>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="styled__Box-sc-1etgh1k-1 etFHhl" name="dealType">
					<h1>거래 정보</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>거래 종류</th>
								<td class="styled__Td-sc-1toww6o-0 iFmBhb">
									<button class="styled__AddBtn-sc-1toww6o-12 gvJkZp">월세</button>
									<button class="styled__AddBtn-sc-1toww6o-12 gvJkZp">전세</button>
									<div class="styled__CheckWrap-sc-1toww6o-2 fZAwwn">
										<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi" size="22">
											<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="short_lease" value="">
											<span class="CheckBox"></span>
											<span class="styled__CheckText-sc-1toww6o-3 kjAlFQ">단기가능</span>
										</label>
									</div>
									<p class="styled__Text-sc-1toww6o-4 ZbkTp">
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
				<div class="styled__Box-sc-1etgh1k-1 etFHhl" name="baseInfo">
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
								<td class="styled__Td-sc-4u7gy5-0 ggZjqG">
									<p class="styled__SubTitle-sc-4u7gy5-3 hNdXGi">공급 면적</p> 
									<input autocomplete="off" class="styled__Size-sc-4u7gy5-4 gsCYXz Input-sfsekm-0 kTQnUD" name="provision_size_pyeong" value="">
									<p class="styled__Space-sc-4u7gy5-6 cmXpqK">평</p>
									<input autocomplete="off" class="styled__Size-sc-4u7gy5-4 gsCYXz Input-sfsekm-0 kTQnUD" name="provision_size" value="">
									<p class="styled__Space-sc-4u7gy5-6 cmXpqK">㎡</p>
								</td>
								<th rowspan="2">건물 층수</th>
								<td class="styled__Td-sc-4u7gy5-0 ggZjqG">
									<p class="styled__SubTitle-sc-4u7gy5-3 hNdXGi">건물 층수</p> 
									<select	class="styled__Floor-sc-4u7gy5-7 freEbZ Select-sc-1sy32zq-0 hRFrgm" name="building_floor">
										<option value="">건물 층수 선택</option>
										<c:forEach var="i" begin="1" end="49" step="1">
	                     					<option value=i>${i }층</option>
		                 				</c:forEach>
		                 			</select>
		                 		</td>
							</tr>
							<tr>
								<td class="styled__Td-sc-4u7gy5-0 ggZjqG">
									<p class="styled__SubTitle-sc-4u7gy5-3 hNdXGi">전용 면적</p> 
									<input autocomplete="off" class="styled__Size-sc-4u7gy5-4 gsCYXz Input-sfsekm-0 kTQnUD" name="room_size_pyeong" value="">
									<p class="styled__Space-sc-4u7gy5-6 cmXpqK">평</p> 
									<input autocomplete="off" class="styled__Size-sc-4u7gy5-4 gsCYXz Input-sfsekm-0 kTQnUD" name="room_size" value="">
									<p class="styled__Space-sc-4u7gy5-6 cmXpqK">㎡</p>
								</td>
								<td class="styled__Td-sc-4u7gy5-0 ggZjqG">
									<p class="styled__SubTitle-sc-4u7gy5-3 hNdXGi">해당 층수</p> 
									<select	class="styled__Floor-sc-4u7gy5-7 freEbZ Select-sc-1sy32zq-0 hRFrgm" name="room_floor">
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
								<td class="styled__Td-sc-4u7gy5-0 ggZjqG" colspan="3">
									<select	class="styled__Heating-sc-4u7gy5-8 iDUqOA Select-sc-1sy32zq-0 hRFrgm"	name="heating_type">
										<option value="">난방 종류 선택</option>
										<option value="0">중앙 난방</option>
										<option value="1">개별 난방</option>
										<option value="2">지역 난방</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>입주 가능일</th>
								<td class="styled__Td-sc-4u7gy5-0 ggZjqG" colspan="3">
									<button class="styled__MoveDate-sc-4u7gy5-10 zxfCA">즉시 입주</button>
									<button class="styled__MoveDate-sc-4u7gy5-10 zxfCA">날짜 협의</button>
									<button class="styled__MoveDate-sc-4u7gy5-10 zxfCA">날짜 선택</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="styled__Box-sc-1etgh1k-1 etFHhl" name="additional">
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
								<td class="styled__Td-sc-1u6ustj-0 cCUCai" colspan="3">
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="maintenance" checked="">
										<p>없음</p>
									</label>
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="maintenance">
										<p>있음</p>
									</label>
									<input autocomplete="off" class="styled__Cost-sc-1u6ustj-2 esuiyZ Input-sfsekm-0 kTQnUD" type="text" name="maintenance_cost" disabled="" value="">
									<p class="styled__Space-sc-1u6ustj-3 iOAqhO">만원</p>
								</td>
							</tr>
							<tr>
								<td class="styled__Td-sc-1u6ustj-0 cCUCai" colspan="3">
									<div	class="styled__TitleBox-sc-1u6ustj-5 cdRbFB">
										<p>관리비항목</p>
										<p>(다중선택가능)</p>
									</div> 
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="maintenance_items">
										<p>인터넷</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="maintenance_items">
										<p>유선TV</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="maintenance_items">
										<p>청소비</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="maintenance_items">
										<p>수도세</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="maintenance_items">
										<p>도시가스</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="maintenance_items">
										<p>전기세</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="maintenance_items">
										<p>기타</p>
									</label>
								</td>
							</tr>
							<tr>
								<th>주차여부</th>
								<td class="styled__Td-sc-1u6ustj-0 cCUCai">
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="parking" checked="">
										<p>불가능</p>
									</label>
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="parking">
										<p>가능</p>
									</label>
									<input autocomplete="off" class="styled__Cost-sc-1u6ustj-2 esuiyZ Input-sfsekm-0 kTQnUD" type="text" name="parking_cost" disabled="" value="">
									<p class="styled__Space-sc-1u6ustj-3 iOAqhO">만원</p>
								</td>
								<th>반려동물</th>
								<td class="styled__Td-sc-1u6ustj-0 cCUCai">
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="animal" checked="">
										<p>불가능</p>
									</label>
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
									<input type="radio" name="animal">
										<p>가능</p>
									</label>
								</td>
							</tr>
							<tr>
								<th>엘리베이터</th>
								<td class="styled__Td-sc-1u6ustj-0 cCUCai">
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="elevator" checked="">
										<p>없음</p>
									</label>
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="elevator">
										<p>있음</p>
									</label>
								</td>
								<th>베란다/발코니</th>
								<td class="styled__Td-sc-1u6ustj-0 cCUCai">
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="balcony" checked="">
										<p>없음</p>
									</label>
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="balcony">
										<p>있음</p>
									</label>
								</td>
							</tr>
							<tr>
								<th>빌트인
									<div class="styled__ShowUp-sc-1u6ustj-7 dROiWG">
										<svg width="18" height="18" viewBox="0 0 18 18">
										<g fill="none" fill-rule="evenodd">
										<circle cx="9" cy="9" r="9" fill="#CCC"></circle>
										<g fill="#FFF" transform="translate(6 3.5)">
										<path fill-rule="nonzero"	d="M3.11 6.728c.11-.47.352-.738 1.049-1.256l.054-.04c1.079-.804 1.502-1.359 1.502-2.468 0-1.505-1.159-2.726-2.678-2.726C1.701.238.57 1.04.224 2.132a.574.574 0 1 0 1.096.347c.192-.608.875-1.092 1.717-1.092.87 0 1.53.694 1.53 1.577 0 .644-.226.94-1.04 1.546l-.054.04c-.901.671-1.292 1.104-1.481 1.917a.574.574 0 0 0 1.119.26z"></path>
										<circle cx="2.75" cy="9.75" r="1"></circle></g></g></svg>
										<div class="styled__FlyBox-sc-1u6ustj-8 imVndG">
											<h1>빌트인이란?</h1>
											<p>냉장고나 싱크대 등을 돌출시키지 않은 일체형 인테리어</p>
										</div>
									</div>
								</th>
								<td class="styled__Td-sc-1u6ustj-0 cCUCai" colspan="1">
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="built_in" checked="">
										<p>없음</p>
									</label>
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="built_in">
										<p>있음</p>
									</label>
								</td>
								<th>구조</th>
								<td class="styled__Td-sc-1u6ustj-0 cCUCai">
									<label class="styled__Checkbox-sc-1u6ustj-4 fyqlMy styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="duplex">
										<p>복층</p>
									</label>
									<label class="styled__Checkbox-sc-1u6ustj-4 fyqlMy styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="division">
										<p>1.5룸/주방분리형</p>
									</label>
								</td>
							</tr>
							<tr>
								<th>옵션항목</th>
								<td class="styled__Td-sc-1u6ustj-0 cCUCai" colspan="3">
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>에어컨</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>세탁기</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>침대</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>책상</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>옷장</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>TV</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>신발장</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>냉장고</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>가스레인지</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>인덕션</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>전자레인지</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>전자도어락</p>
									</label>
									<label class="styled__Option-sc-1u6ustj-6 hrokF styled__CheckboxBtn-j1kyvo-1 cdcjQK">
										<input type="checkbox" name="room_options">
											<p>비데</p>
									</label>
								</td>
							</tr>
							<tr>
								<th>전세자금대출</th>
								<td class="styled__Td-sc-1u6ustj-0 cCUCai" colspan="3">
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="loan" checked="">
										<p>불가능</p>
									</label>
									<label class="styled__Radio-sc-1u6ustj-1 gBFyOc styled__RadioBtn-j1kyvo-0 fSFsCh">
										<input type="radio" name="loan" checked="">
										<p>가능</p>
									</label>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="styled__Box-sc-1etgh1k-1 etFHhl" name="detailInfo">
					<h1>상세 설명</h1>
					<table>
						<colgroup>
							<col width="150px">
							<col>
						</colgroup>
						<tbody>
							<tr>
								<th>제목</th>
								<td class="styled__Td-sc-1tnvlzf-0 iXeisV">
									<input autocomplete="off" class="styled__Title-sc-1tnvlzf-1 cNKZeV Input-sfsekm-0 kTQnUD"	type="text" name="title"	placeholder="예)신논현역 도보 5분거리, 혼자 살기 좋은 방 입니다." value="">
								</td>
							</tr>
							<tr>
								<th>상세 설명</th>
								<td class="styled__Td-sc-1tnvlzf-0 iXeisV">
									<textarea	class="styled__Memo-sc-1tnvlzf-2 iePFTd Textarea-sc-6jro6l-0 hunnDM" name="memo" placeholder="상세설명 작성 주의사항
			
-방 정보와 관련없는 홍보성 정보는 입력하실 수 없습니다. (홈페이지 주소, 블로그, SNS, 메신저ID, 전화번호, 이메일 등)
- 중개수수료를 언급한 내용은 입력할 수 없습니다. (중개수수료 무료, 꽁짜, 반값 등)

*주의사항 위반시 허위매물로 간주되어 매물 삭제 및 이용의 제한이 있을 수 있습니다."></textarea>
								</td>
							</tr>
							<tr>
								<th>비공개 메모</th>
								<td class="styled__Td-sc-1tnvlzf-0 iXeisV">
									<textarea	class="styled__Private-sc-1tnvlzf-3 fAiWMO Textarea-sc-6jro6l-0 hunnDM"	name="private_memo" placeholder="외부에 공개되지 않으며, 등록자에게만 보이는 메모입니다."></textarea>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="styled__Box-sc-1etgh1k-1 etFHhl" name="photo">
				<h1>사진 등록</h1>
				<div class="styled__Wrap-sc-1lw3m30-0 Xyvt">
					<div class="styled__DescWrap-sc-1tford7-0 hhdFgg">
						<p>- 사진은 가로로 찍은 사진을 권장합니다. (가로 사이즈 최소 800px)</p>
						<p>- 사진 용량은 사진 한 장당 10MB 까지 등록이 가능합니다.</p>
						<p>- 사진은 최소 3장 이상 등록해야하며, 최대 15장 까지 권장합니다. 그 이상 등록할 경우 업로드 시간이 다소 지연될 수 있습니다.</p>
					</div>
					<div class="styled__PhotoWrap-sc-1tford7-1 heKOml">
						<div class="styled__PhotoView-sc-1tford7-2 jAfNtH"></div>
						<div class="styled__DefaultView-sc-1tford7-3 gpqhxG">
							<svg width="70" height="70" viewBox="0 0 70 70">
							<g fill="none" fill-rule="evenodd">
								<circle cx="35" cy="35" r="35" fill="#D8D8D8"></circle>
								<g transform="translate(19 23)">
									<rect width="30" height="22" x="1" y="1" stroke="#777" stroke-width="2" rx="3"></rect>
									<circle cx="25" cy="7" r="2" fill="#777"></circle>
									<path fill="#777" d="M3.996 13.038l6.042-6.042 4 4 2.981-2.98 10.988 10.988v1.015H3.984z"></path>
									</g>
							</g>
							</svg>
							<p class="styled__Text-sc-1tford7-4 sBZgE">실 사진 최소 3장 이상 등록 하셔야 하며, 가로 사진을 권장합니다.</p>
							<p class="styled__WarningText-sc-1tford7-5 hUkkO">다싸 로고를 제외한 불필요한 정보(워터마크, 상호, 전화번호 등)가 있는 매물은 비공개 처리 됩니다.</p>
						</div>
						<div class="styled__UploadWrap-sc-1tford7-6 cNXJpD" style="position: relative;">
							<button class="styled__UploadBtn-sc-1tford7-7 kkaIZb"
								id="uploadPhoto" style="position: relative; z-index: 1;">일반 사진 등록</button>
							<div id="html5_1deomgtapghi1tbr10e9va5u7d4_container" class="moxie-shim moxie-shim-html5" style="position: absolute; top: 0px; left: 493px; width: 134px; height: 40px; overflow: hidden; z-index: 0;">
								<input id="html5_1deomgtapghi1tbr10e9va5u7d4" type="file" style="font-size: 999px; opacity: 0; position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;" multiple="" accept=".jpg,.jpeg,.png" tabindex="-1">
							</div>
						</div>
					</div>
					<p class="styled__Text-sc-1lw3m30-3 bhZAGT">
						<svg width="18" height="18" viewBox="0 0 18 18">
							<g fill="none" fill-rule="evenodd">
								<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
								<path fill="#9C9EA3" d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
							</g>
						</svg>
						<span>허위 매물을 등록할 경우 다방에서 임의로 계정 및 매물 전체 삭제 처리됩니다.</span>
						<a href="https://blog.naver.com/dabangapp/220122235428" 	target="_blank" rel="noopener noreferrer">허위매물 제재 정책 확인하기</a>
					</p>
				</div>
			</div>
			<div class="styled__AgreeWrap-sc-1etgh1k-2 gfvOAV">
				<label class="clearfix Checkbox__Label-ifp1yz-0 kAqGVi" size="22">
					<input type="checkbox" class="Checkbox__CheckboxStd-ifp1yz-1 PcMeW" name="isAgree" value="">
					<span class="CheckBox"></span>
					<span class="styled__AgreeText-sc-1etgh1k-3 eUWDCR">매물관리규정을 확인하였으며, 입력한 정보는 실제 매물과 다름이 없습니다.</span>
				</label>
				<button class="styled__CancelBtn-sc-1etgh1k-4 kcMULl">취소</button>
				<button class="styled__AddBtn-sc-1etgh1k-5 iEZQG">매물등록</button>
			</div>
			<div class="list_form"></div>
			
			<%-- juso팝업모달 --%>
			<div class="modal">
				<div class="styled__Overlay-sc-17v8eyt-0 hCCxcd">
					<div class="styled__Wrap-sc-17v8eyt-1 dmQPSa" width="550">
						<header class="styled__Header-sc-17v8eyt-2 GoREo">
							<h1>주소검색</h1>
							<button class="styled__CloseBtn-sc-17v8eyt-3 kXLdvu" id="jusoPopupCloseBtn">
								<svg width="30" height="30" viewBox="0 0 32 32">
									<g fill="none" fill-rule="evenodd" transform="translate(1 1)">
									<circle class="Circle" cx="15" cy="15" r="15"></circle>
									<g class="Close" stroke-linecap="round" stroke-width="2">
									<path d="M19.243 19.243l-8.486-8.486M19.243 10.757l-8.486 8.486"></path>
									</g>
									</g>
								</svg>
							</button>
						</header>
						<div class="styled__Wrap-nglp54-0 lpldun">
							<div class="styled__SelWrap-nglp54-1 kIQVvC">
								<select	class="styled__Sel-nglp54-2 lfasRf Select-sc-1sy32zq-0 hRFrgm" name="selCity">
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
								</select>
								<select	class="styled__Sel-nglp54-2 lfasRf Select-sc-1sy32zq-0 hRFrgm" name="selGu">
									<option value="">구/군 선택</option>
								</select>
								<select class="styled__SelDong-nglp54-3 ixarYj Select-sc-1sy32zq-0 hRFrgm" name="selDong">
									<option value="">동 선택</option>
								</select>
							</div>
							<form class="styled__Form-nglp54-4 bfHMFZ">
								<input autocomplete="off" class="styled__Keyword-nglp54-5 kHPisP Input-sfsekm-0 kTQnUD" name="keyword" placeholder="단지명 입력 예) 래미안, 리치빌" value="">
								<button class="styled__Btn-nglp54-6 laHiXv">
									<svg width="18" height="17" viewBox="0 0 18 17">
										<g fill="none" fill-rule="evenodd" stroke="#222" transform="translate(1 1)">
										<circle cx="6.5" cy="6.5" r="6.5"></circle>
										<path d="M11 11l5 5"></path>
										</g>
									</svg>
								</button>
							</form>
						</div>
						<div class="styled__Dump-nglp54-7 eAsCFY">
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
	$("select[name='selCity']").change(function(){		
		var jusoCityCode = $(this).find("option:selected").val();	
		$("select[name='selCity']").find("option:selected").text($(this).find("option:selected").text());
		$("select[name='selGu']").find("option").remove();
		$("select[name='selDong']").find("option").remove();
		$("select[name='selGu']").append("<option>구/군 선택</option>");
		$("select[name='selDong']").append("<option>동 선택</option>");
		$.ajax({
			type:"GET",
			url: "/shop/jusoGuList",
			data:{jusoCityCode:jusoCityCode},
			success : function(data){
				if(data.length > 0){
					for(var i=0; i<data.length; i++){
						$("select[name='selGu']").append("<option value='" + data[i].jusoGuCode + "'>"+ data[i].jusoGuName +"</option>")
					}
				}
				
			}
		});
	});
	//구/군 선택 시  동 리스트 뽑아오는 스크립트 
	$("select[name='selGu']").change(function(){
		var jusoGuCode = $(this).find("option:selected").val();
		$("select[name='selGu']").find("option:selected").text($(this).find("option:selected").text());
		$("select[name='selDong']").find("option").remove();
		$("select[name='selDong']").append("<option>동 선택</option>");
		$.ajax({
			type:"GET",
			url: "/shop/jusoDongList",
			data:{jusoGuCode:jusoGuCode},
			success : function(data){
				if(data.length > 0){
					for(var i=0; i<data.length; i++){
						$("select[name='selDong']").append("<option value='" + data[i].jusoDongCode + "'>"+ data[i].jusoDongName +"</option>")
					}
				}
				
			}
		});
	});
	//동 선택 시 아파트리스트 뽑아오는 스크립트
	$("select[name='selDong']").change(function(){
		var jusoDongCode = $(this).find("option:selected").val();
		$("select[name='selDong']").find("option:selected").text($(this).find("option:selected").text());
		$.ajax({
			type:"GET",
			url: "/shop/kaptList",
			data:{jusoDongCode:jusoDongCode},
			success : function(data){
				if(data.length > 0){
					for(var i=0; i<data.length; i++){
						$('#jusoList').html(data[i]);
					}
				}
			}
		});
	});
	//주소 팝업 창 열기
	$('#jusoBtn').click(function(){
		$(".modal").css("display","block");
	});
	//주소 팝업 창 닫기
    $("#jusoPopupCloseBtn").click(function() {
       	$(".modal").css("display","none");
       });
	//매물종류 선택 시 입력 폼 변경
	$("#officetels").click(function(){
		alert("매물 종류를 변경하면 기존 입력한 항목들이 변경되거나 삭제될 수 있습니다.");
		$(".building_type1").css("display","none");
		$(".building_type2").css("display","block");
	});
	$("#kapt").click(function(){
		alert("매물 종류를 변경하면 기존 입력한 항목들이 변경되거나 삭제될 수 있습니다.");
		$(".building_type1").css("display","none");
		$(".building_type2").css("display","none");
	});
	</script>
</div>
</body>
</html>