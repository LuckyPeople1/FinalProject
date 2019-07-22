<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css"	href="/guest/css/notice/notice.css">

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
					<span class="tit">방문 관리</span>
				</div>
				<div class="moveListBox">
					<c:forEach var="list" items="${list}" varStatus="i">
						<c:choose>
							<c:when test="${list.questionsAnswerState eq '답변완료'}">
								<a href="#" class="moveBox on atag"></a>
							</c:when>
							<c:otherwise>
								<a href="#" class="moveBox off"></a>
							</c:otherwise>
						</c:choose>
							<div class="moveInfo">
								<div class="top">
									<span class="dateBox">
										작성일 : <fmt:parseDate value="${list.questionsRegDate}" var="dateFmt" pattern="yyyy-MM-dd"/>
										<fmt:formatDate value="${dateFmt}" pattern="yyyy-MM-dd"/>
									</span>
									<span class="timeBox">작성자 : ${list.questionsWriter}</span>
									<span class="hopeBox"></span>
								</div>
								<div class="bottom">
									<span class="addrBox">
										<span class="addr">제목 : ${list.questionsTitle } </span>
										<span class="arrow"></span>
										<span class="addr"></span>
									</span>
								</div>
							</div>
							<c:choose>
								<c:when test="${list.questionsAnswerState eq '답변완료'}">
									<div class="stateBox">
										<span class="state on">답변완료</span>
									</div>
								</c:when>
								<c:when test="${list.questionsAnswerState eq '미답변'}">
									<div class="stateBox">
										<span class="state ">미답변</span>
									</div>
								</c:when>
							</c:choose>
						</a>
					</c:forEach>
				</div><br><br>
					<div id="pageNavi" style="text-align: center;">${pageNavi}</div>
		</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
	<script src="<c:url value="/guest/js/mypage/move.js"/>"></script>
</div>
</body>
</html>