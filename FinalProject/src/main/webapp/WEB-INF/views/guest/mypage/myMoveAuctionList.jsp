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
					<a href="/my/moveInfo?moveIdx=1" class="myMove">내 이사정보 보기</a>
				</div>
				<div class="auctionList">
					<div class="auctionBox on">
						<a href="/my/auctionInfo">
							<div class="auctionInfo">
								<div class="profileBox">
									<img src="/guest/img/img_profile_default.png" alt="프로필">
								</div>
								<div class="driverInfo">
									<div class="driverName">유성연 기사님</div>
									<div class="driverCount">평점 4.5 &nbsp / &nbsp 리뷰 15건</div>
								</div>
							</div>
							<div class="price">10,500원</div>
						</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
	<script src="<c:url value="/guest/js/mypage/move.js"/>"></script>
</div>
</body>
</html>