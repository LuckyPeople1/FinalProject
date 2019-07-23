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
				<a href="/saleInLots/saleInLotsBrand?brandName=아이파크" class="active">브랜드관</a>
			</article>
		</section>
		<section class="saleInLotsBrand">
			<div class="screen">
				<div class="wrap">
					<div class="main_screen">
						<p class="title">브랜드관</p>
						<div class="brandBox">
							<div class="brandContent">
								<div class="brandCard ${tab == '아이파크' ? 'on' : ''  }">
									<div class="brandImg img1"></div>
									<div class="brandName">아이파크</div>
								</div>
								<div class="brandCard ${tab == '푸르지오' ? 'on' : ''  }">
									<div class="brandImg img2"></div>
									<div class="brandName">푸르지오</div>
								</div>
								<div class="brandCard ${tab == '자이' ? 'on' : ''  }">
									<div class="brandImg img3"></div>
									<div class="brandName">자이</div>
								</div>
							</div>
						</div>
						<div class="contentWrap">
							<table class="dataTable">
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
												<p class="saleInLotsType minPrice">최저 :${list.saleInLotsPriceMinAll}</p>
												<p class="saleInLotsType maxPrice">최고 :${list.saleInLotsPriceMaxAll}</p>
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
						</div>
						<div class="pageWrap">
							<div class="page_wrap">
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
<script src="/guest/js/saleInLots/saleInLotsBrand.js"></script>
</html>