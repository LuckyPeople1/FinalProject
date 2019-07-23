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
			<div class="processContent" style="margin-bottom: 0px;">
				<section class="saleInLotsProcessNav">
					<h1>분양 가이드</h1>
					<div class="processNav">
						<a href="/saleInLots/saleInLotsProcess">
							<div class="NavText">주택청약철차</div>
						</a>
						<a href="/saleInLots/saleInLotsTerms">
							<div class="NavText">분양용어</div>
						</a> 
						<a href="/saleInLots/saleInLotsFaq">
							<div class="NavText">자주하는 질문</div>
						</a> 
						<a href="/saleInLots/saleInLotsCalculator" class="on">
							<div class="NavText">청약가점계산</div>
						</a>
					</div>
				</section>
				 <section class="calculator">
	  	 <article class="a_wrap">
           <div class="wrap_content" style="border: none">
                <h1 class="notice">
                    <p>청약가점제에 의해 청약신청 할 때에는 청약자 본인이 직접 소유주택수, 무주택기간 및 부양가족수를 산정해야 하므로</p>
                    <p>신청 전에 청약 신청시 유의사항 및 가점제도 내용을 충분히 이해해야만 착오에 따른 불이익을 피할 수 있습니다.</p>
               </h1>  
               <div class="selectWrap">
                    <h1 class="selectTitle">부양가족수
                        <svg width="18" height="18" viewBox="0 0 18 18" style="cursor: pointer;">
                            <g fill="none" fill-rule="evenodd">
                                <circle cx="9" cy="9" r="9" fill="#E9E9E9"></circle>
                                <g transform="translate(6 5)">
                                    <path stroke="#9498A0" stroke-linecap="round" d="M.565 1.996C.934.666 1.685 0 2.82 0c1.7 0 2.543 1.851 1.894 2.856C4.064 3.861 2.71 3.996 2.71 5.46"></path>
                                    <circle cx="2.7" cy="7.7" r="1" fill="#9498A0"></circle>
                                </g>
                            </g>
                        </svg>
                   </h1>
                   <select class="selectContent">
                        <option value>인원</option>
                        <option value="0">0명</option>
                       <option value="1">1명</option>
                       <option value="2">2명</option>
                       <option value="3">3명</option>
                       <option value="4">4명</option>
                       <option value="5">5명</option>
                       <option value="6">6명이상</option>
                   </select>
               </div>
               <div class="selectWrap2">
                    <h1 class="selectTitle">
                        청약통장 가입날짜
                        <svg width="18" height="18" viewBox="0 0 18 18" style="cursor: pointer;">
                            <g fill="none" fill-rule="evenodd">
                                <circle cx="9" cy="9" r="9" fill="#E9E9E9"></circle>
                                <g transform="translate(6 5)">
                                    <path stroke="#9498A0" stroke-linecap="round" d="M.565 1.996C.934.666 1.685 0 2.82 0c1.7 0 2.543 1.851 1.894 2.856C4.064 3.861 2.71 3.996 2.71 5.46"></path>
                                    <circle cx="2.7" cy="7.7" r="1" fill="#9498A0"></circle>
                                </g>
                            </g>
                        </svg>
                   </h1>
                   <select class="selectYear">
                        <option value="">년 선택</option>
                       <option value="2019">2019년</option>
                       <option value="2018">2018년</option>
                       <option value="2017">2017년</option>
                       <option value="2016">2016년</option>
                       <option value="2015">2015년</option>
                       <option value="2014">2014년</option>
                       <option value="2013">2013년</option>
                       <option value="2012">2012년</option>
                       <option value="2011">2011년</option>
                       <option value="2010">2010년</option>
                       <option value="2009">2009년</option>
                       <option value="2008">2008년</option>
                       <option value="2007">2007년</option>
                       <option value="2006">2006년</option>
                       <option value="2005">2005년</option>
                       <option value="2004">2004년</option>
                       <option value="2003">2003년</option>
                       <option value="2002">2002년</option>
                       <option value="2001">2001년</option>
                       <option value="2000">2000년</option>
                       <option value="1999">1999년</option>
                       <option value="1998">1998년</option>
                       <option value="1997">1997년</option>
                       <option value="1996">1996년</option>
                       <option value="1995">1995년</option>
                       <option value="1994">1994년</option>
                       <option value="1993">1993년</option>
                       <option value="1992">1992년</option>
                       <option value="1991">1991년</option>
                       <option value="1990">1990년</option>
                   </select>
                   <select class="selectMonth">
                         <option value="">월 선택</option>
                       <option value="1">1월</option>
                       <option value="2">2월</option>
                       <option value="3">3월</option>
                       <option value="4">4월</option>
                       <option value="5">5월</option>
                       <option value="6">6월</option>
                       <option value="7">7월</option>
                       <option value="8">8월</option>
                       <option value="9">9월</option>
                       <option value="10">10월</option>
                       <option value="11">11월</option>
                       <option value="12">12월</option>
                   </select>
                   <select class="selectMonth" id="selectDay">
                       <option>일 선택</option>
                   </select>
               </div>
               <div class="selectWrap2">
                    <h1 class="selectTitle">
                        무주택 기간
                        <svg width="18" height="18" viewBox="0 0 18 18" style="cursor: pointer;">
                            <g fill="none" fill-rule="evenodd">
                                <circle cx="9" cy="9" r="9" fill="#E9E9E9"></circle>
                                <g transform="translate(6 5)">
                                    <path stroke="#9498A0" stroke-linecap="round" d="M.565 1.996C.934.666 1.685 0 2.82 0c1.7 0 2.543 1.851 1.894 2.856C4.064 3.861 2.71 3.996 2.71 5.46"></path>
                                    <circle cx="2.7" cy="7.7" r="1" fill="#9498A0"></circle>
                                </g>
                            </g>
                        </svg>
                   </h1>
                   <select class="selectBox">
                        <option value="">무주택 기간 선택</option>
                       <option value="0">본인 또는 세대원이 주택 소유</option>
                       <option value="1">30세 미만 미혼 무주택자</option>
                       <option value="2">1년 미만</option>
                       <option value="3">1년 이상 ~ 2년 미만</option>
                       <option value="4">2년 이상 ~ 3년 미만</option>
                       <option value="5">3년 이상 ~ 4년 미만</option>
                       <option value="6">4년 이상 ~ 5년 미만</option>
                       <option value="7">5년 이상 ~ 6년 미만</option>
                       <option value="8">6년 이상 ~ 7년 미만</option>
                       <option value="9">7년 이상 ~ 8년 미만</option>
                       <option value="10">8년 이상 ~ 9년 미만</option>
                       <option value="11">9년 이상 ~ 10년 미만</option>
                       <option value="12">10년 이상 ~ 11년 미만</option>
                       <option value="13">11년 이상 ~ 12년 미만</option>
                       <option value="14">12년 이상 ~ 13년 미만</option>
                       <option value="15">13년 이상 ~ 14년 미만</option>
                       <option value="16">14년 이상 ~ 15년 미만</option>
                       <option value="17">15년 이상</option>
                   </select>
               </div>
               <button class="calcBtn basicBtn">계산하기</button>
            </div>
            <div class="wrap_content2" style="border: none; display: none">
                <h1 class="notice">
                    <p>청약가점제에 의해 청약신청 할 때에는 청약자 본인이 직접 소유주택수, 무주택기간 및 부양가족수를 산정해야 하므로</p>
                    <p>신청 전에 청약 신청시 유의사항 및 가점제도 내용을 충분히 이해해야만 착오에 따른 불이익을 피할 수 있습니다.</p>
               </h1>
               <div class="completeWrap">
               		<p class="completeTitle">청약가점계산 결과</p>
               		<ul class="completeUl">
               			<li class="completeLi">
               				<p>부양가족수</p>
               				<p></p>
               				<p></p>
               			</li>
               			<li class="completeLi">
               				<p>청약통장 가입날짜</p>
               				<p></p>
               				<p></p>
               			</li>
               			<li class="completeLi">
               				<p>무주택기간</p>
               				<p></p>
               				<p></p>
               			</li>
               			<li class="completeLi">
               				<p style="font-size: 18px; font-weight: 700; color: rgb(34,34,34);">총 청약 가점</p>
               				<p></p>
               				<p style="font-size: 18px; font-weight: 700; color: rgb(50,108,249);">점수</p>
               			</li>
               		</ul>
               		<p class="NoticeMsg">
               			※ 청약가점계산기는 예상으로 점수를 확인하는 서비스이며, 착오 신청에 따른 책임은 청약자 본인에게 있으며 다방에서는 이에 책임을 지지 않습니다.
               		</p>
               		<button class="reBtn basicBtn">다시 계산하기</button>
               </div>
              </div>  
       </article>
    </section>
			</div>
		<div>
    </div>
    </section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
</div>
<script src="/guest/js/saleInLots/saleInLotsCalculator.js"></script>
</body>
</html>