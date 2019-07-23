<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="saleInLots">
			<article class="saleInLotsHeader">
				<a href="/saleInLots/saleInLotsInformation?saleInLotsArea=전국&saleInLotsSupplyType=공급유형&saleInLotsBuildType=건물유형&saleInLotsState=분양단계" class="active">분양정보</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsProcess">분양가이드</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsBrand">브랜드관</a>
			</article>
		</section>
		<section class="saleInLotsInformation">
			<div class="screen">
				<div class="web">
					<div class="web_content">
						<p class="saleInLotsInformation_main">분양정보</p>
						<div class="saleInLotsInformation_content">
							<div class="searchBox_filter_type" tabindex="0">
								<div class="searchBox_btn">
									<span id="area">${saleInLotsArea }</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
								<div class="searchBox_filterBox_1" width="200"
										height="340" style="left: 0px; display: none">
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
									<span id="buildType">${saleInLotsBuildType }</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
								<div class="searchBox_filterBox_2" width="250"
										height="280" style="left: 0px; display: none;">
										<h1 class="filterBox_title">건물유형
											<p class="filterBox_title_msg">중복선택이 가능합니다.</p>
										</h1>
										<ul class="filterBox_ul">
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="building_type" value="" checked=""><span
													class="CheckBox"></span><span
													class="checkBoxText">전체</span></label></li>
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="building_type" value=""><span
													class="CheckBox"></span><span
													class="checkBoxText">아파트</span></label></li>
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="building_type" value=""><span
													class="CheckBox"></span><span
													class="checkBoxText">오피스텔</span></label></li>
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="building_type" value=""><span
													class="CheckBox"></span><span
													class="checkBoxText">도시형생활주택</span></label></li>
										</ul>
									</div>
							</div>
							<div class="searchBox_filter_type" tabindex="0">
								<div class="searchBox_btn">
									<span id="saleState">${saleInLotsState }</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
								<div class="searchBox_filterBox_2" width="250"
										height="280" style="left: 0px; display: none;">
										<h1 class="filterBox_title">분양단계
											<p class="filterBox_title_msg">중복선택이 가능합니다.</p>
										</h1>
										<ul class="filterBox_ul">
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="building_type" value="" checked=""><span
													class="CheckBox"></span><span
													class="checkBoxText">전체</span></label></li>
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="building_type" value=""><span
													class="CheckBox"></span><span
													class="checkBoxText">분양예정</span></label></li>
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="building_type" value=""><span
													class="CheckBox"></span><span
													class="checkBoxText">분양중</span></label></li>
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="building_type" value=""><span
													class="CheckBox"></span><span
													class="checkBoxText">입주모집</span></label></li>
										</ul>
									</div>
							</div>
							<div class="searchBox_filter_type" tabindex="0">
								<div class="searchBox_btn">
									<span id="supplyType">${saleInLotsSupplyType }</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
								<div class="filterBox_ul_3" width="250"
										height="346" style="left: 0px; display: none;">
										<h1 class="filterBox_title">공급유형
											<p class="filterBox_title_msg">중복선택이 가능합니다.</p>
										</h1>
										<ul class="searchBox_filterBox_4">
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="supply_type" value="" checked=""><span
													class="CheckBox"></span><span
													class="checkBoxText_3">전체</span></label></li>
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="supply_type" value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">일반분양</span></label></li>
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="supply_type" value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">임대분양</span></label></li>
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="supply_type" value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">재건축</span></label></li>
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="supply_type" value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">재개발</span></label></li>
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="supply_type" value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">지역조합</span></label></li>
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="supply_type" value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">시장정비</span></label></li>		
											<li><label
												class="Checkbox_Label" size="22"><input
													type="checkbox"
													class="inputCheckbox"
													name="supply_type" value=""><span class="CheckBox"></span><span
													class="checkBoxText_3">도시환경정비</span></label></li>		
										</ul>
									</div>
							</div>
							<a href="#none">
								<button class="searchBtn">검색</button>
							</a>
						</div>
						<div class="saleInLotsBox">
							<p class="saleInLotsList">
								분양목록
								<span>총<b>${sp.totalCount} </b>건</span>
							</p>
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
									<c:forEach var="list" items="${sp.list}" >
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
										<td>
											<a href="/saleInLots/saleInLotsDetailInformation?saleInLotsIDX=${list.saleInLotsIDX}">
											<div class="saleInLotsInfoBox">
												<div class="saleInLotsInfoBox_content">
													<p class="saleInLotsName">${list.saleInLotsName} </p>
													<p class="saleInLotsDetailArea">${list.saleInLotsDetailArea} </p>
												</div>
											</div>
											</a>
										</td>
										<td>
											<c:if test="${list.saleInLotsPriceMinAll eq '0'}">
												<p class="saleInLotsType">준비중 </p>
											</c:if>
											<c:if test="${list.saleInLotsPriceMinAll ne '0'}">
												<p class="saleInLotsType minPrice">최저 : ${list.saleInLotsPriceMinAll} </p>
												<p class="saleInLotsType maxPrice">최고 : ${list.saleInLotsPriceMaxAll} </p>
											</c:if>
										</td>
										<td>
											<c:if test="${list.saleInLotsSaleHousehold ne '0'}">
												<p class="saleInLotsType">${list.saleInLotsSaleHousehold}세대 </p>
											</c:if>
											<c:if test="${list.saleInLotsSaleHousehold eq '0'}">
												<p class="saleInLotsType">준비중 </p>
											</c:if>
										</td>
										<td>
											<c:if test="${list.saleInLotsMinSupplyArea eq null and list.saleInLotsMaxSupplyArea eq null}">
												<p class="saleInLotsType" style="padding: 0px 13px;">-</p>
											</c:if>
											<c:if test="${list.saleInLotsMinSupplyArea ne null}">	
												<p class="saleInLotsType" style="padding: 0px 13px;">${list.saleInLotsMinSupplyArea }㎡ / ${list.saleInLotsMaxSupplyArea}㎡</p>
											</c:if>
										</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="pageWrap">
							<div class="wrap">
								<div class="pagination">
									${sp.pageNavi} 
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
</div>
</body>
<script src="/guest/js/saleInLots/saleInLotsInformation.js"></script>

</html>