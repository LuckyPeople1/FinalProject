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
					<span class="tit">이사 관리</span>
				</div>
				<div class="moveListBox">
					<div class="moveBox on">
						<a href="/my/auctionList">
							<div class="moveInfo">
								<div class="top">
									<span class="dateBox">이사날짜 : 2019-05-20</span>
									<span class="timeBox">이사시간 : 15:30분</span>
									<span class="hopeBox">[차량만 // 도움있음]</span>
								</div>
								<div class="bottom">
								<span class="addrBox">
									<span class="addr">서울시 강서구 강서구청 1-31 5</span>
									<span class="arrow">▶▶▶</span>
									<span class="addr">서울시 마포구 153-32길 303호</span>
								</span>
								</div>
							</div>
							<div class="stateBox">
								<span class="state on">진행중</span>
							</div>
						</a>
					</div>
					<div class="moveBox">
						<a href="/my/auctionList">
							<div class="moveInfo">
								<div class="top">
									<span class="dateBox">이사날짜 : 2019-05-20</span>
									<span class="timeBox">이사시간 : 15:30분</span>
									<span class="hopeBox">[차량만 // 도움있음]</span>
								</div>
								<div class="bottom">
								<span class="addrBox">
									<span class="addr">서울시 강서구 강서구청 1-31 5</span>
									<span class="arrow">▶▶▶</span>
									<span class="addr">서울시 마포구 153-32길 303호</span>
								</span>
								</div>
							</div>
							<div class="stateBox">
								<span class="state">마감</span>
							</div>
						</a>
					</div>
					<div class="moveBox">
						<a href="#none">
							<div class="moveInfo">
								<div class="top">
									<span class="dateBox">이사날짜 : 2019-05-20</span>
									<span class="timeBox">이사시간 : 15:30분</span>
									<span class="hopeBox">[차량만 // 도움있음]</span>
								</div>
								<div class="bottom">
								<span class="addrBox">
									<span class="addr">서울시 강서구 강서구청 1-31 5</span>
									<span class="arrow">▶▶▶</span>
									<span class="addr">서울시 마포구 153-32길 303호</span>
								</span>
								</div>
							</div>
							<div class="stateBox">
								<span class="state">마감</span>
							</div>
						</a>
					</div>
					<div class="moveBox">
						<a href="#none">
							<div class="moveInfo">
								<div class="top">
									<span class="dateBox">이사날짜 : 2019-05-20</span>
									<span class="timeBox">이사시간 : 15:30분</span>
									<span class="hopeBox">[차량만 // 도움있음]</span>
								</div>
								<div class="bottom">
								<span class="addrBox">
									<span class="addr">서울시 강서구 강서구청 1-31 5</span>
									<span class="arrow">▶▶▶</span>
									<span class="addr">서울시 마포구 153-32길 303호</span>
								</span>
								</div>
							</div>
							<div class="stateBox">
								<span class="state">마감</span>
							</div>
						</a>
					</div>
				
				</div>
				<div class="movePaging">
					<a href="#none"><</a>
					<a href="#none" class="on">1</a>
					<a href="#none">2</a>
					<a href="#none">3</a>
					<a href="#none">></a>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
	<script src="<c:url value="/guest/js/mypage/move.js"/>"></script>
</div>
</body>
</html>