<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="saleInLots">
			<article class="saleInLotsHeader">
				<a href="/saleInLots/saleInLotsInformation?saleInLotsArea=전국&saleInLotsSupplyType=공급유형&saleInLotsBuildType=건물유형&saleInLotsState=분양단계">분양정보</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsProcess" class="active">분양가이드</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsBrand">브랜드관</a>
			</article>
		</section>
		<section class="saleInLotsProcess">
			<div class="processContent">
				<section class="saleInLotsProcessNav">
					<h1>분양 가이드</h1>
					<div class="processNav">
						<a href="/saleInLots/saleInLotsProcess">
							<div class="NavText">주택청약철차</div>
						</a>
						<a href="/saleInLots/saleInLotsTerms">
							<div class="NavText">분양용어</div>
						</a> 
						<a href="/saleInLots/saleInLotsFaq" class="on">
							<div class="NavText">자주하는 질문</div>
						</a> 
						<a href="/saleInLots/saleInLotsCalculator">
							<div class="NavText">청약가점계산</div>
						</a>
					</div>
				</section>
				<div>
					
					<div class="wrap" style="border: none">
						
					</div>
					<div class="faqNavi">
						<li class="faqNavi_li_1 faqon">전체</li>
						<li class="faqNavi_li_1">청약가점제</li>
						<li class="faqNavi_li_1">공급대상</li>
						<li class="faqNavi_li_1">청약전략</li>
						<li class="faqNavi_li_1">부동산규제</li>
						<li class="faqNavi_li_1">기타</li>
					</div>
					<div class="content_box">
					<c:forEach var="item" items="${list }" varStatus="i">
						<div class="wrap_content">
							<c:choose>
								<c:when test="${i.count == 1}">
									<h1 class="processTitle ${tab == 1 ? 'on' : ''}">
								</c:when>
								<c:when test="${i.count == 2}">
									<h1 class="processTitle ${tab == 2 ? 'on' : ''}">
								</c:when>
								<c:when test="${i.count == 3}">
									<h1 class="processTitle ${tab == 3 ? 'on' : ''}">
								</c:when>
								<c:otherwise>
									<h1 class="processTitle">
								</c:otherwise>
							</c:choose>
								<div class="title_Label">
									<span style="font-size: 14px;">${item.saleInLotsFaqType }</span>${item.saleInLotsFaqTitle }
								</div>
								<svg width="14" height="8" viewBox="0 0 14 8">
									<path fill-rule="nonzero"
										d="M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z">
									</path>
								</svg>
							</h1>
							<c:choose>
								<c:when test="${i.count == 1}">
									<div class="processContentDetail" style="display:${tab == 1 ? 'block' : 'none' }">
								</c:when>
								<c:when test="${i.count == 2}">
									<div class="processContentDetail" style="display:${tab == 2 ? 'block' : 'none' }">
								</c:when>
								<c:when test="${i.count == 3}">
									<div class="processContentDetail" style="display:${tab == 3 ? 'block' : 'none' }">
								</c:when>
								<c:otherwise>
									<div class="processContentDetail" style="display:none">
								</c:otherwise>
							</c:choose>
								<p style="white-space: pre-line;">${item.saleInLotsFaqContent }</p>					
							</div>
						</div>
					</c:forEach>
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
</body>
<script src="/guest/js/saleInLots/saleInLotsFaq.js"></script>
</html>