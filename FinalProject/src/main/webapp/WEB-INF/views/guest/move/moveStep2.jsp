<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="moveStep inner">
			
			<div class="sectionTitle">짐 정보</div>
			<div class="moveGroup">
				<div class="moveInfoTitle">
					<strong>·선택한 짐의 상세정보를 완성해주세요.</strong><br/>
					·각각의 짐 항목을 눌러 물건의 상세 정보를 완성해주세요. ${packageOptionList.get(0).packageName}
				</div>
				
				<div class="packageList">
					<div class="packageTypeBox">
						<div class="packageTypeTitle">가전</div>
						<ul class="packageSelectList">
							<c:forEach items="${selectPackageList}" var="item">
								
								<c:if test="${item.packageType == 0}">
									
									
									<c:forEach begin="1" end="${item.packageAmount}" varStatus="status">
										
										<li class="listBox">
											<div class="packageInfo" data-idx="${item.packageIdx}" data-order="${status.count}" data-type="${item.packageType}" onclick="package.packagePop(${item.packageIdx},this)">
												<div class="delBox">
													<a href="#none" class="delBtn" onclick="package.packageRemove(this, event)"></a>
												</div>
												<div class="selectImg">
													<img src="${item.packageImgPath}" alt="이미지">
												</div>
												<div class="title">
													<div class="nameGroup">
														<span class="name">${item.packageName}</span>
														<span class="order"></span>
													</div>
													<div class="caption">상세 정보를 입력하여 주세요.</div>
												</div>
											</div>
										</li>
									</c:forEach>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					<div class="packageTypeBox">
						<div class="packageTypeTitle">가구</div>
						<ul class="packageSelectList">
							<c:forEach items="${selectPackageList}" var="item">
								
								<c:if test="${item.packageType == 1}">
									
									<c:forEach begin="1" end="${item.packageAmount}" varStatus="status">
										<li class="listBox">
											<div class="packageInfo" data-idx="${item.packageIdx}" data-order="${status.count}" data-type="${item.packageType}" onclick="package.packagePop(${item.packageIdx},this)">
												<div class="delBox">
													<a href="#none" class="delBtn" onclick="package.packageRemove(this, event)"></a>
												</div>
												<div class="selectImg">
													<img src="${item.packageImgPath}" alt="이미지">
												</div>
												<div class="title">
													<div class="nameGroup">
														<span class="name">${item.packageName}</span>
														<span class="order"></span>
													</div>
													<div class="caption">상세 정보를 입력하여 주세요.</div>
												</div>
											</div>
										</li>
									</c:forEach>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					<div class="packageTypeBox">
						<div class="packageTypeTitle">기타</div>
						<ul class="packageSelectList">
							<c:forEach items="${selectPackageList}" var="item">
								
								<c:if test="${item.packageType == 2}">
									
									<c:forEach begin="1" end="${item.packageAmount}" varStatus="status">
										<li class="listBox">
											<div class="packageInfo" data-idx="${item.packageIdx}" data-order="${status.count}" data-type="${item.packageType}" onclick="package.packagePop(${item.packageIdx},this)">
												<div class="delBox">
													<a href="#none" class="delBtn" onclick="package.packageRemove(this, event)"></a>
												</div>
												<div class="selectImg">
													<img src="${item.packageImgPath}" alt="이미지">
												</div>
												<div class="title">
													<div class="nameGroup">
														<span class="name">${item.packageName}</span>
														<span class="order"></span>
													</div>
													<div class="caption">상세 정보를 입력하여 주세요.</div>
												</div>
											</div>
										</li>
									</c:forEach>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					
					
					<div class="packageTypeBox">
						<div class="packageTypeTitle">짐박스</div>
						<ul class="packageSelectList">
							<c:forEach items="${selectPackageList}" var="item">
								<c:if test="${item.packageType == 3}">
									<li class="listBox zim on">
										<div class="packageInfo" data-idx="${item.packageIdx}" data-order="${status.count}" data-type="${item.packageType}">
											<div class="selectImg">
												<img src="${item.packageImgPath}" alt="이미지">
											</div>
											<div class="title">
												<div class="nameGroup">
													<span class="name">${item.packageName}</span>
												</div>
											</div>
											<div class="packageSelect">
												<a href="#none" class="minusBtn" onclick="package.packageMinus(event,this,'box')"></a>
												<div class="qty caption">${item.packageAmount}</div>
												<a href="#none" class="plusBtn" onclick="package.packagePlus(event,this,'box')"></a>
											</div>
										</div>
									</li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="packageBtnBox">
					<a href="/move/step1" class="btn col_darkGrey f_w big">뒤로가기</a>
					<a href="javascript:package.packageFinish()" class="btn col_main f_w big">다음</a>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
</div>
<section class="layerPopup packageOption"></section>


<script src="/guest/js/move/package.js"></script>
<script>
	package.packageNumberSet();
</script>
</body>
</html>