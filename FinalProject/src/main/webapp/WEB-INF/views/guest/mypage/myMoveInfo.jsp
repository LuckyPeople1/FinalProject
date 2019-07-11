<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
	<div class="contents">
		<section class="mypage moveStep inner">
			<div class="sectionTitle">MY 다싸</div>
			
			<!-- 탭메뉴 -->
			<jsp:include page="/WEB-INF/views/guest/mypage/page/myTab.jsp"/>
			
			<!-- 컨텐츠 시작 -->
			<div class="mypageCon move ">
				<div class="auctionInfoBg">이사 상세정보</div>
				
				<!-- 기사 정보 -->
				<div class="auctionDetailInfo">
					<div class="profileBox">
						<div class="profile">
							<img src="/guest/img/img_profile_default.png" alt="프로필">
						</div>
					</div>
					<div class="driverBox">
						<div class="driverName">유성연 기사님</div>
						<div class="driverCount">평점 4.5 &nbsp / &nbsp 리뷰 15건</div>
						<div class="auctionPrice">견적가 : 150,000원</div>
					</div>
					<div class="driverIntro">
						자기소개서
					</div>
					
					<!-- 기사가 배정되지 않았을 때 표시하지 않음 -->
					<div class="driverMemo">
						<div class="memoTit">메모사항</div>
						<div class="memoCon">메모내용</div>
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
								<div class="txt">트럭 (1톤)/카고 자바라호루3단</div>
								<div class="sub">기사님이 운영하시는 기본 차량 용적 정보입니다.</div>
							</div>
							<div class="row">
								<div class="tit">사다리비용</div>
								<div class="txt accent">별도로 필요함</div>
								<div class="sub">
									견적에 사다리 비용이 포함되어 있지 않습니다. 사다리 차 비용은 일반적으로 8~10만원 가량이며,<br/>정확한 비용은 기사님에게 문의하시기 바랍니다.
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 이사 정보 -->
				<div class="applyGroup">
					<div class="applyTitle">신청정보</div>
					<div class="infoBox">
						<div class="infoTitle">출발/도착지 정보</div>
						<ul class="infoListBox">
							<li>
								<div class="row">
									<div class="subject">현재 집</div>
									<div class="con">
										<div class="addr">${startInfo.addr1} ${startInfo.addr3}</div>
										<div class="addrInfo">
											${startInfo.type}·${startInfo.structure}·${startInfo.size}
										</div>
										<div class="addrInfo">
											${startInfo.floor}·${startInfo.elevator == "Y" ? '엘리베이터 O' : '엘리베이터 X'}·${startInfo.parking == "Y" ? '주차 가능' : '주차 불가'}
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="row">
									<div class="subject">이사 갈 집</div>
									<div class="con">
										<div class="addr">${endInfo.addr1} ${endInfo.addr3}</div>
										<div class="addrInfo">
											${endInfo.type}·${endInfo.floor}
										</div>
										<div class="addrInfo">
											${endInfo.elevator == "Y" ? '엘리베이터 O' : '엘리베이터 X'}·${endInfo.parking == "Y" ? '주차 가능' : '주차 불가'}
										</div>
									</div>
								</div>
							</li>
						
						</ul>
					
					</div>
					<div class="infoBox">
						<div class="infoTitle">이사 시간 및 고객 도움</div>
						<ul class="infoListBox">
							<li>
								<div class="row">
									<div class="subject">이사날짜</div>
									<div class="con">
										<div class="addr">${scheduleInfo.date}</div>
									</div>
								</div>
							</li>
							<li>
								<div class="row">
									<div class="subject">이사시간</div>
									<div class="con">
										<div class="addr">${scheduleInfo.time}</div>
									</div>
								</div>
							</li>
							<c:if test="${scheduleInfo.moveHelp == 'Y'}">
								<li>
									<div class="row">
										<div class="subject">고객도움 있음</div>
										<div class="con">기사님과 무거운짐(냉장고, 세탁기등)을 함께 옮길 사람이 있습니다. (본인포함)</div>
									</div>
								</li>
							</c:if>
						</ul>
					
					</div>
					<div class="infoBox">
						<div class="infoTitle">이사 종류</div>
						<ul class="infoListBox">
							<li class="bg">
								<div class="row">
									<div class="subject">${scheduleInfo.moveHope}</div>
									<div class="con">
										<div class="hope">
											<c:choose>
												<c:when test="${scheduleInfo.moveHope == '차량만'}">
													기사님이 목적지로의 운전만 진행합니다.
												</c:when>
												<c:when test="${scheduleInfo.moveHope == '일반'}">
													기사님이 포장 된 짐을 목적지 공간까지 이동/운반 합니다.
												</c:when>
												<c:when test="${scheduleInfo.moveHope == '반포장'}">
													기사님이 이용자님과 포장을 함께 진행하여, 도착지에서 가구배치까지 진행합니다.
												</c:when>
												<c:when test="${scheduleInfo.moveHope == '포장'}">
													기사님이 모든 이사 과정을 진행합니다.
												</c:when>
											</c:choose>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<div class="hopeInfo">
							<c:choose>
								<c:when test="${scheduleInfo.moveHope == '차량만'}">
									<div class="hopeTitle">
										<span class="accent">중요!</span> 차량만 고객님 필수 진행 사항
									</div>
									<div class="hopeText">
										1. 이사 전까지 모든 포장을 완료해야합니다.<br/>
										2. 이사 시간에 맞춰 차량이 주차 될 곳에 짐을 모두 내려놓아야합니다.<br/>
										3. 차량 적재함에 짐을 옮겨야합니다.<br/>
										4. 도착지에서 짐을 하차해야합니다.<br/>
										5. 이후 이사를 직접 마무리 합니다.
									</div>
								</c:when>
								<c:when test="${scheduleInfo.moveHope == '일반'}">
									<div class="hopeTitle">
										<span class="accent">중요!</span> 일반 고객님 필수 진행 사항
									</div>
									<div class="hopeText">
										1. 이사 전까지 모든 포장을 완료해야합니다.<br/>
										2. 기사님이 목적지까지 운반한 짐을 확인합니다. (운반을 돕기로 협의 된 경우 운반과정에 동참해야합니다.)<br/>
										3. 이후 이사를 직접 마무리 합니다.
									</div>
								</c:when>
								<c:when test="${scheduleInfo.moveHope == '반포장'}">
									<div class="hopeTitle">
										<span class="accent">중요!</span> 반포장 고객님 필수 진행 사항
									</div>
									<div class="hopeText">
										1. 이사 전까지 귀중품 및 고가의 상품은 별도로 체크/보관 해야합니다.<br/>
										2. 제공 된 박스로 함께 포장을 진행합니다.<br/>
										3. 기사님이 목적지까지 운반한 짐을 확인합니다. (운반을 돕기로 협의 된 경우 운반과정에 동참해야합니다.)<br/>
										4. 도착지에서 가구가 배치될 곳을 안내합니다.<br/>
										5. 박스의 잔 짐은 직접 정리해야합니다.<br/>
										6. 이후 이사를 직접 마무리 합니다.
									</div>
								</c:when>
								<c:when test="${scheduleInfo.moveHope == '포장'}">
									<div class="hopeTitle">
										<span class="accent">중요!</span> 포장 고객님 필수 진행 사항
									</div>
									<div class="hopeText">
										1. 이사 전까지 귀중품 및 고가의 상품은 별도로 체크/보관 해야합니다.<br/>
										2. 기사님이 목적지까지 운반한 짐을 확인합니다.<br/>
										3. 도착지에서 가구와 짐이 배치될 곳을 안내합니다.<br/>
										4. 완료 된 이사를 기사님과 함께 검수합니다.
									</div>
								</c:when>
							</c:choose>
						</div>
					</div>
					<div class="infoBox">
						<div class="infoTitle">짐 정보</div>
						<c:set var="count0" value="0"/>
						<c:forEach items="${packageOptionList}" var="item" varStatus="status">
							<c:if test="${item.packageType == 0}">
								<c:set var="count0" value="${count0+1}"/>
							</c:if>
						</c:forEach>
						<c:if test="${count0 != 0}">
							<ul class="infoListBox">
								<li class="bg">
									<div class="row static">
										<div class="subject">가전</div>
									</div>
								</li>
								<c:forEach items="${packageOptionList}" var="item">
									<c:if test="${item.packageType == 0}">
										<li class="package">
											<div class="row">
												<div class="subject">
													<img src="${item.packageImgPath}" alt="이미지">
												</div>
												<div class="con">
													<div class="packageName">${item.packageName}</div>
													<div class="packageOption">${item.packageOption}</div>
												</div>
											</div>
										</li>
									</c:if>
								</c:forEach>
							</ul>
						</c:if>
						<c:set var="count1" value="0"/>
						<c:forEach items="${packageOptionList}" var="item" varStatus="status">
							<c:if test="${item.packageType == 1}">
								<c:set var="count0" value="${count1+1}"/>
							</c:if>
						</c:forEach>
						<c:if test="${count1 != 0}">
							<ul class="infoListBox">
								
								<li class="bg">
									<div class="row static">
										<div class="subject">가구</div>
									</div>
								</li>
								<c:forEach items="${packageOptionList}" var="item">
									<c:if test="${item.packageType == 1}">
										<li class="package">
											<div class="row">
												<div class="subject">
													<img src="${item.packageImgPath}" alt="이미지">
												</div>
												<div class="con">
													<div class="packageName">${item.packageName}</div>
													<div class="packageOption">${item.packageOption}</div>
												</div>
											</div>
										</li>
									</c:if>
								</c:forEach>
							</ul>
						</c:if>
						<c:set var="count2" value="0"/>
						<c:forEach items="${packageOptionList}" var="item" varStatus="status">
							<c:if test="${item.packageType == 2}">
								<c:set var="count0" value="${count2+1}"/>
							</c:if>
						</c:forEach>
						<c:if test="${count2 != 0}">
							<ul class="infoListBox">
								
								<li class="bg">
									<div class="row static">
										<div class="subject">가구</div>
									</div>
								</li>
								<c:forEach items="${packageOptionList}" var="item">
									<c:if test="${item.packageType == 2}">
										<li class="package">
											<div class="row">
												<div class="subject">
													<img src="${item.packageImgPath}" alt="이미지">
												</div>
												<div class="con">
													<div class="packageName">${item.packageName}</div>
													<div class="packageOption">${item.packageOption}</div>
												</div>
											</div>
										</li>
									</c:if>
								</c:forEach>
							</ul>
						</c:if>
						<ul class="infoListBox">
							<li class="bg">
								<div class="row static">
									<div class="subject">짐박스</div>
								</div>
							</li>
							<li class="">
								<div class="row">
									<div class="subject">제품이미지</div>
									<div class="con">
										<div class="packageName">상품명</div>
										<div class="packageOption">옵션..</div>
									</div>
								</div>
							</li>
						</ul>
						<ul class="infoListBox">
							<li class="bg">
								<div class="row static">
									<div class="subject">사진정보</div>
								</div>
							</li>
							<li class="">
								<div class="imgList">
									<c:forEach items="${sessionScope.imgList}" var="img">
										<div class="imgBox">
											<img src="${img.imgPath}" alt="이미지">
										</div>
									</c:forEach>
								</div>
							</li>
						</ul>
						<ul class="infoListBox">
							<li class="bg">
								<div class="row static">
									<div class="subject">메모</div>
								</div>
							</li>
							<li class="memoCon">
								입력한 메모내용...
							</li>
						</ul>
					</div>
				
				</div>
				
				<!-- 결제 정보 -->
				<div class="applyGroup">
					<div class="applyTitle">결제정보</div>
					<div class="infoBox">
						<ul class="infoListBox">
							<li>
								<div class="row">
									<div class="subject">결제수단</div>
									<div class="con">
										<div class="">신용카드 / 현대카드 (4212 - **** - **** - ****) / 일시불</div>
									</div>
								</div>
							</li>
							<li>
								<div class="row">
									<div class="subject">결제방법</div>
									<div class="con">
										<div class="">일시불</div>
									</div>
								</div>
							</li>
							<li>
								<div class="row">
									<div class="subject">결제일시</div>
									<div class="con">
										<div class="">2019-05-22 12:22:22</div>
									</div>
								</div>
							</li>
							<li>
								<div class="row">
									<div class="subject">취소일시</div>
									<div class="con">
										<div class="">2019-05-22 12:22:22</div>
									</div>
								</div>
							</li>
						</ul>
					
					</div>
				
				</div>
				
				<div class="mypageBtnBox">
					<a href="javascript:history.back()" class="btn col_darkGrey f_w big">뒤로가기</a>
					
					<!-- 완료된 이사건에 대해서 표시 하지 않음 -->
					<a href="#none" class="btn col_main f_w big">결제취소</a>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
	<script src="<c:url value="/guest/js/mypage/move.js"/>"></script>
</div>
</body>
</html>