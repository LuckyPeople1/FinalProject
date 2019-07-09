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
				<a href="/saleInLots/saleInLotsThema">테마분양</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsSchedule">분양일정</a>
				<div class="header"></div>
				<a href="#none">분양뉴스</a>
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
							<div class="saleInLotsSelectBox" tabindex="0">
								<div class="SelectBox_content">
									<span>전국</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
							</div>
							<div class="saleInLotsSelectBox" tabindex="0">
								<div class="SelectBox_content">
									<span>건물유형</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
							</div>
							<div class="saleInLotsSelectBox" tabindex="0">
								<div class="SelectBox_content">
									<span>분양단계</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
							</div>
							<div class="saleInLotsSelectBox" tabindex="0">
								<div class="SelectBox_content">
									<span>분양일정</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
							</div>
							<div class="saleInLotsSelectBox" tabindex="0">
								<div class="SelectBox_content">
									<span>공급유형</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
							</div>
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
											<p class="saleInLotsState">${list.saleInLotsState}</p>
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
</div>
</body>
<script src="/guest/js/saleInLots/saleInLotsInformation.js"></script>
</html>