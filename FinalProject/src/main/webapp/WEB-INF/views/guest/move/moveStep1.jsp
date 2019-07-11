<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
	<div class="contents">
		<section class="moveStep inner">
			
			<div class="sectionTitle">짐 정보</div>
			<div class="moveGroup">
				<div class="moveInfoTitle">
					<strong>·짐 수량에 맞춰 아이콘을 터치해주세요.</strong><br/>
					·수량을 뺄 때에는 - 버튼을 터치해주세요.
				</div>
				
				<div class="packageList">
					<div class="packageTypeBox">
						<div class="packageTypeTitle">가전</div>
						<div class="packageTypeList">
							<c:forEach items="${packageList}" var="item">
								
								<c:if test="${item.packageType == 0}">
									<div class="packageBox" data-idx="${item.packageIdx}"
										 data-type="${item.packageType}" data-name="${item.packageName}">
										
										<c:set var="loop_flag" value="false"/>
										<c:forEach items="${selectPackageList}" var="selectItem">
											<c:if test="${not loop_flag}">
												<c:if test="${item.packageName == selectItem.packageName}">
													
													<div class="packageBtn on"
														 onclick="package.packagePlus(event,this)">
														<img src="${item.packageImgPath}" class="packageImg">
														<div class="packageName">${item.packageName}</div>
														<div class="packageSelect">
															<a href="#none" class="minusBtn"
															   onclick="package.packageMinus(event,this)"></a>
															<div class="qty">${selectItem.packageAmount}</div>
														</div>
													</div>
													<c:set var="loop_flag" value="true"/>
												</c:if>
											</c:if>
										</c:forEach>
										
										<c:if test="${not loop_flag}">
											<div class="packageBtn" onclick="package.packagePlus(event,this)">
												<img src="${item.packageImgPath}" class="packageImg">
												<div class="packageName">${item.packageName}</div>
												<div class="packageSelect">
													<a href="#none" class="minusBtn"
													   onclick="package.packageMinus(event,this)"></a>
													<div class="qty">0</div>
												</div>
											</div>
										</c:if>
									
									</div>
								</c:if>
							</c:forEach>
						</div>
					
					</div>
					<div class="packageTypeBox">
						<div class="packageTypeTitle">가구</div>
						<div class="packageTypeList">
							<c:forEach items="${packageList}" var="item">
								<c:if test="${item.packageType == 1}">
									<div class="packageBox" data-idx="${item.packageIdx}"
										 data-type="${item.packageType}" data-name="${item.packageName}">
										
										<c:set var="loop_flag" value="false"/>
										<c:forEach items="${selectPackageList}" var="selectItem">
											<c:if test="${not loop_flag}">
												<c:if test="${item.packageName == selectItem.packageName}">
													
													<div class="packageBtn on"
														 onclick="package.packagePlus(event,this)">
														<img src="${item.packageImgPath}" class="packageImg">
														<div class="packageName">${item.packageName}</div>
														<div class="packageSelect">
															<a href="#none" class="minusBtn"
															   onclick="package.packageMinus(event,this)"></a>
															<div class="qty">${selectItem.packageAmount}</div>
														</div>
													</div>
													<c:set var="loop_flag" value="true"/>
												</c:if>
											</c:if>
										</c:forEach>
										
										<c:if test="${not loop_flag}">
											<div class="packageBtn" onclick="package.packagePlus(event,this)">
												<img src="${item.packageImgPath}" class="packageImg">
												<div class="packageName">${item.packageName}</div>
												<div class="packageSelect">
													<a href="#none" class="minusBtn"
													   onclick="package.packageMinus(event,this)"></a>
													<div class="qty">0</div>
												</div>
											</div>
										</c:if>
									
									</div>
								
								</c:if>
							
							</c:forEach>
						</div>
					</div>
					<div class="packageTypeBox">
						<div class="packageTypeTitle">기타</div>
						<div class="packageTypeList">
							<c:forEach items="${packageList}" var="item">
								
								<c:if test="${item.packageType == 2}">
									<div class="packageBox" data-idx="${item.packageIdx}"
										 data-type="${item.packageType}" data-name="${item.packageName}">
										
										<c:set var="loop_flag" value="false"/>
										<c:forEach items="${selectPackageList}" var="selectItem">
											<c:if test="${not loop_flag}">
												<c:if test="${item.packageName == selectItem.packageName}">
													
													<div class="packageBtn on"
														 onclick="package.packagePlus(event,this)">
														<img src="${item.packageImgPath}" class="packageImg">
														<div class="packageName">${item.packageName}</div>
														<div class="packageSelect">
															<a href="#none" class="minusBtn"
															   onclick="package.packageMinus(event,this)"></a>
															<div class="qty">${selectItem.packageAmount}</div>
														</div>
													</div>
													<c:set var="loop_flag" value="true"/>
												</c:if>
											</c:if>
										</c:forEach>
										
										<c:if test="${not loop_flag}">
											<div class="packageBtn" onclick="package.packagePlus(event,this)">
												<img src="${item.packageImgPath}" class="packageImg">
												<div class="packageName">${item.packageName}</div>
												<div class="packageSelect">
													<a href="#none" class="minusBtn"
													   onclick="package.packageMinus(event,this)"></a>
													<div class="qty">0</div>
												</div>
											</div>
										</c:if>
									
									</div>
								
								</c:if>
							
							</c:forEach>
						</div>
					</div>
					<div class="packageTypeBox">
						<div class="packageTypeTitle">짐박스</div>
						<div class="packageTypeList zimBox">
							
							<div class="boxImg">
								<img src="/guest/img/img_zimssabox_sample.png">
							</div>
							<div class="packageBox full" data-type="3">
								<div class="packageBtn">
									<img src="/guest/img/icon_package_box.png" class="packageImg">
									<div class="packageName">짐박스</div>
									<div class="packageSelect">
										<a href="#none" class="minusBtn" onclick="package.packageMinus(event,this,'box')"></a>
										
										<c:set var="loop_flag" value="false"/>
										<c:forEach items="${selectPackageList}" var="selectItem">
											<c:if test="${not loop_flag}">
												
												<c:if test="${selectItem.packageName == '짐박스'}">
													<div class="qty">${selectItem.packageAmount}</div>
													<c:set var="loop_flag" value="true"/>
												
												</c:if>
											</c:if>
										</c:forEach>
										<c:if test="${not loop_flag}">
											<div class="qty">0</div>
										</c:if>
										<a href="#none" class="plusBtn" onclick="package.packagePlus(event,this,'box')"></a>
									
									</div>
								</div>
							</div>
							
							
							
						</div>
					</div>
				</div>
				<div class="packageBtnBox">
					<a href="#none" class="btn col_darkGrey f_w big">취소</a>
					<a href="javascript:package.packageSelect()" class="btn col_main f_w big">다음</a>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>


</div>
<script src="/guest/js/move/package.js"></script>
</body>
</html>