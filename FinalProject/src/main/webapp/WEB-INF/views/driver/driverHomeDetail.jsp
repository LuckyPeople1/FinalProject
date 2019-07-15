<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일-->
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/driver/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/driver/page/nav_shop.jsp" %>    <!--맨왼쪽 2번째 네비 메뉴 (입찰관리)  -->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">이사 입찰 상세보기</div>
			<div class="page_sub_title"></div>
		</div>
		<ul class="tabs_group clearfix">
			<li>
				<br>
				<a href="/driver/auctionDetail" class="on">기본정보</a>
			</li>
		</ul>
		<section class="driver ys">
			<div class="section">
				<div class="section_title">사용자정보</div><hr>
			
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
							<td colspan="3">
								<label><input class="tbox" type="text" value="${driverAuctionDetail.guestName }" readonly="readonly"></label>
							</td>
						</tr>
						<tr>
							<th>이사날짜</th>
							<td><input class="tbox full" type="text" value="${driverAuctionDetail.applyDate }" readonly="readonly"></td>
							<th>휴대폰번호</th>
							<td><input class="tbox full" type="text" value="${driverAuctionDetail.guestPhone }" readonly="readonly"></td>
						</tr>
						<tr>
							<th>출발지 도로명주소</th>
							<td><input class="tbox full" value="${driverAuctionDetail.startAddr1 }" readonly="readonly"></td>	
							<th>도착지 도로명주소</th>
							<td><input class="tbox full" value="${driverAuctionDetail.endAddr1 }" readonly="readonly"></td>
						</tr>
						<tr>
							<th>출발지 지번주소</th>
							<td><input class="tbox full" value="${driverAuctionDetail.startAddr2}" readonly="readonly"></td>
							<th>도착지 지번정보</th>
							<td><input class="tbox full" value="${driverAuctionDetail.endAddr2}" readonly="readonly"></td>
						</tr>
						<tr>
							<th>출발지 상세정보</th>
							<td><input class="tbox full" value="${driverAuctionDetail.startAddr3}" readonly="readonly"></td>
							<th>도착지 상세정보</th>
							<td><input class="tbox full" value="${driverAuctionDetail.endAddr3}" readonly="readonly"></td>
						</tr>
						<tr>
							<th>출발지 엘레베이터유무</th>
							<td><input class="tbox full" value="${driverAuctionDetail.startElevator }" readonly="readonly"></td>
							<th>도착지  엘레베이터 유무</th>
							<td><input class="tbox full" value="${driverAuctionDetail.endElevator }" readonly="readonly"></td>	
						</tr>
						<tr>
							<th>출발지 주차 유무</th>
							<td><input class="tbox full" value="${driverAuctionDetail.startParking }" readonly="readonly"></td>
							<th>도착지  주차 유무</th>
							<td><input class="tbox full" value="${driverAuctionDetail.endParking }" readonly="readonly"></td>	
						</tr>
						<tr>
							<th>출발지 집형태</th>
							<td><input class="tbox full" value="${driverAuctionDetail.startType }" readonly="readonly"></td> <!--start_type   -->
							<th rowspan="1">도착지  집형태</th>
							<td><input class="tbox full" value="${driverAuctionDetail.endType }" readonly="readonly"></td>	
						</tr>
						<tr>
							<th>출발지 방구조</th>
							<td colspan="3"><input class="tbox full" value="${driverAuctionDetail.startStructure }" readonly="readonly"></td>	<!--start_structure  -->
						</tr>
						<tr>
							<th>출발지 집평수</th>
							<td colspan="3"><input class="tbox full" value="${driverAuctionDetail.startSize }" readonly="readonly"></td>	<!--start_size    -->
						</tr>
						<tr>
							<th>출발지 층수</th>
							<td><input class="tbox full" value="${driverAuctionDetail.startFloor}" readonly="readonly"></td><!--start_floor   -->
							<th>도착지 층수</th>
							<td><input class="tbox full" value="${driverAuctionDetail.endFloor }" readonly="readonly"></td>	
						</tr>
						
						<tr>
							<th>이사 시작 시간</th>
							<td>
								<input type="text" value="${driverAuctionDetail.applyTime }" readonly="readonly">
							</td>
							<th>이사종류</th>
							<td><input type="text" value="${driverAuctionDetail.applyHope }" readonly="readonly"></td>
						</tr>
						<tr>
							<th>도움여부(짐을 함께 옮길사람여부)</th>
							<td colspan="3"><input type="text" value="${driverAuctionDetail.applyHelp }" readonly="readonly"></td>
						
						</tr>
						<tr>
							<th>메모</th>
							<td colspan="3"><textarea  readonly="readonly">${list[0].applyMemo } </textarea></td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="section">
				<div class="section_title">상세정보</div><hr><br>
				<div class="driverPont"><p3>이사사진</p3></div><br>
				<div class="set_form">
					<div class="table_set">
						<div>
							<c:forEach items="${imgList }" var="DriverApplyImg" varStatus="i">	
								<div class="img_upload">
									<input type="file" name="img_'+i+'" id="img_'+i+'" class="hide" onchange="img_change(this)">
									<a href="#none" class="imgUp" id="imgUp_'+i+'"><img  src="${DriverApplyImg.imgPath }"></a>
								</div>
							</c:forEach>	
						</div>		
					</div>
					<br><br><br>
					<div class="driverPont"><p3>짐정보</p3></div><br><hr>
					<div class="infoBox">
						<div class="infoTitle"></div>
					<c:if test="${optionList[0].packageType eq 0 }" >
						<c:forEach items="${optionList }" var="DriverAuctionDetail" varStatus="i">
							<ul class="infoListBox">
								<li class="bg">
									<div class="row static">
										<div class="subject">가전</div>
									</div>
								</li>
								<li class="package">
									<div class="row">
										<div class="subject">제품이미지${DriverAuctionDetail.packageImgPath }</div>
										<div class="con">
											<div class="packageName">상품명${DriverAuctionDetail.packageName }</div>
											<div class="packageOption">옵션${DriverAuctionDetail.packageOption }</div>
										</div>
									</div>
								</li>
							</ul>
						</c:forEach>
					</c:if>
					<c:if test="${optionList[0].packageType eq 1 }" >
						<c:forEach items="${optionList }" var="optionList" varStatus="i">
							<ul class="infoListBox">
								<li class="bg">
									<div class="row static">
										<div class="subject">가구</div>
									</div>
								</li>
								<li class="package">
									<div class="row">
										<div class="subject" >제품이미지 ${optionList[0].packageImgPath }</div>
										<div class="con">
											<div class="packageName">상품명${optionList[0].packageName }</div>
											<div class="packageOption">옵션${optionList[0].packageOption }</div>
										</div>
									</div>
								</li>
							</ul>
						</c:forEach>
					</c:if>
					<c:if test="${optionList[0].packageType eq 2 }" >
						<c:forEach items="${optionList }" var="DriverAuctionDetail" varStatus="i">
							<ul class="infoListBox">
								<li class="bg">
									<div class="row static">
										<div class="subject">기타</div>
									</div>
								</li>
								<li class="package">
									<div class="row">
										<div class="subject">제품이미지</div>
										<div class="con">
											<div class="packageName">상품명 ${optionList[0].packageImgPath }</div>
											<div class="packageOption">옵션${optionList[0].packageOption }</div>
										</div>
									</div>
								</li>
							</ul>
						</c:forEach>
					</c:if>	
					<c:if test="${list[0].packageType eq 3 }" >	
						<c:forEach items="${list }" var="DriverAuctionDetail" varStatus="i">
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
											<div class="packageName">상품명${optionList[0].packageImgPath }</div>
											<div class="packageOption">옵션${optionList[0].packageOption }</div>
										</div>
									</div>
								</li>
							</ul>
						</c:forEach>
					</c:if>	
					</div>
				</div>
			</div>
				<br><br><br>
				<div class="section_title">기사정보</div><hr>
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
								<th>운반차량<span class="ess">*</span></th>
								<td><input class="tbox full" id="userCar" name="userCar" value="${driverVO.userCar }" readonly="readonly"></td>
								<th>사다리비용여부<span class="ess">*</span></th>
								<td>
									<c:if test="${driverVO.ladderState eq 0 }">
									<input type="radio" name="ladderState" value="0" readonly="readonly" checked="checked">사다리 비용 필요하지 않음
									</c:if>
									<c:if test="${driverVO.ladderState eq 1 }">
									<input type="radio" name="ladderState" value="1" readonly="readonly" checked="checked">사다리 비용 필요
									</c:if>
								</td>
							</tr>
							<tr>
								<th>메모</th>
								<td colspan="3">
									<textarea class="text_editor smaller" name="driverMessage"  readonly="readonly">${driverVO.driverMessage }</textarea>
								</td>
							</tr>
							</tbody>
						</table>
						<div class="tip_box">
							<div class="tip">
								<span class="f_red">*</span>표시는 필수 입력 입니다.
							</div>
						</div><br><br><br>
						<div class="section_title">최종 견적</div><hr>
						<div class="infoBox">
							<ul class="infoListBox">
								<li class="bg">
									<div class="row static">
										<div class="subject">견적금액결정</div><br>
										<div><input class="tbox full" name="estimateAmount" value="${driverVO.estimateAmount }" readonly="readonly"></div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>	
		</section>
	</div>
	<%@include file="/WEB-INF/views/driver/common/footer.jsp"%>
</div>
<style>
.request {
    display: table-cell;
    vertical-align: middle;
}
</style>
<script src="/driver/js/shop_setting2.js"></script>
</body>
</html>						