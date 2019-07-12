<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
	<div class="contents">
		<section class="mypage inner">
			<div class="sectionTitle">MY 다싸</div>
			
			<!-- 탭메뉴 -->
			<jsp:include page="/WEB-INF/views/guest/mypage/page/myTab.jsp"/>
			
			<!-- 컨텐츠 시작 -->
			<div class="mypageCon move">
				<div class="moveTitle">
					<span class="tit">입찰 내역</span>
					<a href="/my/moveInfo?applyIdx=${applyIdx }" class="myMove">내 이사정보 보기</a>
				</div>
				<div class="auctionList">
					<c:forEach var="item" items="${list}">
						<div class="auctionBox on">
							<a href="/my/auctionInfo?applyIdx=${item.applyIdx }">
								<div class="auctionInfo">
									<div class="profileBox">
										<c:if test="${not empty item.proFilepath }">
											<img src="${item.proFilepath }" alt="프로필">
										</c:if>
										<c:if test="${empty item.proFilepath }">
											<img src="/guest/img/img_profile_default.png" alt="프로필">
										</c:if>
									</div>
									<div class="driverInfo">
										<div class="driverName">${item.userName } 기사님</div>
										<div class="driverCount">${item.star } &nbsp / &nbsp ${item.reviewCount }</div>
									</div>
								</div>
								<div class="price">${item.estimateAmount } 원</div>
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
	<script src="<c:url value="/guest/js/mypage/move.js"/>"></script>
</div>
</body>
</html>