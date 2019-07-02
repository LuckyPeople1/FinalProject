<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="saleInLots">
			<article class="jgkpPZ">
				<a href="/saleInLots/saleInLotsInformation">분양정보</a>
				<div class="gSDUZR"></div>
				<a href="/saleInLots/saleInLotsThema">테마분양</a>
				<div class="gSDUZR"></div>
				<a href="/saleInLots/saleInLotsSchedule">분양일정</a>
				<div class="gSDUZR"></div>
				<a href="#none">분양뉴스</a>
				<div class="gSDUZR"></div>
				<a href="/saleInLots/saleInLotsProcess">분양가이드</a>
				<div class="gSDUZR"></div>
				<a href="/saleInLots/saleInLotsBrand" class="active">브랜드관</a>
			</article>
		</section>
		<section class="saleInLotsBrand">
		
		</section>
	</div>
</div>
</body>
</html>