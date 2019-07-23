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
						<a href="/saleInLots/saleInLotsTerms" class="on">
							<div class="NavText">분양용어</div>
						</a> 
						<a href="/saleInLots/saleInLotsFaq">
							<div class="NavText">자주하는 질문</div>
						</a> 
						<a href="/saleInLots/saleInLotsCalculator">
							<div class="NavText">청약가점계산</div>
						</a>
					</div>
				</section>
				<div>
					<div class="wrap">
						
					</div>
					<div class="wrap_content">
						<h1 class="processTitle ${tab == 1 ? 'on' : ''}">
							<div class="title_Label">
								<span>01</span> 분양공고문
							</div>
							<svg width="14" height="8" viewBox="0 0 14 8">
								<path fill-rule="nonzero"
									d="M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z">
								</path>
							</svg>
						</h1>
						<div class="processContentDetail" style="display:${tab == 1 ? 'block' : 'none' }">
							<c:forEach var="item" items="${list }">
								<c:if test="${item.saleInLotsTermsType == '분양공고문' }">
									<div class="box">
										<span>${item.saleInLotsTermsTitle }</span>
										<p>${item.saleInLotsTermsContent }</p>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
					<div class="wrap_content">
						<h1 class="processTitle ${tab == 2 ? 'on' : ''}">
							<div class="title_Label">
								<span>02</span> 대출용어
							</div>
							<svg width="14" height="8" viewBox="0 0 14 8">
								<path fill-rule="nonzero"
									d="M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z">
								</path>
							</svg>
						</h1>
						<div class="processContentDetail" style="display:${tab == 2 ? 'block' : 'none' }">
							<c:forEach var="item" items="${list }">
								<c:if test="${item.saleInLotsTermsType == '대출용어' }">
									<div class="box">
										<span>${item.saleInLotsTermsTitle }</span>
										<p>${item.saleInLotsTermsContent }</p>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
					<div class="wrap_content">
						<h1 class="processTitle ${tab == 3 ? 'on' : ''}">
							<div class="title_Label">
								<span>03</span> 주택용어
							</div>
							<svg width="14" height="8" viewBox="0 0 14 8">
								<path fill-rule="nonzero"
									d="M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z">
								</path>
							</svg>
						</h1>
						<div class="processContentDetail" style="display:${tab == 3 ? 'block' : 'none' }">
							<c:forEach var="item" items="${list }">
								<c:if test="${item.saleInLotsTermsType == '주택용어' }">
									<div class="box">
										<span>${item.saleInLotsTermsTitle }</span>
										<p>${item.saleInLotsTermsContent }</p>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
					<div class="wrap_content">
						<h1 class="processTitle ${tab == 4 ? 'on' : ''}">
							<div class="title_Label">
								<span>04</span> 건축물용어
							</div>
							<svg width="14" height="8" viewBox="0 0 14 8">
								<path fill-rule="nonzero"
									d="M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z">
								</path>
							</svg>
						</h1>
						<div class="processContentDetail" style="display:${tab == 4 ? 'block' : 'none' }">
							<c:forEach var="item" items="${list }">
								<c:if test="${item.saleInLotsTermsType == '건축물 용어' }">
									<div class="box">
										<span>${item.saleInLotsTermsTitle }</span>
										<p>${item.saleInLotsTermsContent }</p>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
</div>
</body>
<script src="/guest/js/saleInLots/saleInLotsProcessHome.js"></script>
</html>