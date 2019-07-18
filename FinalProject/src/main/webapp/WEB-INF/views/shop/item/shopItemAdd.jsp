<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/shop/common/head.jsp"%>
<!--스타일-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp"%>
		<!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_room.jsp"%>
		<!--맨왼쪽  서브네비 메뉴-->
	</nav>
	<form action="/shop/shopItemAdd" method="post" enctype="multipart/form-data" onsubmit="shopItemAdd()">
	<input type="hidden" name="userIdx" value="0">
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
								<td class="fNOtpc">
									<label class="bVNPCb fSFsCh"> 
									<input type="radio" name="shopItemType1" checked="" class="room" id="oneRoom" value="원룸">
										<p>원룸</p>
									</label>
									<label class="bVNPCb fSFsCh">
										<input type="radio" name="shopItemType1" class="room" value="투룸">
										<p>투룸</p>
									</label>
									<label class="bVNPCb fSFsCh">
									<input type="radio" name="shopItemType1" class="room" value="쓰리룸">
										<p>쓰리룸</p>
									</label>
									<label class="bVNPCb fSFsCh">
										<input type="radio" name="shopItemType1" id="officetels" value="오피스텔">
										<p>오피스텔(도시형)</p>
									</label>
									<label class="bVNPCb fSFsCh">
										<input type="radio" name="shopItemType1" id="kapt" value="아파트">
										<p>아파트</p>
									</label>
								</td>
							</tr>
							<tr class="building_type">
								<th>건물 유형</th>
								<td class="fNOtpc">
									<div class="building_type1">
										<label class="bVNPCb fSFsCh"> 
											<input type="radio" name="shopItemType2" value="단독주택" >
											<p>단독주택</p>
										</label> <label class="bVNPCb fSFsCh"> 
											<input type="radio" name="shopItemType2" value="다가구주택">
											<p>다가구주택</p>
										</label> 
										<label class="bVNPCb fSFsCh">
											<input type="radio" name="shopItemType2" value="빌라/연립/다세대">
											<p>빌라/연립/다세대</p>
										</label> 
										<label class="bVNPCb fSFsCh">
											<input type="radio" name="shopItemType2" value="상가주택">
											<p>상가주택</p>
										</label>
									</div>
									<div class="building_type2">
										<label class="bVNPCb fSFsCh"> 
											<input type="radio" name="shopItemType2"  value="오피스텔">
											<p>오피스텔</p>
										</label> 
										<label class="bVNPCb fSFsCh"> 
											<input type="radio" name="shopItemType2" value="도시형">
											<p>도시형</p>
										</label>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="etFHhl" name="location2" id="location2" style="display: none;">
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
								<td class="cjeVnz">
									<div class="jrPoTn">
										<div class="buhbPP" style="margin-bottom: 10px;">
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
											</select> 
											<select class="iqpoyl hRFrgm" name="selGu">
												<option value="">구/군 선택</option>
											</select> 
											<select class="iqpoyl hRFrgm" name="selDong">
												<option value="">동 선택</option>
											</select>
										</div>
										<form class="fQrInE">
											<input autocomplete="off" class="fbxLHj kTQnUD" name="keyword" placeholder="단지명 입력 예) 래미안, 리치빌" value=""  style="margin-bottom: 10px;">
											<button type="button" class="kTyFCo" id="jusoBtn"  style="margin-bottom: 10px;">주소검색</button>
										</form>
										<div class="cuOBSd" id="jusoList"></div>
										<div class="jjeyfJ">
											<div class="gryuVg cmjtGP">
												<input autocomplete="off" class="mtaUF kTQnUD" name=shopItemAddrDong2 placeholder="예)101동" value="">
											</div>
											<div class="igeEIT cmjtGP">
												<input autocomplete="off" class="hTUuaO kTQnUD" name="shopItemAddrHo2" placeholder="예)201호" value="">
											</div>
										</div>
										<div class="ifWEqm">
											<label class="kAqGVi" size="22"> 
												<input type="checkbox" class="PcMeW" name="is_noinfo_dong" value="">
												<span class="CheckBox"></span> 
												<span class="hsrjeP">등본에 동정보가 없는 경우 선택해 주세요.</span>
											</label>
										</div>
										<p class="dLNiOJ">
											<svg width="18" height="18" viewBox="0 0 18 18">
												<g fill="none" fill-rule="evenodd">
													<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
													<path fill="#9C9EA3" d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
												</g>
											</svg>
											<span>단지명이 검색되지 않는다면 고객센터1899-6840으로 문의주세요.</span>
										</p>
									</div>
									<div class="hkuNdh">
										<div class="kCBxYt">
											<svg width="52" height="52" viewBox="0 0 52 52">
												<g fill="none" fill-rule="evenodd" transform="translate(1 1)">
													<circle cx="25.2" cy="25.2" r="25.2" fill="#FFF" stroke="#EEE" stroke-width="1.2"></circle>
													<path fill="#000" d="M28.286 21.257a3.435 3.435 0 0 0-3.429-3.428 3.435 3.435 0 0 0-3.428 3.428 3.435 3.435 0 0 0 3.428 3.429 3.435 3.435 0 0 0 3.429-3.429zm3.428 0c0 .817-.093 1.66-.442 2.397l-4.875 10.367c-.28.589-.897.95-1.54.95s-1.259-.361-1.527-.95l-4.888-10.367c-.348-.736-.442-1.58-.442-2.397a6.853 6.853 0 0 1 6.857-6.857 6.853 6.853 0 0 1 6.857 6.857z"></path>
												</g>
											</svg>
										</div>
										<p class="ilxtFq">주소 검색을 하시면</p>
										<p class="ilxtFq">해당 위치가 지도에 표시됩니다.</p>
									</div>
								</td>
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
													<path fill="#9C9EA3" d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
												</g>
											</svg>
											<span>도로명, 건물명, 지번에 대해 통합검색이 가능합니다.</span>
										</p>
										<form class="fQrInE">
											<input autocomplete="off" class="fbxLHj kTQnUD" name="keyword" placeholder="예)번동 10-1, 강북구 번동" value="">
											<button type="button" class="kTyFCo" onclick="jusoSearch()">주소검색</button>
										</form>
										<div class="fUXvpI" id="addr"></div>
										<div class="kXKUhT">
											<div class="jlsyRm gnEBbX">
												<input autocomplete="off" class="bVCGUR kTQnUD" name="shopItemAddrDong1"	placeholder="예)101동" value="">
											</div>
											<div class="xUWNs gnEBbX">
												<input autocomplete="off" class="gVtYYG kTQnUD" name="shopItemAddrHo1" placeholder="예)201호" value="">					
											</div>
										</div>
										<div class="gZWbGn">
											<label class="kAqGVi" size="22"> 
												<input type="checkbox" class="PcMeW" name="is_noinfo_dong" value="">
												<span class="CheckBox"></span>
												<span class="kmXRUf">등본에 동정보가 없는 경우 선택해 주세요.</span>
											</label>
										</div>
										<p class="dvECgk">
											<svg width="18" height="18" viewBox="0 0 18 18">
												<g fill="none" fill-rule="evenodd">
													<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
													<path fill="#9C9EA3" d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
												</g>
											</svg>
											<a>지번이 출력되지 않는 경우 지번을 클릭하여주세요</a>
										</p>
									</div>
									<div class="kADOdT" id="map1">
										<div class="dioXoB">
											<svg width="52" height="52" viewBox="0 0 52 52">
												<g fill="none" fill-rule="evenodd" transform="translate(1 1)">
													<circle cx="25.2" cy="25.2" r="25.2" fill="#FFF" stroke="#EEE" stroke-width="1.2"></circle>
													<path fill="#000" d="M28.286 21.257a3.435 3.435 0 0 0-3.429-3.428 3.435 3.435 0 0 0-3.428 3.428 3.435 3.435 0 0 0 3.428 3.429 3.435 3.435 0 0 0 3.429-3.429zm3.428 0c0 .817-.093 1.66-.442 2.397l-4.875 10.367c-.28.589-.897.95-1.54.95s-1.259-.361-1.527-.95l-4.888-10.367c-.348-.736-.442-1.58-.442-2.397a6.853 6.853 0 0 1 6.857-6.857 6.853 6.853 0 0 1 6.857 6.857z"></path>
												</g>
											</svg>
										</div>
										<p class="cOSEj">주소 검색을 하시면</p>
										<p class="cOSEj">해당 위치가 지도에 표시됩니다.</p>
									</div>
									<div class="kADOdT" id="map"></div>
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
									<div id="dealTypeTd" style="margin-bottom:10px;"></div>
									<button class="gvJkZp" id="monthly">월세</button>
									<button class="gvJkZp" id="charter">전세</button>
									<button class="gvJkZp" id="trading">매매</button>
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
									<p class="hNdXGi">공급 면적</p> 
									<input type="number" autocomplete="off" class="gsCYXz kTQnUD" name="shopItemSize1"value="" id="size11">
									<p class="cmXpqK">평</p>
									<input type="number" autocomplete="off" class="gsCYXz kTQnUD" name="shopItemSize2" value="" id="size22" step="0.01">
									<p class="cmXpqK">㎡</p>
								</td>
								<th rowspan="2">건물 층수</th>
								<td class="ggZjqG">
									<p class="hNdXGi">건물 층수</p> 
									<select class="freEbZ hRFrgm" name="shopItemFloorAll1">
										<option value="">건물 층수 선택</option>
										<c:forEach var="i" begin="1" end="49" step="1">
											<option value=${i }>${i }층</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td class="ggZjqG">
									<p class="hNdXGi">전용 면적</p> 
									<input type="number"  autocomplete="off" class="gsCYXz kTQnUD" name="shopItemSizeAll1" value="" id="size33">
									<p class="cmXpqK">평</p>
									<input type="number" autocomplete="off" class="gsCYXz kTQnUD" name="shopItemSizeAll2" value="" id="size44" step="0.01">
									<p class="cmXpqK">㎡</p>
								</td>
								<td class="ggZjqG">
									<p class="hNdXGi">해당 층수</p> 
									<select class="freEbZ hRFrgm" name="shopItemFloor1">
										<option value="">해당 층수 선택</option>
										<option value="-1">반지층</option>
										<option value="0">옥탑</option>
										<c:forEach var="i" begin="1" end="49" step="1">
											<option value=${i }>${i }층</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th>난방 종류</th>
								<td class="ggZjqG">
									<select class="iDUqOA hRFrgm" name="shopItemHeating1">
										<option value="">난방 종류 선택</option>
										<option value="중앙 난방">중앙 난방</option>
										<option value="개별 난방">개별 난방</option>
										<option value="지역 난방">지역 난방</option>
									</select>
								</td>
							</tr>
							<tr>
								<th>입주 가능일</th>
								<td class="fNOtpc">
									<div>
										<label class="bVNPCb fSFsCh"> 
											<input type="radio" name="shopItemMovingDate1" value="즉시 입주">
											<p>즉시 입주</p>
										</label>
										<label class="bVNPCb fSFsCh"> 
											<input type="radio" name="shopItemMovingDate1" value="날짜 협의">
											<p>날짜 협의</p>
										</label>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<%-- 아파트 오피스텔 기본정보 --%>
				<div class="etFHhl" name="baseInfo" id="baseInfo2" style="display: none;">
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
									<p class="hNdXGi">공급 면적</p> 
									<input type="number" autocomplete="off" class="gsCYXz kTQnUD" name="shopItemSize3" value="" id="size1">
									<p class="cmXpqK">평</p>
									<input type="number" autocomplete="off" class="gsCYXz kTQnUD" name="shopItemSize4" value="" id="size2" step="0.01">
									<p class="cmXpqK">㎡</p>
								</td>
								<th rowspan="2">건물 층수</th>
								<td class="ggZjqG">
									<p class="hNdXGi">건물 층수</p> 
									<select class="freEbZ hRFrgm" name="shopItemFloorAll2">
										<option value="">건물 층수 선택</option>
										<c:forEach var="i" begin="1" end="49" step="1">
											<option value=${i }>${i }층</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td class="ggZjqG">
									<p class="hNdXGi">전용 면적</p> 
									<input type="number"  autocomplete="off" class="gsCYXz kTQnUD" name="shopItemSizeAll3"value="" id="size3">
									<p class="cmXpqK">평</p>
									<input type="number" autocomplete="off" class="gsCYXz kTQnUD" name="shopItemSizeAll4" value="" id="size4" step="0.01">
									<p class="cmXpqK">㎡</p>
								</td>
								<td class="ggZjqG">
									<p class="hNdXGi">해당 층수</p> 
									<select class="freEbZ hRFrgm" name="shopItemFloor2">
										<option value="">해당 층수 선택</option>
										<c:forEach var="i" begin="1" end="49" step="1">
											<option value=${i }>${i }층</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<th>난방 종류</th>
								<td class="ggZjqG">
									<input type="text" value="-" readonly="readonly" name="shopItemHeating2" style="border: none;">
								</td>
								<th>시공사</th>
								<td class="ggZjqG">
									<input type="text" value="-" readonly="readonly" name="shopItemBulidCompany" style="border: none;">
								</td>
							</tr>
							<tr>
								<th>복도유형</th>
								<td class="ggZjqG">
									<input type="text" value="-" readonly="readonly" name="shopItemBulidHallway" style="border: none;">
								</td>
								<th>준공년도</th>
								<td class="ggZjqG">
									<input type="text" value="-" readonly="readonly" name="shopItemBulidDate" style="border: none;">
								</td>
							</tr>
							<tr>
								<th>입주 가능일</th>
								<td class="fNOtpc">
									<div>
										<label class="bVNPCb fSFsCh"> 
											<input type="radio" name="shopItemMovingDate2" value="즉시 입주">
											<p>즉시 입주</p>
										</label>
										<label class="bVNPCb fSFsCh"> 
											<input type="radio" name="shopItemMovingDate2" value="날짜 협의">
											<p>날짜 협의</p>
										</label>
									</div>
								</td>
								<th>총 세대수</th>
								<td class="ggZjqG">
									<input type="text" value="-" readonly="readonly" name="shopItemHouseNumber" style="border: none;">
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
								<td class="cCUCai" colspan="3">
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemManage" value="없음" checked>
										<p>없음</p>
									</label>
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemManage" value="있음">
										<p>있음</p>
									</label>
										<input type="number" autocomplete="off" class="esuiyZ kTQnUD" type="text" name="shopItemManagePrice" disabled="" value="" id="managePrice">
									<p class="iOAqhO">만원</p>
								</td>
							</tr>
							<tr>
								<td class="cCUCai" colspan="3">
									<div class="cdRbFB">
										<p>관리비항목</p>
										<p>(다중선택가능)</p>
									</div> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemManagePriceOption" value="인터넷">
										<p>인터넷</p>
									</label>
									<label class="hrokF cdcjQK">
										<input type="checkbox" name="shopItemManagePriceOption" value="유선TV">
										<p>유선TV</p>
									</label>
									<label class="hrokF cdcjQK">
										<input type="checkbox" name="shopItemManagePriceOption" value="청소비">
										<p>청소비</p>
									</label>
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemManagePriceOption" value="수도세">
										<p>수도세</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemManagePriceOption" value="도시가스">
										<p>도시가스</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemManagePriceOption" value="전기세">
										<p>전기세</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemManagePriceOption" value="기타">
										<p>기타</p>
									</label>
								</td>
							</tr>
							<tr>
								<th>주차여부</th>
								<td class="cCUCai">
									<label class="gBFyOc fSFsCh"> 
										<input type="radio" name="shopItemParking" checked="" value="불가능">
										<p>불가능</p>
									</label>
									<label class="gBFyOc fSFsCh"> 
										<input type="radio" name="shopItemParking" value="가능">
											<p>가능</p>
									</label> 
									<input type="number" autocomplete="off" class="esuiyZ kTQnUD" type="text" name="shopItemParkingPrice" disabled="" value="" id="parkingPrice">
									<p class="iOAqhO">만원</p>
								</td>
								<th>반려동물</th>
								<td class="cCUCai">
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemAnimal" checked="" value="불가능">
										<p>불가능</p>
									</label> 
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemAnimal" value="가능">
										<p>가능</p>
									</label>
								</td>
							</tr>
							<tr id="elev">
								<th>엘리베이터</th>
								<td class="cCUCai">
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemElevator" checked="" value="없음">
										<p>없음</p>
									</label>
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemElevator" value="있음">
										<p>있음</p>
									</label>
								</td>
								<th>베란다/발코니</th>
								<td class="cCUCai">
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemBalcony" checked="" value="없음">
										<p>없음</p>
									</label>
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemBalcony" value="있음">
										<p>있음</p>
									</label>
								</td>
							</tr>
							<tr id="biltin">
								<th>빌트인
									<div class="dROiWG">
										<svg width="18" height="18" viewBox="0 0 18 18">
											<g fill="none" fill-rule="evenodd">
												<circle cx="9" cy="9" r="9" fill="#CCC"></circle>
												<g fill="#FFF" transform="translate(6 3.5)">
													<path fill-rule="nonzero" d="M3.11 6.728c.11-.47.352-.738 1.049-1.256l.054-.04c1.079-.804 1.502-1.359 1.502-2.468 0-1.505-1.159-2.726-2.678-2.726C1.701.238.57 1.04.224 2.132a.574.574 0 1 0 1.096.347c.192-.608.875-1.092 1.717-1.092.87 0 1.53.694 1.53 1.577 0 .644-.226.94-1.04 1.546l-.054.04c-.901.671-1.292 1.104-1.481 1.917a.574.574 0 0 0 1.119.26z"></path>
													<circle cx="2.75" cy="9.75" r="1"></circle>
												</g>
											</g>
										</svg>
										<div class="imVndG">
											<h1>빌트인이란?</h1>
											<p>냉장고나 싱크대 등을 돌출시키지 않은 일체형 인테리어</p>
										</div>
									</div>
								</th>
								<td class="cCUCai" colspan="1">
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemBuiltIn" checked="" value="없음">
										<p>없음</p>
									</label>
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemBuiltIn" value="있음">
										<p>있음</p>
									</label>
								</td>
								<th id="structure1">구조</th>
								<td class="cCUCai" id="structure2">
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemStructure" value="복층">
										<p>복층</p>
									</label> 
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemStructure" value="1.5룸/주방분리형">
										<p>1.5룸/주방분리형</p>
									</label>
								</td>
							</tr>
							<tr>
								<th>옵션항목</th>
								<td class="cCUCai" colspan="3">
									<label class="hrokF cdcjQK">
										<input type="checkbox" name="shopItemOption" value="에어컨">
										<p>에어컨</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemOption" value="세탁기">
										<p>세탁기</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemOption" value="침대">
										<p>침대</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemOption" value="책상">
										<p>책상</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemOption" value="옷장">
										<p>옷장</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemOption" value="TV">
										<p>TV</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemOption" value="신발장">
										<p>신발장</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemOption" value="냉장고">
										<p>냉장고</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemOption" value="가스레인지">
										<p>가스레인지</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemOption" value="인덕션">
										<p>인덕션</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemOption" value="전자레인지">
										<p>전자레인지</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemOption" value="전자도어락">
										<p>전자도어락</p>
									</label> 
									<label class="hrokF cdcjQK"> 
										<input type="checkbox" name="shopItemOption" value="비데">
										<p>비데</p>
									</label>
								</td>
							</tr>
							<tr>
								<th>전세자금대출</th>
								<td class="cCUCai" colspan="3">
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemLoan" checked="" value="불가능">
										<p>불가능</p>
									</label>
									<label class="gBFyOc fSFsCh">
										<input type="radio" name="shopItemLoan" value="가능">
										<p>가능</p>
									</label>
								</td>
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
								<th>담당자</th>
								<td class="iXeisV">
									<select class="iDUqOA hRFrgm" name="shopItemManager">
										<option value="">담당자 선택</option>
									</select> 
								</td>
							</tr>
							<tr>
								<th>제목</th>
								<td class="iXeisV">
									<input autocomplete="off" class="cNKZeV kTQnUD" type="text" name="shopItemTitle" placeholder="예)신논현역 도보 5분거리, 혼자 살기 좋은 방 입니다." value="" >
								</td>
							</tr>
							<tr>
								<th>상세 설명</th>
								<td class="iXeisV">
									<textarea class="iePFTd hunnDM" name="shopItemContent"  placeholder="상세설명 작성 주의사항 
			
-방 정보와 관련없는 홍보성 정보는 입력하실 수 없습니다. (홈페이지 주소, 블로그, SNS, 메신저ID, 전화번호, 이메일 등)
- 중개수수료를 언급한 내용은 입력할 수 없습니다. (중개수수료 무료, 꽁짜, 반값 등)

*주의사항 위반시 허위매물로 간주되어 매물 삭제 및 이용의 제한이 있을 수 있습니다."></textarea>
								</td>
							</tr>
							<tr>
								<th>비공개 메모</th>
								<td class="iXeisV">
									<textarea class="fAiWMO hunnDM"	name="shopItemSecretMemo"  placeholder="외부에 공개되지 않으며, 등록자에게만 보이는 메모입니다."></textarea>
								</td>
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
						<p>- 사진은 최소 1장 이상 등록해야하며, 최대 10장 까지 등록됩니다.</p>
						<p>- 최초로 등록 된 이미지는 대표이미지로 사용됩니다.</p>
					</div>
					<div class="heKOml">
						<div class="imgList">
							<div class="imgBox">
								<input type="file" class="hide" accept="image/*" name="fileImg" id="fileImg" onchange="item.imgSel(this, event)">
								<a href="#none" class="upload_btn" onclick="item.imgUpload(this)"></a>
							</div>
						</div>
					</div>
					<p class="bhZAGT">
						<svg width="18" height="18" viewBox="0 0 18 18">
							<g fill="none" fill-rule="evenodd">
								<circle cx="9" cy="9" r="9" fill="#E6E7EA"></circle>
								<path fill="#9C9EA3" d="M8.997 13.5a.75.75 0 1 1 0-1.5.75.75 0 0 1 0 1.5zm.01-2.499c-.634 0-.75-5.449-.75-6.001 0-.552.336-1 .75-1s.75.448.75 1-.116 6.001-.75 6.001z"></path>
							</g>
						</svg>
						<span>허위 매물을 등록할 경우 다방에서 임의로 계정 및 매물 전체 삭제 처리됩니다.</span> 
						<a href="https://blog.naver.com/dabangapp/220122235428"	target="_blank" rel="noopener noreferrer">허위매물 제재 정책 확인하기</a>
					</p>
				</div>
			</div>
			<div class="gfvOAV">
				<label class="kAqGVi" size="22"> 
					<input type="checkbox" class="PcMeW" name="isAgree" value="">
					<span class="CheckBox"></span>
					<span class="eUWDCR">매물관리규정을 확인하였으며, 입력한 정보는 실제 매물과 다름이 없습니다.</span>
				</label>
				<button class="kcMULl" type="reset">취소</button>
				<button class="iEZQG" type="submit" id="shopItemAdd">매물등록</button>
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
											<path d="M19.243 19.243l-8.486-8.486M19.243 10.757l-8.486 8.486"></path>
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
								</select> 
								<select class="lfasRf hRFrgm" name="selGu">
									<option value="">구/군 선택</option>
								</select> 
								<select class="ixarYj hRFrgm" name="selDong">
									<option value="">동 선택</option>
								</select>
							</div>
							<form class="bfHMFZ">
								<input autocomplete="off" class="kHPisP kTQnUD" name="keyword" placeholder="단지명 입력 예) 래미안, 리치빌" value="">
								<button class="laHiXv">
									<svg width="18" height="17" viewBox="0 0 18 17">
										<g fill="none" fill-rule="evenodd" stroke="#222" transform="translate(1 1)">
											<circle cx="6.5" cy="6.5" r="6.5"></circle>
											<path d="M11 11l5 5"></path>
										</g>
									</svg>
								</button>
							</form>
						</div>
						<div class="eAsCFY" id="jusoInfo1">
							<h1>알아두세요!</h1>
							<ul>
								<li>- 단지명을 검색 후 검색된 주소를 선택해주세요.</li>
								<li>- 위치 선택 후 단지명을 검색하시면 더욱 정확한 결과가 검색됩니다.</li>
							</ul>
						</div>
						<div class="ivRIHy" id="jusoInfo2" style="display: none">
							<svg width="25" height="25" viewBox="0 0 25 25">
								<g fill="none" fill-rule="evenodd">
									<circle cx="12.6" cy="12.6" r="12.6" fill="#E6E7EA"></circle>
									<path fill="#9C9EA3" d="M12.596 18.9a1.05 1.05 0 1 1 0-2.1 1.05 1.05 0 0 1 0 2.1zm.014-3.498c-.888 0-1.05-7.629-1.05-8.402 0-.773.47-1.4 1.05-1.4.58 0 1.05.627 1.05 1.4 0 .773-.162 8.402-1.05 8.402z"></path>
								</g>
							</svg>
							<h1>검색결과가 없습니다.</h1>
							<p>검색되지 않는 단지명은</p>
							<p><span>고객센터 1899-6840</span>으로 문의주세요.</p>
						</div>
						<ul class="hoUOvr" id="kaptList">
							<c:forEach var="item" items="${kaptList}" begin="0" step="1">
							<li class="jXTJDh">
								<div class="gvCWFZ">
									<p class="jyixr">단지명</p>
									<span class="kQJKWm">${kaptList.kaptName }</span>
								</div>
								<div class="gvCWFZ">
									<p class="jyixr">도로명</p>
									<span class="kQJKWm">${kaptList.doroJuso }</span>
								</div>
								<div class="gvCWFZ">
									<p class="jyixr">지번</p>
									<span class="kQJKWm">${kaptList.kaptAddr }</span>
								</div>
							</li>
							</c:forEach>
						</ul>	
					</div>
				</div>
			</div>
	</div>
	<input type="hidden" name="shopItemLatitude" value="">
	<input type="hidden" name="shopItemLongitude" value="">
	</form>
	</section>
	<%@include file="/WEB-INF/views/shop/common/footer.jsp"%>
	<script src="/shop/js/item/item.js"></script>
	<script src="/shop/js/shop_setting.js"></script>
	<script>
		var count=0;
		var newarr = new Array();
		$("#jusoInfo").show();
		$("input[name=shopItemManagePriceOption]").attr("disabled",true);
		//시 선택 시  구/군 리스트 뽑아오는 스크립트 
		$("select[name='selCity']").change(function() {
			var jusoCityCode = $(this).find("option:selected").val();
			$("select[name='selCity']").find("option:selected").text($(this).find("option:selected").text());
			$("select[name='selGu']").find("option").remove();
			$("select[name='selDong']").find("option").remove();
			$("select[name='selGu']").append(	"<option>구/군 선택</option>");
			$("select[name='selDong']").append("<option>동 선택</option>");
			$.ajax({
				type : "GET",
				url : "/shop/jusoGuList",
				data : {jusoCityCode : jusoCityCode},
				success : function(data) {
					if (data.length > 0) {
						for (var i = 0; i < data.length; i++) {
							$("select[name='selGu']").append("<option value='" + data[i].jusoGuCode + "'>"+ data[i].jusoGuName+ "</option>")
						}
					}
				}
			});
		});
		//구/군 선택 시  동 리스트 뽑아오는 스크립트 
		$("select[name='selGu']").change(	function() {
			var jusoGuCode = $(this).find("option:selected").val();
			$("select[name='selGu']").find("option:selected").text($(this).find("option:selected").text());
			$("select[name='selDong']").find("option").remove();
			$("select[name='selDong']").append("<option>동 선택</option>");
			$.ajax({
				type : "GET",
				url : "/shop/jusoDongList",
				data : {jusoGuCode : jusoGuCode},
				success : function(data) {
					if (data.length > 0) {
						for (var i = 0; i < data.length; i++) {
							$("select[name='selDong']").append("<option value='" + data[i].jusoDongCode + "'>"+data[i].jusoDongName+ "</option>")
						}
					}
				}
			});
		});
		//동 선택 시 아파트리스트 뽑아오는 스크립트
		$("select[name='selDong']").change(function() {
			var jusoDongCode = $(this).find("option:selected").val();
			$("select[name='selDong']").find("option:selected").text($(this).find("option:selected").text());
			$.ajax({
				type : "GET",
				url : "/shop/kaptList",
				dataType: "json",
				async: false,
				data : {jusoDongCode : jusoDongCode},
				success : function(kaptList) {
					test = kaptList;
					$('#kaptList').find("li").remove();
					if (kaptList.length > 0) {
						$('#jusoInfo1').hide();
						$('#jusoInfo2').hide();
						for (var i = 0; i < kaptList.length; i++) {
							newarr = kaptList[i].split(',');
							$('#kaptList').append("<li class='jXTJDh' name='kaptListBtn' value="+i+"><div class='gvCWFZ'><p class='jyixr'>단지명</p><span class='kQJKWm'>"+newarr[0]+"</span></div>"
									+"<div class='gvCWFZ'><p class='jyixr'>도로명</p><span class='kQJKWm'>"+newarr[1]+"</span></div>"
									+"<div class='gvCWFZ'><p class='jyixr'>지번</p><span class='kQJKWm'>"+newarr[2]+"</span></div></li>");
						}
					}else{
						$('#kaptList').find("li").remove();
						$('#jusoInfo1').hide();
						$('#jusoInfo2').show();
					}
				}
			});
		});
		//아파트 목록 클릭 시
		$(document).on('click', 'li[name="kaptListBtn"]' , function(){
			console.log("아파트목록 클릭"+newarr);
			var newarr1 = test[$(this).val()].split(",");
			$(".modal").hide();
			$("#jusoList").html("");
            $("#jusoList").append( "<p><span>도로명 : "+newarr1[1]+"</span></p><p><span>지번 : "+newarr1[2]+"</span></p>"
            		+"<input type='hidden' name='shopItemAddr1' value='"+newarr1[1]+"'>"
					+"<input type='hidden' name='shopItemAddr2' value='"+newarr1[2]+"'>"
            );
            $("input[name='shopItemBulidDate']").val(newarr1[3]);
            $("input[name='shopItemBulidCompany']").val(newarr1[8]);
            $("input[name='shopItemHeating2']").val(newarr1[9]);
            $("input[name='shopItemBulidHallwayType']").val(newarr1[10]);
            $("input[name='shopItemHouseNumber']").val(newarr1[11]);
		});
		//주소 팝업 창 열기
		$('#jusoBtn').click(function() {
			$(".modal").css("display", "block");
			return false;
		});
		//주소 팝업 창 닫기
		$("#jusoPopupCloseBtn").click(function() {
			$(".modal").css("display", "none");
			return false;
		});
		//매물종류 선택 시 입력 폼 변경
		$(".room").click(function() {
			var sel =  confirm("매물 종류를 변경하면 기존 입력한 항목들이 변경되거나 삭제될 수 있습니다.");
			if(sel){
				$(".building_type1").css("display", "block");
				$(".building_type2").css("display", "none");
				$(".building_type").show();
				$("#location1").find('input').val("");
				$("#location1").find('select').val("");
				$("#baseInfo").show();
				$("#baseInfo2").hide();
				$("#baseInfo").find('input').val("");
				$("#baseInfo").find('select').val("");
				$("#baseInfo2").find('input').val("");
				$("#baseInfo2").find('select').val("");
				$("#location1").show();
				$("#location2").hide();
				$("#structure1").hide();
				$("#structure2").hide();
				$("#bulidDate1").hide();
				$("#bulidDate2").hide();
				$("#elev").show();
				$("#biltin").show();
			}
		});
		$("#oneRoom").click(function(){
			$(".building_type1").css("display", "block");
			$(".building_type2").css("display", "none");
			$(".building_type").show();
			$("#location1").find('input').val("");
			$("#location1").find('select').val("");
			$("#baseInfo").show();
			$("#baseInfo2").hide();
			$("#baseInfo").find('input').val("");
			$("#baseInfo").find('select').val("");
			$("#baseInfo2").find('input').val("");
			$("#baseInfo2").find('select').val("");
			$("#location1").show();
			$("#location2").hide();
			$("#structure1").show();
			$("#structure2").show();
			
		});
		$("#officetels").click(function() {
			var sel =  confirm("매물 종류를 변경하면 기존 입력한 항목들이 변경되거나 삭제될 수 있습니다.");
			if(sel){
			$(".building_type1").css("display", "none");
			$(".building_type2").css("display", "block");
			$("#location2").find('input').val("");
			$("#location2").find('select').val("");
			$("#location2").show();
			$("#location1").hide();
			$("#baseInfo").hide();
			$("#baseInfo2").show();
			$(".building_type").show();
			$("#structure1").show();
			$("#structure2").show();
			$("#bulidDate1").show();
			$("#bulidDate2").show();
			$("#elev").show();
			$("#biltin").show();
			}
		});
		$("#kapt").click(function() {
			var sel =  confirm("매물 종류를 변경하면 기존 입력한 항목들이 변경되거나 삭제될 수 있습니다.");
			if(sel){
			$(".building_type1").css("display", "none");
			$(".building_type2").css("display", "none");
			$("#location2").find('input').val("");
			$("#location2").find('select').val("");
			$("#location2").show();
			$("#location1").hide();
			$(".building_type").hide();
			$("#structure1").hide();
			$("#structure2").hide();
			$("#bulidDate1").show();
			$("#bulidDate2").show();
			$("#elev").hide();
			$("#biltin").hide();
			$("#baseInfo").hide();
			$("#baseInfo2").show();
			$("#baseInfo2").find('select').val("");
			}
		});
		//매매 클릭 시 매매 입력 폼 생성
		$("#trading").click(function(){
			$("#monthly").attr("disabled",true);
			$("#charter").attr("disabled",true);
			$("#trading").attr("disabled",true);
			$("#dealTypeTd").find("div").remove();
			$("#dealTypeTd").append('<div class="bMtYCv"><p class="tmpFp">매매</p>'
					+'<input type="hidden" name="shopItemDealType" value="매매">'
					+'<input autocomplete="off" class="fqDzuM kTQnUD" name="shopItemDealPrice" type="1" placeholder="매매" value="">'
					+'<p class="fIWZWk">만원<span>(예 매매 5억2000만원)</span></p>'
					+'<button class="iFqJVZ tradingCloseBtn"></button></div>');
		});
		//매매 삭제 버튼 클릭 시 전세 입력 폼 삭제
		$(document).on('click', '.tradingCloseBtn' , function(){
			var sel = confirm("정말 삭제하시겠습니까?");
			if(sel){
				$(this).parent("div").remove();
				$("#monthly").attr("disabled",false);
				$("#charter").attr("disabled",false);
				$("#trading").attr("disabled",false);
			}
		});
		//전세 클릭 시 전세 입력 폼 생성
		$("#charter").click(function(){
			$("#charter").attr("disabled",true);
			$("#monthly").attr("disabled",true);
			$("#trading").attr("disabled",true);
			$("#dealTypeTd").find("div").remove();
			$("#dealTypeTd").append('<div class="bMtYCv"><p class="tmpFp">전세</p>'
				+'<input type="hidden" name="shopItemDealType" value="전세">'
				+'<input autocomplete="off" class="fqDzuM kTQnUD" name="shopItemDealPrice" type="1" placeholder="전세" value="">'
				+'<p class="fIWZWk">만원<span>(예 전세 2000만원)</span></p>'
				+'<button class="iFqJVZ charterCloseBtn"></button></div>');
		});
		//전세 삭제 버튼 클릭 시 전세 입력 폼 삭제
		$(document).on('click', '.charterCloseBtn' , function(){
			var sel = confirm("정말 삭제하시겠습니까?");
			if(sel){
				$(this).parent("div").remove();
				$("#monthly").attr("disabled",false);
				$("#charter").attr("disabled",false);
				$("#trading").attr("disabled",false);
			}
		});
		//월세 클릭 시 월세 입력 폼 생성
		$("#monthly").click(function(){
			$("#charter").attr("disabled",true);
			$("#monthly").attr("disabled",true);
			$("#trading").attr("disabled",true);
			$("#dealTypeTd").append('<div class="bMtYCv"><p class="tmpFp">월세</p>'
				+'<input type="hidden" name="shopItemDealType" value="월세">'
				+'<input autocomplete="off" class="fqDzuM kTQnUD" name="shopItemDeposit" type="0" placeholder="보증금" value="">'
				+'<p class="ktwJnl">/</p><input autocomplete="off" class="ghUXBC kTQnUD"	name="shopItemDealPrice" type="text" placeholder="월세" value="">'
				+'<p class="fIWZWk">만원<span>(예 월세 1000만원/50만원)</span></p>'
				+'<button class="iFqJVZ monthlyCloseBtn"></button></div>');
			return false;
		});

		//월세 삭제 버튼 클릭 시 해당 월세 입력 폼 삭제
		$(document).on('click', '.monthlyCloseBtn' , function(){
			var sel = confirm("정말 삭제하시겠습니까?");
			if(sel){
				$(this).parent("div").remove();
				$("#monthly").attr("disabled",false);
				$("#charter").attr("disabled",false);
				$("#trading").attr("disabled",false);
			}
		});
		//평 입력 시 자동 m2면적 계산
		$("#size1").keyup(function(){
			var size1 = (Number)($("#size1").val()*3.3058);
			$("#size2").val(size1.toFixed(2));
		});
		$("#size3").keyup(function(){
			var size2 = (Number)($("#size3").val()*3.3058);
			$("#size4").val(size2.toFixed(2));
		});
		$("#size11").keyup(function(){
			var size1 = (Number)($("#size11").val()*3.3058);
			$("#size22").val(size1.toFixed(2));
		});
		$("#size33").keyup(function(){
			var size2 = (Number)($("#size33").val()*3.3058);
			$("#size44").val(size2.toFixed(2));
		});
		//m2 입력 시 자동 평면적 계산
		$("#size2").keyup(function(){
			var size3 = (Number)($("#size2").val()/3.3058);
			$("#size1").val(size3.toFixed(0));
		});
		$("#size4").keyup(function(){
			var size4 = (Number)($("#size4").val()/3.3058);
			$("#size3").val(size4.toFixed(0));
		});
		$("#size22").keyup(function(){
			var size3 = (Number)($("#size22").val()/3.3058);
			$("#size11").val(size3.toFixed(0));
		});
		$("#size44").keyup(function(){
			var size4 = (Number)($("#size44").val()/3.3058);
			$("#size33").val(size4.toFixed(0));
		});
		//관리비 있음 선택 시
		$("input:radio[name=shopItemManage]").click(function(){
			if($("input[name=shopItemManage]:checked").val()=="있음"){
				$("#managePrice").prop("disabled",false);
				$("input[name=shopItemManagePriceOption]").prop("disabled",false);
			}else{
				$("#managePrice").val("");
				$("#managePrice").prop("disabled",true);
				$("input[name=shopItemManagePriceOption]").prop("checked",false);
				$("input[name=shopItemManagePriceOption]").prop("disabled",true);
			}
		});
		//주차비 있음 선택 시
		$("input:radio[name=shopItemParking]").click(function(){
			if($("input[name=shopItemParking]:checked").val()=="가능"){
				$("#parkingPrice").prop("disabled",false);
			}else{
				$("#parkingPrice").val("");
				$("#parkingPrice").prop("disabled",true);
			}
		});
		//매물 등록 버튼 클릭 시	
		$("#shopItemAdd").click(function(){
			if($("input[name=shopItemType2]").is(":checked")==false && $("input[name=shopItemType2]").is(':visible') ){
				 alert("건물 유형을 선택해주세요");
				 $("input[name=shopItemType2]").focus();
				 return false;
			}
			if($("input[name=shopItemAddr1]").val()=="" && $("input[name=shopItemAddr1]").val()){
				 alert("주소를 입력해주세요");
				 $("input[name=shopItemAddr1]").focus();
				 return false;
			}
			if($("input[name=shopItemDealPrice]").val()==""){
				 alert("거래 종류를 선택 후 금액을 입력해주세요");
				 $("input[name=shopItemType2]").focus();
				 return false;
			}
			if($("input[name=shopItemManage]:checked").val()=="있음"){
				if($("input[name=shopItemManagePrice").val()==""){
					alert("관리비를 입력해주세요");
					$("input[name=shopItemManagePrice").focus();
					return false;
				}
			}
			if($("input[name=shopItemTitle]").val()==""){
				alert("제목을 입력하세요");
				$("input[name=shopItemTitle]").focus();
				return false;
			}
			if($("input[name=shopItemContent]").val()==""){
				alert("상세 설명을 입력하세요");
				$("input[name=shopItemContent]").focus();
				return false;
			}
			if($("#structure1").is(':visible') && $("input[name=shopItemStructure]").is(":checked")==false){
				alert("구조를 선택하세요");
				$("input[name=shopItemStructure]").focus();
				return false;
			}
			if($("#size1").val()<$("#size3").val()){
				alert("전용면적이 공급면적보다 클 수 없습니다");
				$("#size1").focus();
				return false;
			}
			if($("select[name=shopItemFloor1]").find("option:selected").val()*1>$("select[name=shopItemFloorAll1]").find("option:selected").val()*1){
				alert("해당 층수가 건물 층수보다 클 수 없습니다");
				$("select[name=shopItemFloor1]").focus();
				return false;
			}
			if($("select[name=shopItemFloor2]").find("option:selected").val()*1>$("select[name=shopItemFloorAll2]").find("option:selected").val()*1){
				alert("해당 층수가 건물 층수보다 클 수 없습니다");
				$("select[name=shopItemFloor2]").focus();
				return false;
			}
		});
		$("input[name=img_0]").change(function(){
			$(this).css("display","none");
			$(".heKOml").append('<div class="img_upload"><input type="file" name="img_0" id="img_0" class="hide" onchange="img_change(this)"><a href="#none" class="imgUp" id="imgUp_0" onclick="img_up(this)"></a></div>');
		});
//		$("input[name=img_1]").click(function(){
//			$("#img_upload2").show();
//		});
//		$("input[name=img_2]").click(function(){
//			$("#img_upload3").show();
//		});
//		$("input[name=img_3]").click(function(){
//			$("#img_upload4").show();
//		});		
//		$("input[name=img_0]").click(function(){
//			$(this).css("display","none");
//			$(".heKOml").append('<div class="img_upload"><input type="file" name="img_0" id="img_0" class="hide" onchange="img_change(this)"><a href="#none" class="imgUp" id="imgUp_0" onclick="img_up(this)"></a></div>');
//		});
		
	</script>
	<!-- 다음 지도 api -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=172ed9cf73c3423204ded79275b828ba&libraries=services"></script>
	<script>
	$("#map").css("display",'none');
	 var mapContainer = document.getElementById('map'), // 지도를 표시할 div
     mapOption = {
         center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
         level: 3 // 지도의 확대 레벨
     };
 //지도를 미리 생성
 var map = new daum.maps.Map(mapContainer, mapOption);
 //주소-좌표 변환 객체를 생성
 var geocoder = new daum.maps.services.Geocoder();
 //마커를 미리 생성
 var marker = new daum.maps.Marker({
     position: new daum.maps.LatLng(37.537187, 127.005476),
     map: map
 });
    function jusoSearch() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수
                // 주소 정보를 해당 필드에 넣는다.
                console.log(data.roadAddress);
                console.log(data.jibunAddress);
               $("#addr").html("");
               $("#addr").append( "<p><span>도로명 : "+data.roadAddress+"</span></p><p><span>지번 : "+data.jibunAddress+"</span></p>"
            								+"<input type='hidden' name='shopItemAddr1' value='"+data.roadAddress+"'>"
            								+"<input type='hidden' name='shopItemAddr2' value='"+data.jibunAddress+"'>"            								
               );
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    $("#map1").css("display","none");
                    $("#map").css("display",'block');
                    if (status === daum.maps.services.Status.OK) {
                        var result = results[0]; //첫번째 결과의 값을 활용
                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
    </script>
</div>
</body>
</html>