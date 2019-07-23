<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="saleInLots">
			<article class="saleInLotsHeader">
				<a href="/saleInLots/saleInLotsInformation?saleInLotsArea=전국&saleInLotsSupplyType=공급유형&saleInLotsBuildType=건물유형&saleInLotsState=분양단계">분양정보</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsProcess" class="active">분양가이드</a>
				<div class="header"></div>
				<a href="/saleInLots/saleInLotsBrand">브랜드관</a>
			</article>
		</section>
		<section class="saleInLotsProcess">
			<div class="processContent">
				<section class="saleInLotsProcessNav">
					<h1>분양 가이드</h1>
					<div class="processNav">
						<a href="/saleInLots/saleInLotsProcess" class="on">
							<div class="NavText">주택청약철차</div>
						</a>
						<a href="/saleInLots/saleInLotsTerms">
							<div class="NavText">분양용어</div>
						</a> 
						<a href="/saleInLots/saleInLotsFaq">
							<div class="NavText">자주하는 질문</div>
						</a> 
						<a href="/saleInLots/saleInLotsCalculator">
							<div class="NavText">청약가점계산</div>
						</a>
					</div>
				</section>
				<div>
					<div class="wrap">
						
					</div>
					<div class="wrap_content">
						<h1 class="processTitle ${tab == 1 ? 'on' : ''}">
							<div class="title_Label">
								<span>01</span> 청약통장 가입하기
							</div>
							<svg width="14" height="8" viewBox="0 0 14 8">
								<path fill-rule="nonzero"
									d="M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z">
								</path>
							</svg>
						</h1>
						<div class="processContentDetail" style="display:${tab == 1 ? 'block' : 'none' }">
							<h1 class="title">▪ 청약통장 선택</h1>
							<p class="text">2015년 9월 1일부터 청약예금, 청약부금, 청약저축 신규발급이 중단되고,
								3가지 통장의 기능을 모두 모은 주택청약종합저축으로 일원화되었다.</p>
							<br>
							<h1 class="title">▪ 청약통장으로 신청가능한 기본 신청자격</h1>
							<p class="text">- 국민주택 &gt; 청약통장여부와 납입기간, 주택건설지역 거주자, 무주택자 기준</p>
							<p class="text">- 민영주택 &gt; 주택건설지역 거주여부 및 예치금(청약 납입금액)충족 여부</p>
							<br>
							<h1 class="title">▪ 예치금이란?</h1>
							<p class="text">필수적으로 청약통장에 예치되어 있어야 하는 금액.</p>
							<p class="text">주택면적 / 건설지역 별로 기준금액이 달라진다.</p>
							<br>
							<table class="table__base">
								<colgroup>
									<col width="40%">
									<col width="20%">
									<col width="20%">
									<col width="20%">
								</colgroup>
								<thead>
									<tr>
										<th>구분</th>
										<th>서울/부산</th>
										<th>기타광역시</th>
										<th>기타</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>전용면적 85㎡ 이하</td>
										<td class="right_justify">300만원</td>
										<td class="right_justify">250만원</td>
										<td class="right_justify">200만원</td>
									</tr>
									<tr>
										<td>102㎡(약 30.8평) 이하</td>
										<td class="right_justify">600만원</td>
										<td class="right_justify">400만원</td>
										<td class="right_justify">300만원</td>
									</tr>
									<tr>
										<td>102㎡초과 ~ 135㎡이하</td>
										<td class="right_justify">1,000만원</td>
										<td class="right_justify">700만원</td>
										<td class="right_justify">400만원</td>
									</tr>
									<tr>
										<td>135㎡(약 40.8평) 초과</td>
										<td class="right_justify">1,500만원</td>
										<td class="right_justify">1,000만원</td>
										<td class="right_justify">500만원</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="wrap_content">
						<h1 class="processTitle ${tab == 2 ? 'on' : ''}">
							<div class="title_Label">
								<span>02</span> 원하는 주택 찾아보기
							</div>
							<svg width="14" height="8" viewBox="0 0 14 8">
								<path fill-rule="nonzero"
									d="M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z">
								</path>
							</svg>
						</h1>
						<div class="processContentDetail" style="display:${tab == 2 ? 'block' : 'none' }">
							<h1 class="title">· 민영주택이란 민간건설업체가 주택도시기금의 지원 없이 건설하는 주택으로
								민간분양과 민간임대로 나뉜다.</h1>
							<h1 class="title">· 국민주택이란 주택도시기금의 지원을 받아 건설하는 약 25평 이하의
								주택으로 공공분양과 공공임대로 나뉜다.</h1>
							<br>
							<h1 class="title">민간분양</h1>
							<p class="text">민간기업의 주택건설사업자가 주택을 건설하여 분양하는 경우이며, 입주자모집공고일
								현재 해당주택건설지역 또는 인근지역에 거주하는 만 19세 이상인 자여야 신청가능하다.</p>
							<p class="text">단, 배우자 또는 직계존비속인 세대원이 있는 세대주는 만 19세 미만도
								청약가능하다.</p>
							<br>
							<h1 class="title">민간임대(공공지원민간임대주택)</h1>
							<p class="text">역세권·대학 인근 등에 건설되며 특별공급비율을 높여 공공성을 강화한
								민간임대주택이다.</p>
							<br>
							<h1 class="title">공공분양</h1>
							<p class="text">국가·지자체·LH(또는 지방공사)가 건설하여 공급하는 전용면적 85제곱미터 이하의
								주택으로 분양자에게 소유권을 이전하는 주택(통상 LH, SH, 경기도시공사 등이 공급하는 분양주택을 뜻함)</p>
							<br>
							<h1 class="title">공공임대</h1>
							<p class="text">주변시세의 80-90%로 저렴하게 임대가 가능한 주택</p>
							<p class="text">▪ 공공임대 주택종류 &gt; 영구임대, 국민임대, 5/10년 공공임대, 행복주택
								등</p>
							<br>
							<h1 class="title">1)영구임대</h1>
							<p class="text">사회적약자를 위한 임대주택으로 저렴한 임대조건으로 영구적으로 거주할 수 있는
								주택.</p>
							<p class="text">모집공고일 기준으로 무주택자여야 하며, 임대기간은 최장 50년까지 가능하며,
								임대료(보증금+월세)는 시세의 30% 수준이다.</p>
							<br>
							<h1 class="title">2)국민임대</h1>
							<p class="text">가구원수별 월평균소득 기준의 70%이하인 사람들을 위해 전부에서 건설하여
								30년이상 임대하는 임대주택이다.</p>
							<br>
							<h1 class="title">3)국민임대</h1>
							<p class="text">의무임대기간동안 임대하면 이후에는 분양 전환이 가능한 주택이며, 입주자 모집공고일
								현재 당해 주택건설지역에 거주하며, 청약통장이 있는 무주택자만 신청가능</p>
							<br>
						</div>
					</div>
					<div class="wrap_content">
						<h1 class="processTitle ${tab == 3 ? 'on' : ''}">
							<div class="title_Label">
								<span>03</span> 내 자격과 순위 확인하기
							</div>
							<svg width="14" height="8" viewBox="0 0 14 8">
								<path fill-rule="nonzero"
									d="M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z">
								</path>
							</svg>
						</h1>
						<div class="processContentDetail" style="display:${tab == 3 ? 'block' : 'none' }">
							<p class="text">
								<span class="bold underline">민영주택</span>
								<null>은 입주자모집공고일 현재 당일 주택건설지역에 거주하는 만 19세 이상인 자만 신청가능.</null>
							</p>
							<p class="text">
								<span class="bold">제 1순위</span>
								<null> 가입 후 수도권 1년, 지방 6개월 경과한 자, 납입인정금액이 지역별 예치금액 이상인 자</null>
							</p>
							<p class="text">
								<span class="bold">제 2순위</span>
								<null> 순위에 해당하지 않는 자(청약통장 없이 청약가능)</null>
							</p>
							<br>
							<p class="text">
								<span class="bold underline">국민주택</span>
								<null>의 경우 입주자모집공고일 현재 당일 주택건설지역에 거주하는 무주택세대주여야 한다.</null>
							</p>
							<br>
							<table class="table__base table__left">
								<thead>
									<tr>
										<th colspan="2">국민주택</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="bold">제 1순위</td>
										<td class="text">가입 후 수도권 1년, 지방 6개월 경과한 자 매월 약정 납입일에 연체
											없이 지역별 가입기간 횟수에 맞게 납입</td>
									</tr>
									<tr>
										<td class="bold">제 2순위</td>
										<td class="text">1순위에 해당하지 않는 자(청약통장 없이 청약가능)</td>
									</tr>
								</tbody>
							</table>
							<br>
							<p class="text">단, 민영주택과 국민주택 청약 모두 매월 정해진 날짜에 정해진 금액을 입금하지
								않으면 지연일수가 적용되어 지연일수가 지나야지만 1순위가 될 수 있다.</p>
						</div>
					</div>
					<div class="wrap_content">
						<h1 class="processTitle">
							<div class="title_Label">
								<span>04</span> 신청주택 분양정보 확인하기
							</div>
							<svg width="14" height="8" viewBox="0 0 14 8">
								<path fill-rule="nonzero"
									d="M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z">
								</path>
							</svg>
						</h1>
						<div class="processContentDetail" style="display: none">
							<p class="text">입주자모집공고는 청약신청일 5~7일 전에 신문과 인터넷을 통해 발표되며,
								현장위치와 공급규모, 면적별 공급가구수, 평형, 면적도 등을 꼼꼼하게 확인하는 자세가 필요하다.</p>
							<br>
							<p class="text">다방앱 분양관에서는 모집공고 및 학군, 주변 편의시설까지 모두 확인하능하며,
								모집공고가 발표되지 않은 공고에 대해 알림설정까지 받을 수 있다.</p>
							<br>
							<p class="text">• 모집공고문 맛보기</p>
							<table class="table__note">
								<thead>
									<tr>
										<th>주택관리번호(아파트 코드)</th>
										<th>주택형(주거전용면적기준)</th>
										<th>약식표기</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>2018001192-01</td>
										<td>59.9700A</td>
										<td>59A</td>
									</tr>
								</tbody>
							</table>
							<table class="table__note">
								<thead>
									<tr>
										<th colspan="3">세대별 주택공급면적</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>주거전용면적</td>
										<td>주거공용면적</td>
										<td>소계</td>
									</tr>
									<tr>
										<td>59.97</td>
										<td>24.06</td>
										<td>84.03</td>
									</tr>
								</tbody>
							</table>
							<table class="table__note">
								<thead>
									<tr>
										<th>기타공용면적(지하주차장 등)</th>
										<th>계약면적</th>
										<th>세대별대지면적</th>
										<th>일반분양세대수</th>
										<th>최하층우선배정세대</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>57.40</td>
										<td>141.43</td>
										<td>28.11</td>
										<td>4</td>
										<td>-</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="wrap_content">
						<h1 class="processTitle">
							<div class="title_Label">
								<span>05</span> 청약 신청하기
							</div>
							<svg width="14" height="8" viewBox="0 0 14 8">
								<path fill-rule="nonzero"
									d="M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z">
								</path>
							</svg>
						</h1>
						<div class="processContentDetail" style="display: none">
							<p class="text">신청하고자 하는 주택의 청약사이트를 확인하기</p>
							<p class="text">1. SH공사 인터넷 청약 &gt; 서울주택도시공사에서 공급하는 주택</p>
							<p class="text">2. LH 인터넷청약 &gt; 한국토지주택공사에서 공급하는 주택</p>
							<p class="text">3. 아파트투유 &gt; KB국민은행 외 타은행 청약통장 가입자인 경우</p>
							<p class="text">4. KB국민은행 &gt; 청약통장 KB국민은행 청약통장 가입자인 경우</p>
							<br>
							<p class="bold">[인터넷 청약신청 방법]</p>
							<p class="text">신청대상 : 공인인증서 소지</p>
							<p class="text">청약시간 : 08:00 ~ 17:30(인터넷)</p>
							<p class="text">청약방법 : 금융결제원(APT2you), 국민은행, LH, SH 홈페이지</p>
							<p class="text">청약취소 : 청약신청 당일, 청약신청시간 이내 가능</p>
							<br>
							<table class="table__notice">
								<thead>
									<tr>
										<th colspan="3">청약 지원 할 때 알아야할 주의사항</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>청약통장 재사용 금지</td>
										<td>발표일이 동일한 주택에 중복청약불가</td>
									</tr>
									<tr>
										<td>2</td>
										<td>청약신청 취소불가</td>
										<td>청약 신청 후 취소 및 정정불가(당일에만 가능)</td>
									</tr>
									<tr>
										<td>3</td>
										<td>청약순위 자격 확인</td>
										<td>청약통장의 월납입금, 연체이력, 예치금 등 사전확인</td>
									</tr>
									<tr>
										<td>4</td>
										<td>청약 시 서류준비</td>
										<td>구비서류에 허위, 오류, 누락된 사실이 없도록 정확히 청약</td>
									</tr>
									<tr>
										<td>5</td>
										<td>청약 1순위 자격제한</td>
										<td>1순위 청약제한 대상자 여부 확인 후 청약</td>
									</tr>
									<tr>
										<td>6</td>
										<td>특별공급 유형 신청 시</td>
										<td>본인이 해당하는 특별공급 관련 서류 구비</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="wrap_content">
						<h1 class="processTitle">
							<div class="title_Label">
								<span>06</span> 계약 시 필요서류
							</div>
							<svg width="14" height="8" viewBox="0 0 14 8">
								<path fill-rule="nonzero"
									d="M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z">
								</path>
							</svg>
						</h1>
						<div class="processContentDetail" style="display: none">
							<table class="table__require">
								<tbody>
									<tr>
										<td>본인 및 배우자 계약시</td>
										<td><li>계약금</li>
											<li><p>계약자의 인감도장 및 인감증명서 1통</p>
												<p>(용도: 아파트 계약용, 공고일 이후 발급분)</p></li>
											<li>주민등록증, 주민등록등본, 가족관계증명서</li>
											<li>주택공급신청서 접수증 (은행창구에 비치)</li></td>
									</tr>
									<tr>
										<td>추가서류</td>
										<td><li>무주택세대원 입증서류</li>
											<li>특별공급 유형에 맞는 증빙서류</li>
											<li>(제 3자 대리 계약시) 위임장</li></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="wrap_content">
						<h1 class="processTitle">
							<div class="title_Label">
								<span>07</span> 청약 후 납부단계
							</div>
							<svg width="14" height="8" viewBox="0 0 14 8">
								<path fill-rule="nonzero"
									d="M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z">
								</path>
							</svg>
						</h1>
						<div class="processContentDetail" style="display: none">
							<img src="/guest/img/saleInLots/sales-img-07.2e370d2a.svg"
								alt="계약금 중도금 잔금 소유권 이전하기">
							<h1 class="bold">▪ 계약금 치르기</h1>
							<p class="">통상 계약금은 분양가의 10%이며, 계약금은 대출이 불가하여 사전 준비가 필요하다.</p>
							<br>
							<h1 class="title">▪ 중도금치르기</h1>
							<p class="">중도금 통상 분양가의 60%이며, 계약금을 치른 날로부터 1~2주 후 6회에 걸쳐
								납부해야 함</p>
							<p class="">중도금 대출은 주로 시공사나 시행사와 연계되어 있는 은행에서 취급한다.</p>
							<br>
							<h1 class="title">▪ 잔금 치르기</h1>
							<p class="">잔금은 통상 분양받은 아파트 가격의 30%이며, 입주 전 까지 납부하면 된다.</p>
							<br>
							<h1 class="title">▪ 소유권 이전하기</h1>
							<p class="">소유권이전등기란 주택에 대한 명의를 본인의 이름으로 변경하는 단계이다.</p>
							<br>
							<h1 class="title">TIP. 소유권 이전 후 납부해야 할 금액이 있나요?</h1>
							<br>
							<h1 class="title">* 취득세</h1>
							<p class="">동산이나 부동산 등의 자산을 취득한 이에게 부과되는 세금</p>
							<p class="">잔금을 치른 날로부터 60일 이내 납부하여야 한다.</p>
							<p class="">취득세에는 등록세가 포함되어있어 취득세만 내면 등록세는 따로 내지 않아도 된다.</p>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
</div>
</body>
<script src="/guest/js/saleInLots/saleInLotsProcessHome.js"></script>
</html>