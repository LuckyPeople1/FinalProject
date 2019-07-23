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
					<span class="tit">방문 관리</span>
				</div>
				<div class="moveListBox">
					<c:forEach var="list" items="${list}" varStatus="i">
						<c:choose>
							<c:when test="${list.shopReservationState eq '예약대기' or list.shopReservationState eq '예약완료'}">
								<a href="/shop/itemView?shopItemIdx=${list.shopItemIdx }" class="moveBox on atag">
							</c:when>
							<c:otherwise>
								<a href="/shop/itemView?shopItemIdx=${list.shopItemIdx }" class="moveBox off">
							</c:otherwise>
						</c:choose>
							<div class="moveInfo">
								<div class="top">
									<span class="dateBox">
										예약신청일 : <fmt:parseDate value="${list.shopReservationDate}" var="dateFmt" pattern="yyyy-MM-dd"/>
										<fmt:formatDate value="${dateFmt}" pattern="yyyy-MM-dd"/>
									</span>
									<span class="timeBox">중개소명 : ${list.shopName}</span>
									<span class="hopeBox">[담당자 : ${list.shopItemManager }]</span>
								</div>
								<div class="bottom">
									<span class="addrBox">
										<span class="addr">매물번호 : ${list.shopItemIdx } </span>
										<span class="arrow">▶▶▶</span>
										<span class="addr">매물제목 : ${list.shopItemTitle }</span>
									</span>
								</div>
							</div>
							<c:choose>
								<c:when test="${list.shopReservationState eq '예약대기'}">
									<div class="stateBox">
										<span class="state on">예약대기</span>
										<button type="button" class="state" name="reserDel" style="border: none" value="${list.shopReservationIdx }">예약취소</button>
									</div>
								</c:when>
								<c:when test="${list.shopReservationState eq '예약완료'}">
									<div class="stateBox">
										<span class="state on">예약 완료</span>
									</div>
								</c:when>
								<c:when test="${list.shopReservationState eq '상담완료'}">
									<div class="stateBox">
										<span class="state">상담 완료</span>
									</div>
								</c:when>
								<c:when test="${list.shopReservationState eq '예약취소'}">
									<div class="stateBox">
										<span class="state">예약 취소</span>
									</div>
								</c:when>
							</c:choose>
						</a>
					</c:forEach>
				</div>
			<div class="movePaging">
				${pageNavi }
			</div>
		</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
	<script>
		$("button[name='reserDel']").click(function(){
			var idx = $(this).val();
			$(".atag").removeAttr("href");
			if(confirm("예약취소하시겠습니까?")){
				location.href="/my/reservationDel?shopReservationIdx="+idx;
				return;
			}
		});
	</script>
	<script src="<c:url value="/guest/js/mypage/move.js"/>"></script>
</div>
</body>
</html>