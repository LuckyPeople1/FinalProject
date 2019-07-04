<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="saleInLots">
			<article class="saleInLotsHeader">
				<a href="/saleInLots/saleInLotsInformation" class="active">분양정보</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsThema">테마분양</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsSchedule">분양일정</a>
				<div class="header"></div>
				<a href="#none">분양뉴스</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsProcess">분양가이드</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsBrand">브랜드관</a>
			</article>
		</section>
		<section class="saleInLotsInformation">
			<div class="fppZhw">
				<div class="bkDIiM">
					<div class="kBjcek">
						<p class="juHLCg">분양정보</p>
						<div class="dVmoLS">
							<div class="styled__Wrap-j3aqzi-0 bFqGwy" tabindex="0">
								<div class="styled__Btn-j3aqzi-1 jWSbuk">
									<span>전국</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
							</div>
							<div class="styled__Wrap-j3aqzi-0 bFqGwy" tabindex="0">
								<div class="styled__Btn-j3aqzi-1 jWSbuk">
									<span>건물유형</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
							</div>
							<div class="styled__Wrap-j3aqzi-0 bFqGwy" tabindex="0">
								<div class="styled__Btn-j3aqzi-1 jWSbuk">
									<span>분양단계</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
							</div>
							<div class="styled__Wrap-j3aqzi-0 bFqGwy" tabindex="0">
								<div class="styled__Btn-j3aqzi-1 jWSbuk">
									<span>분양일정</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
							</div>
							<div class="styled__Wrap-j3aqzi-0 bFqGwy" tabindex="0">
								<div class="styled__Btn-j3aqzi-1 jWSbuk">
									<span>공급유형</span>
									<svg width="11" height="7" viewBox="0 0 11 7">
										<path fill="none" fill-rule="evenodd" stroke-width="1.5" d="M.658 1.021l4.537 4.263 4.463-4.263"></path>
									</svg>
								</div>
							</div>
						</div>
						<div class="jVcCQd">
							<p class="eChwwH">
								분양목록
								<span>총<b>123</b>건</span>
							</p>
							<table class="faDGTo">
								<colgroup>
									<col style="width: 115px;">
									<col style="width: 120px;">
									<col style="width: 110px;">
									<col style="width: 450px;">
									<col style="width: 130px;">
									<col style="width: 115px;">
									<col style="width: 140px;">
								</colgroup>
								<thead>
									<tr>
										<th>단계</th>
										<th>건물유형</th>	
										<th>공급유형</th>
										<th>단지명/ 위치</th>
										<th>분양가</th>
										<th>세대수</th>
										<th>전용면적</th>								
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>
											<p class="styled__Tag-junnno-9 zZipP">분양예정</p>
										</td>
										<td>
											<p class="styled__Text-junnno-3 hISOyr">오피스텔</p>
										</td>
										<td>
											<p class="styled__Text-junnno-3 hISOyr">민간분양</p>
										</td>
										<td>
											<div class="styled__SaleInfoWrap-junnno-4 iovIKz">
												<div class="styled__SaleInfo-junnno-6 jLUpZe">
													<p class="styled__SalesName-junnno-7 CUsXA">뚱발 패션하우스</p>
													<p class="styled__SalesText-junnno-8 hLVydO">경기도 파주시 문산읍</p>
													<p class="styled__SalesText-junnno-8 hLVydO" style="margin-top: 17px;">19년 상반기 모집공고</p>
												</div>
												<div class="styled__SaleImg-junnno-5 bvCXMa"></div>
											</div>
										</td>
										<td>
											<p class="styled__Text-junnno-3 hISOyr">준비중</p>
										</td>
										<td>
											<p class="styled__Text-junnno-3 hISOyr">1094세대</p>
										</td>
										<td>
											<p class="styled__Text-junnno-3 hISOyr" style="padding: 0px 13px;">19 ㎡ / 34㎡</p>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						
					</div>
				</div>
			</div>
		</section>
	</div>
</div>
</body>
</html>