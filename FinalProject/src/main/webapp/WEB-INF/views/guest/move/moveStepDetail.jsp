<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="moveStep inner">
			
			<div class="sectionTitle">${addrType == 'start' ? '출발지' : '도착지'} 정보</div>
			<div class="moveGroup">
				<form id="addrFrm">
					<div class="moveDetailBox">
						<div class="addrInfo">
							<div class="addrTitle">${addrType == 'start' ? '출발지' : '도착지'} 주소</div>
							
							
							<c:choose>
								<c:when test="${addrInfo == null}">
									<a href="/move/addr?addrType=${addrType}" class="addrBtn">주소 재검색</a>
									<div class="addrText">${selectAddr.addr2}</div>
									<input type="hidden" name="latitude" value="${selectAddr.latitude}">
									<input type="hidden" name="longitude" value="${selectAddr.latitude}">
									<input type="hidden" name="addr1" value="${selectAddr.addr1}">
									<input type="hidden" name="addr2" value="${selectAddr.addr2}">
									<input class="addrDetailInput" name="addr3" placeholder="상세 주소 입력 (동/호수 등)">
								</c:when>
								<c:otherwise>
									<a href="/move/addr?addrType=${addrType}" class="addrBtn">주소 재검색</a>
									<div class="addrText">${addrInfo.addr2}</div>
									<input type="hidden" name="latitude" value="${addrInfo.latitude}">
									<input type="hidden" name="longitude" value="${addrInfo.latitude}">
									<input type="hidden" name="addr1" value="${addrInfo.addr1}">
									<input type="hidden" name="addr2" value="${addrInfo.addr2}">
									<input class="addrDetailInput" name="addr3" placeholder="상세 주소 입력 (동/호수 등)">
								</c:otherwise>
							</c:choose>
							
							
							
						</div>
						<ul class="detailOption">
							<li class="">
								<div class="detailOptionTitle">집 형태</div>
								<div class="detailOptionList">
									<label>
										<input type="radio" name="type" value="빌라/연립" ${addrInfo.type == "빌라/연립" ? 'checked' : ''}>
										<span>빌라/연립</span>
									</label>
									<label>
										<input type="radio" name="type" value="오피스텔" ${addrInfo.type == "오피스텔" ? 'checked' : ''}>
										<span>오피스텔</span>
									</label>
									<label>
										<input type="radio" name="type" value="주택" ${addrInfo.type == "주택" ? 'checked' : ''}>
										<span>주택</span>
									</label>
									<label>
										<input type="radio" name="type" value="아파트" ${addrInfo.type == "아파트" ? 'checked' : ''}>
										<span>아파트</span>
									</label>
								</div>
							</li>
							<c:if test="${addrType == 'start'}">
								<li class="">
									<div class="detailOptionTitle">방 구조</div>
									<div class="detailOptionList">
										<label>
											<input type="radio" name="structure" value="원룸" ${addrInfo.structure == "원룸" ? 'checked' : ''}>
											<span>원룸</span>
										</label>
										<label>
											<input type="radio" name="structure" value="1.5룸" ${addrInfo.structure == "1.5룸" ? 'checked' : ''}>
											<span>1.5룸</span>
										</label>
										<label>
											<input type="radio" name="structure" value="2룸" ${addrInfo.structure == "2룸" ? 'checked' : ''}>
											<span>2룸</span>
										</label>
										<label>
											<input type="radio" name="structure" value="3룸" ${addrInfo.structure == "3룸" ? 'checked' : ''}>
											<span>3룸</span>
										</label>
									</div>
								</li>
								<li class="">
									<div class="detailOptionTitle">집 평수</div>
									<div class="detailOptionList">
										<label>
											<input type="radio" name="size" value="10평 이하" ${addrInfo.size == "10평 이하" ? 'checked' : ''}>
											<span>10평 이하</span>
										</label>
										<label>
											<input type="radio" name="size" value="10~15평" ${addrInfo.size == "10~15평" ? 'checked' : ''}>
											<span>10~15평</span>
										</label>
										<label>
											<input type="radio" name="size" value="15~20평" ${addrInfo.size == "15~20평" ? 'checked' : ''}>
											<span>15~20평</span>
										</label>
										<label>
											<input type="radio" name="size" value="20~25평" ${addrInfo.size == "20~25평" ? 'checked' : ''}>
											<span>20~25평</span>
										</label>
										<label>
											<input type="radio" name="size" value="20~25평" ${addrInfo.size == "20~25평" ? 'checked' : ''}>
											<span>25~30평</span>
										</label>
										<label>
											<input type="radio" name="size" value="30평 이상" ${addrInfo.size == "30평 이상" ? 'checked' : ''}>
											<span>30평 이상</span>
										</label>
									</div>
								</li>
							</c:if>
							<li class="">
								<div class="detailOptionTitle">층</div>
								<div class="detailOptionList">
									<label>
										<input type="radio" name="floor" value="(반)지하" ${addrInfo.floor == "(반)지하" ? 'checked' : ''}>
										<span>(반)지하</span>
									</label>
									<label>
										<input type="radio" name="floor" value="1층(계단X)" ${addrInfo.floor == "1층(계단X)" ? 'checked' : ''}>
										<span>1층(계단X)</span>
									</label>
									<label>
										<input type="radio" name="floor" value="1층(계단O)" ${addrInfo.floor == "1층(계단O)" ? 'checked' : ''}>
										<span>1층(계단O)</span>
									</label>
									<label>
										<input type="radio" name="floor" value="2층" ${addrInfo.floor == "2층" ? 'checked' : ''}>
										<span>2층</span>
									</label>
									<label>
										<input type="radio" name="floor" value="3층" ${addrInfo.floor == "3층" ? 'checked' : ''}>
										<span>3층</span>
									</label>
									<label>
										<input type="radio" name="floor" value="4층" ${addrInfo.floor == "4층" ? 'checked' : ''}>
										<span>4층</span>
									</label>
									<label>
										<input type="radio" name="floor" value="5-6층" ${addrInfo.floor == "5-6층" ? 'checked' : ''}>
										<span>5-6층</span>
									</label>
									<label>
										<input type="radio" name="floor" value="7층 이상" ${addrInfo.floor == "7층 이상" ? 'checked' : ''}>
										<span>7층 이상</span>
									</label>
								</div>
							</li>
							<li class="">
								<div class="detailOptionTitle">엘리베이터 유무</div>
								<div class="detailOptionList">
									<label class="half">
										<input type="radio" name="elevator" value="Y" ${addrInfo.elevator == "Y" ? 'checked' : ''}>
										<span>있음</span>
									</label>
									<label class="half">
										<input type="radio" name="elevator" value="N" ${addrInfo.elevator == "N" ? 'checked' : ''}>
										<span>없음</span>
									</label>
								</div>
							</li>
							<li class="">
								<div class="detailOptionTitle">주차 가능 여부</div>
								<div class="detailOptionList">
									<label class="half">
										<input type="radio" name="parking" value="Y" ${addrInfo.parking == "Y" ? 'checked' : ''}>
										<span>가능</span>
									</label>
									<label class="half">
										<input type="radio" name="parking" value="N" ${addrInfo.parking == "N" ? 'checked' : ''}>
										<span>불가능</span>
									</label>
								</div>
							</li>
						</ul>
					</div>
					<div class="packageBtnBox">
						<a href="/move/step3" class="btn col_darkGrey f_w big">뒤로가기</a>
						<a href="javascript:package.moveDetailAddr('${addrType}')" class="btn col_main f_w big">다음</a>
					</div>
				</form>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>


</div>
<script src="/guest/js/move/package.js"></script>
</body>
</html>