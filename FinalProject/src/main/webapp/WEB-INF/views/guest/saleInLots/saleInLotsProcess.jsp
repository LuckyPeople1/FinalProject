<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="saleInLots">
			<article class="saleInLotsHeader">
				<a href="/saleInLots/saleInLotsInformation" class="active">분양정보</a>
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
		<section class="saleInLotsProcess">
			<div class="DKZrq">
				<h1>분양 가이드</h1>
				<div class="kjzLYv">
					<a href="/saleInLots/saleInLotsProcess" class="active">
						<div class="imXavy">주택청약철차</div>
					</a>
					<a href="/saleInLots/saleInLotsTerms" >
						<div class="imXavy">분양용어</div>
					</a>
					<a href="/saleInLots/saleInLotsFaq" >
						<div class="imXavy"></div>
					</a>
					<a href="/saleInLots/saleInLotscalculator">
						<div class="imXavy">주택청약철차</div>
					</a>
				</div>
			</div>
		</section>
	</div>
</div>
</body>
</html>