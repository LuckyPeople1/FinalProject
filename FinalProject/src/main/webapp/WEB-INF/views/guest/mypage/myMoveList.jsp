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
					<c:forEach var="list" items="${movePage.list}" varStatus="i">
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
							<c:choose>
								<c:when test="${list.applyStatus eq 0}">
									<div class="stateBox">
										<span class="state on">진행중</span>
									</div>
								</c:when>
								<c:when test="${list.applyStatus eq 1}">
									<div class="stateBox">
										<span class="state">결제 완료</span>
									</div>
								</c:when>
								<c:when test="${list.applyStatus eq 2}">
									<c:if test="${movePage.reList[0].applyIdx != 0}">
										<div class="reviewBox">
											<span class="review">후기작성</span>
										</div>
									</c:if>
									<div class="stateBox">
										<span class="state">이사 완료</span>
									</div>
								</c:when>
								<c:otherwise>
									<div class="stateBox">
										<span class="state">취소</span>
									</div>
								</c:otherwise>
							</c:choose>
						</a>
					</c:forEach>
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