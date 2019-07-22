<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="container">
	<!-- gnb -->
	<%@include file="/WEB-INF/views/manage/common/header.jsp"%>
	<div class="wrapper">
		<!-- lnb -->
		<%@include file="/WEB-INF/views/manage/sale/page/saleNav.jsp"%>

		<div class="contents">
			<section class="saleMoveInfo">
				<div class="page_header">
					<div class="page_title">이사 결제내역 상세보기</div>
					<div class="page_sub_title"></div>
				</div>
				<ul class="tabs_group clearfix">
					<li><br> <a href="/driver/auctionDetail" class="on">기본정보</a>
					</li>
				</ul>

				<div class="section">
					<div class="section_title">사용자정보</div>
					<hr>

					<div class="set_form">
						<table class="table_set">
							<colgroup>
								<col width="180">
								<col width="*">
								<col width="180">
								<col width="*">
							</colgroup>
							<thead></thead>
							<tbody>
								<tr>
									<th>이름</th>
									<td colspan="3">${smData.smVO.guestName }</td>
								</tr>
								<tr>
									<th>이사날짜</th>
									<td>${smData.smVO.applyDate }</td>
									<th>휴대폰번호</th>
									<td>${smData.smVO.guestPhone }</td>
								</tr>
								<tr>
									<th>출발지 도로명주소</th>
									<td>${smData.smVO.startAddr1 }</td>
									<th>도착지 도로명주소</th>
									<td>${smData.smVO.endAddr1 }</td>
								</tr>
								<tr>
									<th>출발지 지번주소</th>
									<td>${smData.smVO.startAddr2}</td>
									<th>도착지 지번정보</th>
									<td>${smData.smVO.endAddr2}</td>
								</tr>
								<tr>
									<th>출발지 상세정보</th>
									<td>${smData.smVO.startAddr3}</td>
									<th>도착지 상세정보</th>
									<td>${smData.smVO.endAddr3}</td>
								</tr>
								<tr>
									<th>출발지 엘레베이터유무</th>
									<td>${smData.smVO.startElevator }</td>
									<th>도착지 엘레베이터 유무</th>
									<td>${smData.smVO.endElevator }</td>
								</tr>
								<tr>
									<th>출발지 주차 유무</th>
									<td>${smData.smVO.startParking }</td>
									<th>도착지 주차 유무</th>
									<td>${smData.smVO.endParking }</td>
								</tr>
								<tr>
									<th>출발지 집형태</th>
									<td>${smData.smVO.startType }</td>
									<!--start_type   -->
									<th rowspan="1">도착지 집형태</th>
									<td>${smData.smVO.endType }</td>
								</tr>
								<tr>
									<th>출발지 방구조</th>
									<td colspan="3">${smData.smVO.startStructure }</td>
									<!--start_structure  -->
								</tr>
								<tr>
									<th>출발지 집평수</th>
									<td colspan="3">${smData.smVO.startSize }</td>
									<!--start_size    -->
								</tr>
								<tr>
									<th>출발지 층수</th>
									<td>${smData.smVO.startFloor}</td>
									<!--start_floor   -->
									<th>도착지 층수</th>
									<td>${smData.smVO.endFloor }</td>
								</tr>

								<tr>
									<th>이사 시작 시간</th>
									<td>${smData.smVO.applyTime }</td>
									<th>이사종류</th>
									<td>${smData.smVO.applyHope }</td>
								</tr>
								<tr>
									<th>도움여부(짐을 함께 옮길사람여부)</th>
									<td colspan="3">${smData.smVO.applyHelp }</td>

								</tr>
								<tr>
									<th>메모</th>
									<td colspan="3">${smData.smVO.applyMemo }</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="section">
					<div class="section_title">상세정보</div>
					<hr>
					<br>
					<div class="driverPont">
						<p3>이사사진</p3>
					</div>
					<br>
					<div class="set_form">
						<div class="table_set">
							<div>
								<c:forEach items="${smData.imgList }" var="DriverApplyImg"
									varStatus="i">
									<div class="img_upload">
										<img src="${DriverApplyImg.imgPath }" style="width: 100%; height: 100%;">
									</div>
								</c:forEach>
							</div>
						</div>
						<br> <br> <br>
						<div class="driverPont">
							<p3>짐정보</p3>
						</div>
						<br>
						<hr>
						<div class="infoBox">
							<c:forEach items="${smData.optionList }" var="DriverAuctionDetail"
								varStatus="i">
								<c:if test="${DriverAuctionDetail.packageType eq 0 }">
									<ul class="infoListBox">
										<li class="bg">
											<div class="row static">
												<div class="subject">가전</div>
											</div>
										</li>
										<li class="package">
											<div class="row">
												<div class="subject">
													<img src="${DriverAuctionDetail.packageImgPath }"
														width="70px">
												</div>
												<div class="con">
													<div class="packageName">${DriverAuctionDetail.packageName }</div>
													<div class="packageOption">옵션${DriverAuctionDetail.packageOption }</div>
												</div>
											</div>
										</li>
									</ul>
								</c:if>
								<c:if test="${DriverAuctionDetail.packageType eq 1 }">
									<ul class="infoListBox">
										<li class="bg">
											<div class="row static">
												<div class="subject">가구</div>
											</div>
										</li>
										<li class="package">
											<div class="row">
												<div class="subject">
													<img src="${DriverAuctionDetail.packageImgPath }"
														width="70px">
												</div>
												<div class="con">
													<div class="packageName">${DriverAuctionDetail.packageName }</div>
													<div class="packageOption">옵션${DriverAuctionDetail.packageOption }</div>
												</div>
											</div>
										</li>
									</ul>
								</c:if>
								<c:if test="${DriverAuctionDetail.packageType eq 2 }">
									<ul class="infoListBox">
										<li class="bg">
											<div class="row static">
												<div class="subject">기타</div>
											</div>
										</li>
										<li class="package">
											<div class="row">
												<div class="subject">
													<img src="${DriverAuctionDetail.packageImgPath }"
														width="70px">
												</div>
												<div class="con">
													<div class="packageName">${DriverAuctionDetail.packageName }</div>
													<div class="packageOption">옵션${DriverAuctionDetail.packageOption }</div>
												</div>
											</div>
										</li>
									</ul>
								</c:if>
								<c:if test="${DriverAuctionDetail.packageType eq 3 }">
									<ul class="infoListBox">
										<li class="bg">
											<div class="row static">
												<div class="subject">짐박스</div>
											</div>
										</li>
										<li class="">
											<div class="row">
												<div class="subject">
													<img src="${DriverAuctionDetail.packageImgPath }"
														width="70px">
												</div>
												<div class="con">
													<div class="packageName">${DriverAuctionDetail.packageName }</div>
													<div class="packageOption">옵션${DriverAuctionDetail.packageOption }</div>
												</div>
											</div>
										</li>
									</ul>
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>
				<br> <br> <br>
				<div class="section_title">기사정보</div>
				<hr>
				<div class="section">
					<div class="set_form">
						<table class="table_set">
							<colgroup>
								<col width="180">
								<col width="*">
								<col width="180">
								<col width="*">
							</colgroup>
							<thead></thead>
							<tbody>
								<tr>
									<th>이름</th>
									<td>${smData.smVO.driverName }</td>
									<th>전화번호</th>
									<td>${smData.smVO.driverPhone }</td>
								</tr>
								<tr>
									<th>운반차량</th>
									<td>${smData.smVO.userCar }</td>
									<th>사다리비용여부</th>
									<c:if test="${smData.smVO.ladderState ==1 }">
										<td>필요함</td>
									</c:if>
									<c:if test="${smData.smVO.ladderState !=1 }">
										<td>필요없음</td>
									</c:if>
								</tr>
								<tr>
									<th>메모</th>
									<td>${smData.smVO.driverMessage }</td>
									<th>견적 금액</th>
									<td>${smData.smVO.estimateAmount }</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<br> <br> <br>
				<div class="section_title">결제 내역</div>
				<hr>
				<div class="section">
					<div class="set_form">
						<table class="table_set">
							<colgroup>
								<col width="180">
								<col width="*">
								<col width="180">
								<col width="*">
							</colgroup>
							<thead></thead>
							<tbody>
								<tr>
									<th>결제 고유 ID</th>
									<td>${smData.smVO.movePaymentImpUid }
										(${smData.smVO.movePaymentMerchantUid })
										
									</td>
									<th>결제 종류</th>
									<c:if test="${smData.smVO.movePaymentPayMethod =='card'}">
									<td>신용카드(${smData.smVO.movePaymentCardName})</td>
									</c:if>
								</tr>
								<tr>
									<th>PG사</th>
									<c:if test="${smData.smVO.movePaymentPg == 'html5_inicis' }">
									<td>이니시스</td>
									</c:if>
									<th>PG승인번호</th>
									<td>${smData.smVO.movePaymentPgNumber }</td>
								</tr>
								<tr>
									<th>결제 일시</th>
									<td><fmt:formatDate value="${smData.smVO.movePaymentDate }"
										pattern="yyyy-MM-dd hh:mm:ss" /></td>
									<th>결제 금액</th>
									<td>${smData.smVO.movePaymentAmount }</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="btn_box">
			<a href="javascript:history.back()" class="btn col_darkGrey">뒤로
				가기</a>
		</div>
			</section>
		</div>
		
		
	</div>
</div>
</body>
</html>