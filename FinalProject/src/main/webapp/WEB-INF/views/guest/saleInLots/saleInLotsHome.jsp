<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="saleInLots">
			<article class="saleInLotsHeader">
				<a
					href="/saleInLots/saleInLotsInformation?saleInLotsArea=전국&saleInLotsSupplyType=공급유형&saleInLotsBuildType=건물유형&saleInLotsState=분양단계">분양정보</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsProcess">분양가이드</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsBrand">브랜드관</a>
			</article>
		</section>
		<section class="saleInLotsHome">
			<div class="screen">
				<div class="web">
					<div class="searchBox">
						<div class="searchBox_content">
							<h1>찾으시는 분양 정보가 있나요?</h1>
							<div class="searchBox_filter">
								<div class="searchBox_filter_type" tabindex="0">
									<div class="searchBox_btn">
										<span id="area">전국</span>
										<svg width="15" height="8" viewBox="0 0 15 8">
											<path fill="none" fill-rule="evenodd" stroke="#BCBCBC"
												d="M1 1l6.533 6L14 1"></path>
										</svg>
									</div>
									<div class="searchBox_filterBox_1" width="200" height="340"
										style="left: 0px; right: 0px; display: none">
										<ul class="filterBox_area">
											<li><span class="allArea">전국</span></li>
											<li><span class="area">서울특별시</span></li>
											<li><span class="area">부산광역시</span></li>
											<li><span class="area">대구광역시</span></li>
											<li><span class="area">인천광역시</span></li>
											<li><span class="area">광주광역시</span></li>
											<li><span class="area">대전광역시</span></li>
											<li><span class="area">울산광역시</span></li>
											<li><span class="area">세종특별자치시</span></li>
											<li><span class="area">경기도</span></li>
											<li><span class="area">강원도</span></li>
											<li><span class="area">충청북도</span></li>
											<li><span class="area">충청남도</span></li>
											<li><span class="area">전라북도</span></li>
											<li><span class="area">전라남도</span></li>
											<li><span class="area">경상북도</span></li>
											<li><span class="area">경상남도</span></li>
											<li><span class="area">제주특별자치도</span></li>
										</ul>
									</div>
								</div>
								<div class="searchBox_filter_type" tabindex="0">
									<div class="searchBox_btn">
										<span id="buildType">건물유형</span>
										<svg width="15" height="8" viewBox="0 0 15 8">
											<path fill="none" fill-rule="evenodd" stroke="#BCBCBC"
												d="M1 1l6.533 6L14 1"></path>
										</svg>
									</div>
									<div class="searchBox_filterBox_2" width="250" height="280"
										style="left: 0px; display: none;">
										<h1 class="filterBox_title">
											건물유형
											<p class="filterBox_title_msg">중복선택이 가능합니다.</p>
										</h1>
										<ul class="filterBox_ul">
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="building_type"
													value="" checked=""><span class="CheckBox"></span><span
													class="checkBoxText">전체</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="building_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText">아파트</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="building_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText">오피스텔</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="building_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText">도시형생활주택</span></label></li>
										</ul>
									</div>
								</div>
								<div class="searchBox_filter_type" tabindex="0">
									<div class="searchBox_btn">
										<span id="saleState">분양단계</span>
										<svg width="15" height="8" viewBox="0 0 15 8">
											<path fill="none" fill-rule="evenodd" stroke="#BCBCBC"
												d="M1 1l6.533 6L14 1"></path>
										</svg>
									</div>
									<div class="searchBox_filterBox_2" width="250" height="280"
										style="left: 0px; display: none;">
										<h1 class="filterBox_title">
											분양단계
											<p class="filterBox_title_msg">중복선택이 가능합니다.</p>
										</h1>
										<ul class="filterBox_ul">
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="building_type"
													value="" checked=""><span class="CheckBox"></span><span
													class="checkBoxText">전체</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="building_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText">분양예정</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="building_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText">분양중</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="building_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText">입주모집</span></label></li>
										</ul>
									</div>
								</div>
								<div class="searchBox_filter_type" tabindex="0">
									<div class="searchBox_btn">
										<span id="supplyType">공급유형</span>
										<svg width="15" height="8" viewBox="0 0 15 8">
											<path fill="none" fill-rule="evenodd" stroke="#BCBCBC"
												d="M1 1l6.533 6L14 1"></path>
										</svg>
									</div>
									<div class="filterBox_ul_3" width="250" height="346"
										style="left: 0px; display: none;">
										<h1 class="filterBox_title">
											공급유형
											<p class="filterBox_title_msg">중복선택이 가능합니다.</p>
										</h1>
										<ul class="searchBox_filterBox_4">
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="supply_type"
													value="" checked=""><span class="CheckBox"></span><span
													class="checkBoxText_3">전체</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="supply_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">일반분양</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="supply_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">임대분양</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="supply_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">재건축</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="supply_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">재개발</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="supply_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">지역조합</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="supply_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">시장정비</span></label></li>
											<li><label class="Checkbox_Label" size="22"><input
													type="checkbox" class="inputCheckbox" name="supply_type"
													value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">도시환경정비</span></label></li>
										</ul>
									</div>
								</div>
								<a href="#none">
									<button class="searchBtn">검색</button>
								</a>
							</div>
						</div>
						<div class="elygmO">
							<div class="laiUsh">
								<a class="iyddZa"
									href="/saleInLots/saleInLotsInformation?saleInLotsArea=서울특별시&saleInLotsSupplyType=공급유형&saleInLotsBuildType=아파트&saleInLotsState=분양단계">
									<button>#서울 아파트</button>
								</a> <a class="iyddZa"
									href="/saleInLots/saleInLotsInformation?saleInLotsArea=경기도&saleInLotsSupplyType=공급유형&saleInLotsBuildType=오피스텔&saleInLotsState=분양단계">
									<button>#경기 오피스텔</button>
								</a> <a class="iyddZa"
									href="/saleInLots/saleInLotsInformation?saleInLotsArea=전국&saleInLotsSupplyType=일반분양,임대분양&saleInLotsBuildType=건물유형&saleInLotsState=분양단계">
									<button>#전국 공공분양/임대</button>
								</a> <a class="iyddZa"
									href="/saleInLots/saleInLotsInformation?saleInLotsArea=서울특별시&saleInLotsSupplyType=재건축,재개발&saleInLotsBuildType=건물유형&saleInLotsState=분양단계">
									<button>#서울 재건축/재개발</button>
								</a> <a class="iyddZa"
									href="/saleInLots/saleInLotsInformation?saleInLotsArea=부산광역시&saleInLotsSupplyType=공급유형&saleInLotsBuildType=건물유형&saleInLotsState=분양예정">
									<button>#부산 분양예정</button>
								</a>
							</div>
						</div>
					</div>
					<div class="iAHZaR">
						<p class="ixXdQT">분양 가이드</p>
						<div class="cpacuO" color="#6587a2">
							<p class="wsqAd">알기쉬운</p>
							<p class="wsqAd">주택 청약 절차</p>
							<div class="beFetf">
								<div>
									<a href="/saleInLots/saleInLotsProcess?tab=1"> 1. 청약통장 가입하기
									</a> <a href="/saleInLots/saleInLotsProcess?tab=2"> 2. 원하는주택
										찾아보기 </a> <a href="/saleInLots/saleInLotsProcess?tab=3"> 3. 내
										자격과 순위 확인하기 </a>
								</div>
							</div>
							<a class="kOckbc" href="/saleInLots/saleInLotsProcess"> 더
								알아보기 <svg width="10" height="16" viewBox="0 0 10 16">
									<path fill="none" fill-rule="evenodd" stroke="#FFF"
										d="M2 14l6-6-6-6"></path>
								</svg>
							</a>
						</div>
						<div class="gUBrVK" color="#b1a79a">
							<p class="wsqAd">분양 용어</p>
							<p class="wsqAd">알아보기</p>
							<div class="beFetf">
								<div>
									<a href="/saleInLots/saleInLotsTerms?tab=1"> 1. 분양공고문 </a> <a
										href="/saleInLots/saleInLotsTerms?tab=2"> 2. 대출용어 </a> <a
										href="/saleInLots/saleInLotsTerms?tab=3"> 3. 주택용어 </a> <a
										href="/saleInLots/saleInLotsTerms?tab=4"> 4. 건축물용어 </a>
								</div>
							</div>
							<a class="kOckbc" href="/saleInLots/saleInLotsTerms"> 더 알아보기
								<svg width="10" height="16" viewBox="0 0 10 16">
									<path fill="none" fill-rule="evenodd" stroke="#FFF"
										d="M2 14l6-6-6-6"></path>
								</svg>
							</a>
						</div>
						<div class="fxIgbB" color="#93979d">
							<p class="wsqAd">자주하는</p>
							<p class="wsqAd">분양질문</p>
							<div class="beFetf">
								<div>
									<a href="/saleInLots/saleInLotsFaq?tab=1"> 1. 청약가점제란 무었인가요?
									</a> <a href="/saleInLots/saleInLotsFaq?tab=2"> 2. 무주택기간은 어떻게
										산정하나요? </a> <a href="/saleInLots/saleInLotsFaq?tab=3"> 3.
										청약가점제에서 무주택자의 기준은 어떻게 되나요? </a>
								</div>
							</div>
							<a class="kOckbc" href="/saleInLots/saleInLotsFaq"> 더 알아보기 <svg
									width="10" height="16" viewBox="0 0 10 16">
									<path fill="none" fill-rule="evenodd" stroke="#FFF"
										d="M2 14l6-6-6-6"></path>
								</svg>
							</a>
						</div>
						<div class="iuzufP">
							<a class="lbbxgW" href="/saleInLots/saleInLotsCalculator"> <svg
									width="52" height="52" viewBox="0 0 52 52">
									<g fill="#222" fill-rule="evenodd">
										<path fill-rule="nonzero"
										d="M14 1h31v50H7V8h1.4V5H7V1h4v1.4h3V1zm-3 1.4H8.4v47.2h35.2V2.4H11z"></path>
										<path d="M8 18h36v1.4H8z"></path>
									<path d="M25 19h1.4v32H25z"></path>
										<path d="M7 34h38v1.4H7zM13 26h8v1.4h-8z"></path>
										<path
										d="M16.315 22.823h1.4v8h-1.4zM32.754 39.59l5.656 5.656-.99.99-5.656-5.656z"></path>
										<path
										d="M37.344 39.687l.99.99-5.657 5.657-.99-.99zM31 26h8v1.4h-8zM13 42h8v1.4h-8z"></path>
										<circle cx="17" cy="40" r="1"></circle>
									<circle cx="17" cy="45.5" r="1"></circle>
									</g>
								</svg> <span>청약 가점 확인하기</span>
							</a> <a class="lbbxgW"
								href="http://www.happyhousing.co.kr/index.html" target="_blank"
								rel="noopener noreferrer"> <svg width="52" height="52"
									viewBox="0 0 52 52">
									<g fill="none" fill-rule="evenodd">
										<path fill="#222" fill-rule="nonzero"
										d="M38 19.5h-1.4v26.1H26V47H3V8h1.4V5H3V1h4v1.4h3V1h28v18.5zM26 45.6h10.6V2.4H4.4v43.2H26z"></path>
										<g transform="translate(8 7)">
											<circle cx="8" cy="13" r="8" stroke="#222"
										stroke-width="1.41"></circle>
											<path stroke="#222" stroke-width="1.4"
										d="M8 5.385V13.4l-6.01 4.984M8 13.4h8"></path>
											<path fill="#222"
										d="M0 25h17v1.4H0zM20 0h6v1.4h-6zM22 4h4v1.4h-4zM0 29h17v1.4H0zM0 33h7v1.4H0z"></path>
										</g>
										<path stroke="#222" stroke-width="1.4"
										d="M29.065 33.62l-.049-3.23c.27-5.443 2.447-8.814 6.527-10.112 3.474-.748 6.04.013 7.698 2.283 2.517 1.06 3.775 2.934 3.775 5.62V33.4"></path>
										<path stroke="#222" stroke-linejoin="round" stroke-width="1.4"
										d="M32.198 36.55c-2.056-.54-3.1-1.515-3.133-2.93-.049-2.12.935-2.973 2.762-3.432 1.827-.46 4.02-.433 5.432-2.738 1.637 1.7 3.8 2.613 6.49 2.738 2.178.402 3.267 1.546 3.267 3.433-.235 1.953-1.324 2.896-3.267 2.83"></path>
										<path fill="#222" fill-rule="nonzero"
										d="M32.508 30v3.735c0 3.148 2.459 5.7 5.492 5.7s5.492-2.552 5.492-5.7V30H45v3.735C45 37.747 41.866 41 38 41s-7-3.253-7-7.265V30h1.508z"></path>
										<path stroke="#222" stroke-linejoin="round" stroke-width="1.4"
										d="M38 40.25l1.704-.25c-.17.93.188 1.55 1.077 1.86 1.333.464 7.833.054 9.207 4.782L51 50H25l1.012-3.358c1.374-4.728 7.874-4.318 9.207-4.782.889-.31 1.248-.93 1.077-1.86l1.704.25z"></path>
										<path stroke="#222" stroke-linecap="round" stroke-width="1.4"
										d="M31 46l-.651 3.297M44.174 46l.652 3.297"></path>
									</g>
								</svg> <span>LH 입주자격 진단</span>
							</a>
						</div>
					</div>

					<section class="saleInLotsInformation">
					<div class="saleInLotsBox">
						<p class="saleInLotsList">분양 정보</p>
						<table class="saleInLotsTable">
							<colgroup>
								<col style="width: 115px;">
								<col style="width: 120px;">
								<col style="width: 110px;">
								<col style="width: 450px;">
								<col style="width: 130px;">
								<col style="width: 115px;">
								<col style="width: 140px;">
							</colgroup>
							<thead>
								<tr>
									<th>단계</th>
									<th>건물유형</th>
									<th>공급유형</th>
									<th>단지명/ 위치</th>
									<th>분양가</th>
									<th>세대수</th>
									<th>전용면적</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="list" items="${list}">
									<tr>
										<td>
											<c:if test="${list.saleInLotsState == '분양예정'}">
											<p class="saleInLotsState">${list.saleInLotsState}</p>
											</c:if>
											<c:if test="${list.saleInLotsState == '분양중'}">
											<p class="saleInLotsState red">${list.saleInLotsState}</p>
											</c:if>
											<c:if test="${list.saleInLotsState == '입주모집'}">
											<p class="saleInLotsState green">${list.saleInLotsState}</p>
											</c:if>
											<c:if test="${list.saleInLotsState == '준비중'}">
											<p class="saleInLotsState gray">${list.saleInLotsState}</p>
											</c:if>
										</td>
										<td>
											<p class="saleInLotsType">${list.saleInLotsBuildType}</p>
										</td>
										<td>
											<p class="saleInLotsType">${list.saleInLotsSupplyType}</p>
										</td>
										<td><a
											href="/saleInLots/saleInLotsDetailInformation?saleInLotsIDX=${list.saleInLotsIDX}">
												<div class="saleInLotsInfoBox">
													<div class="saleInLotsInfoBox_content">
														<p class="saleInLotsName">${list.saleInLotsName}</p>
														<p class="saleInLotsDetailArea">${list.saleInLotsDetailArea}
														</p>
													</div>
												</div>
										</a></td>
										<td><c:if test="${list.saleInLotsPriceMinAll eq '0'}">
												<p class="saleInLotsType">준비중</p>
											</c:if> <c:if test="${list.saleInLotsPriceMinAll ne '0'}">
												<p class="saleInLotsType minPrice">최저 : ${list.saleInLotsPriceMinAll}</p>
												<p class="saleInLotsType maxPrice">최고 : ${list.saleInLotsPriceMaxAll}</p>
											</c:if></td>
										<td><c:if test="${list.saleInLotsSaleHousehold ne '0'}">
												<p class="saleInLotsType">${list.saleInLotsSaleHousehold}세대
												</p>
											</c:if> <c:if test="${list.saleInLotsSaleHousehold eq '0'}">
												<p class="saleInLotsType">준비중</p>
											</c:if></td>
										<td><c:if
												test="${list.saleInLotsMinSupplyArea eq null and list.saleInLotsMaxSupplyArea eq null}">
												<p class="saleInLotsType" style="padding: 0px 13px;">-</p>
											</c:if> <c:if test="${list.saleInLotsMinSupplyArea ne null}">
												<p class="saleInLotsType" style="padding: 0px 13px;">${list.saleInLotsMinSupplyArea }㎡
													/ ${list.saleInLotsMaxSupplyArea}㎡</p>
											</c:if></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<a class="styled__MoreView-hww48k-11 bhyJUd"
							href="/saleInLots/saleInLotsInformation?saleInLotsArea=전국&saleInLotsSupplyType=공급유형&saleInLotsBuildType=건물유형&saleInLotsState=분양단계">분양정보
							모두 보기</a>
					</div>
					</section>
					<div class="styled__Wrap-avmu4m-0 fXYwIW">
						<p class="styled__Title-avmu4m-1 ejXHWF">브랜드관</p>
						<div class="styled__SwipeWrap-avmu4m-2 hMqAac">
							<div class="styled__Swipe-avmu4m-3 eoCrnb">
								<a class="styled__Card-flnw8b-0 gcyzDd"
									href="/saleInLots/saleInLotsBrand?brandName=아이파크">
									<div class="styled__Img-flnw8b-1 cgRRbZ"></div>
									<div class="styled__BrandName-flnw8b-2 kBqRhS">아이파크</div>
								</a> <a class="styled__Card-flnw8b-0 gcyzDd"
									href="/saleInLots/saleInLotsBrand?brandName=푸르지오"">
									<div class="styled__Img-flnw8b-1 gTnXDR"></div>
									<div class="styled__BrandName-flnw8b-2 kBqRhS">푸르지오</div>
								</a> <a class="styled__Card-flnw8b-0 gcyzDd"
									href="/saleInLots/saleInLotsBrand?brandName=자이"">
									<div class="styled__Img-flnw8b-1 hiyOAi"></div>
									<div class="styled__BrandName-flnw8b-2 kBqRhS">자이</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
<script src="/guest/js/saleInLots/saleInLotsHome.js"></script>

</body>
</html>
