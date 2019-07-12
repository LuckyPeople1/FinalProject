<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
	<div class="contents">
		<section class="mypage inner">
			<div class="sectionTitle">MY 다싸</div>
			
			<!-- 탭메뉴 -->
			<jsp:include page="/WEB-INF/views/guest/mypage/page/myTab.jsp"/>
			
			<!-- 컨텐츠 시작 -->
			<div class="mypageCon move">
				<div class="auctionInfoBg">입찰 상세정보</div>
				<div class="auctionDetailInfo">
					<div class="profileBox">
						<div class="profile">
							<c:if test="${not empty item.proFilepath }">
								<img src="${item.proFilepath }" alt="프로필">
							</c:if>
							<c:if test="${empty item.proFilepath }">
								<img src="/guest/img/img_profile_default.png" alt="프로필">
							</c:if>
						</div>
					</div>
					<div class="driverBox">
						<div class="driverName">${item.userName } 기사님</div>
						<div class="driverCount">평점 ${item.star } 점 &nbsp / &nbsp 리뷰 ${item.reviewCount } 건</div>
						<div class="auctionPrice">견적가 : ${item.estimateAmount }원</div>
					</div>
					<div class="driverIntro">
						${item.userIntroduce }
					</div>
					<div class="driverMemo">
						<div class="memoTit">메모사항</div>
						<div class="memoCon">${item.driverMessage }</div>
					</div>
					<div class="detailBox">
						<div class="detailTit">상세정보</div>
						<div class="detailCon">
							<div class="row">
								<div class="tit">이동거리</div>
								<div class="txt">17.6Km</div>
								<div class="sub">출발지와 도착지 사이 거리를 고려하여 이사 견적이 책정되었습니다.</div>
							</div>
							<div class="row">
								<div class="tit">이사타입</div>
								<div class="txt">반포장 이사</div>
								<div class="sub">고객님과 기사님이 함께 짐을 포장하고, 짐 이동은 기사님께서 맡아 주시는 이사 방법 입니다.</div>
							</div>
							<div class="row">
								<div class="tit">운전 차량</div>
								<div class="txt">${item.userCar}</div>
								<div class="sub">기사님이 운영하시는 기본 차량 용적 정보입니다.</div>
							</div>
							<div class="row">
								<div class="tit">사다리비용</div>
								<div class="txt accent">${item.ladderState == '0' ? '포함' : '별도로 필요함'}</div>
								<div class="sub">
									${item.ladderState == '0' ? '견적에 사다리 비용이 포함되어 있습니다.' : '견적에 사다리 비용이 포함되어 있지 않습니다. 사다리 차 비용은 일반적으로 8~10만원 가량이며,<br/>정확한 비용은 기사님에게 문의하시기 바랍니다.'}
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="mypageBtnBox">
					<a href="/my/" class="btn col_darkGrey f_w big">뒤로가기</a>
					<a href="javascript:move.payment('${user.userEmail}','${user.userName}','${user.userPhone}','${user.userAddr}','${user.addrCode}','${item.applyIdx }','${item.driverIdx }','${item.estimateAmount }');" class="btn col_main f_w big">결제하기</a>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
	<script src="<c:url value="/guest/js/mypage/move.js"/>"></script>
</div>
</body>
</html>