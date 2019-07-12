<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
					<c:forEach var="list" items="${movePage.list}">
						<c:choose>
							<c:when test="${list.applyStatus eq 0}">
								<a href="/my/auctionList?applyIdx=${list.applyIdx }" class="moveBox on">
							</c:when>
							<c:otherwise>
								<a href="/my/moveInfo?applyIdx=${list.applyIdx }" class="moveBox">
							</c:otherwise>
						</c:choose>
							<div class="moveInfo">
								<div class="top">
									<span class="dateBox">
										이사날짜 : <fmt:parseDate value="${list.applyDate}" var="dateFmt" pattern="yyyy-MM-dd"/>
										<fmt:formatDate value="${dateFmt}" pattern="yyyy-MM-dd"/>
									</span>
									<span class="timeBox">이사시간 : ${list.applyTime}</span>
									<c:choose>
										<c:when test="${list.applyTime eq '0'}">
											<span class="hopeBox">[${list.applyHope} // 도움있음]</span>
										</c:when>
										<c:otherwise>
											<span class="hopeBox">[${list.applyHope} // 도움없음]</span>
										</c:otherwise>
									</c:choose>
								</div>
								<div class="bottom">
									<span class="addrBox">
										<span class="addr">${list.startAddr2} ${list.startAddr3} </span>
										<span class="arrow">▶▶▶</span>
										<span class="addr">${list.endAddr2} ${list.endAddr3} </span>
									</span>
								</div>
							</div>
							<div class="stateBox">
								<c:choose>
									<c:when test="${list.applyStatus eq 0}">
										<span class="state on">진행중</span>
									</c:when>
									<c:when test="${list.applyStatus eq 1}">
										<span class="state">완료</span>
									</c:when>
									<c:otherwise>
										<span class="state">취소</span>
									</c:otherwise>
								</c:choose>
							</div>
						</a>
					</c:forEach>
					<a href="/my/auctionList" class="moveBox">
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
						<!-- 후기를 작성하지 않은 경우 표시 -->
						<div class="reviewBox">
							<span class="review">후기작성</span>
						</div>
						<!-- -->
						<div class="stateBox">
							<span class="state">완료</span>
						</div>
					</a>
				
				</div>
				<div class="movePaging">
					${movePage.pageNavi }
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
	<script src="<c:url value="/guest/js/mypage/move.js"/>"></script>
</div>
</body>
</html>