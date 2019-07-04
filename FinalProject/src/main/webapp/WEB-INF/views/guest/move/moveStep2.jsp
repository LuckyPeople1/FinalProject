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
					·각각의 짐 항목을 눌러 물건의 상세 정보를 완성해주세요.
					${selectList.size()}
				</div>
				
				<div class="packageList">
					<div class="packageTypeBox">
						<div class="packageTypeTitle">가전</div>
						<ul class="packageSelectList">
							<c:forEach items="${selectList}" var="item">
								
								<c:if test="${item.packageType == 0}">
									
									<c:forEach var="i" begin="1" end="${item.packageAmount}">
										<li class="listBox">
											<div class="packageInfo">
												<div class="delBox">
													<a href="#none" class="delBtn"></a>
												</div>
												<div class="selectImg">
													<img src="${item.packageImgPath}" alt="이미지">
												</div>
												<div class="title">
													<div class="">
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
				</div>
				<div class="packageBtnBox">
					<a href="/move/step1" class="btn col_darkGrey f_w big">취소</a>
					<a href="#none" class="btn col_main f_w big">다음</a>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>


</div>
<script src="/guest/js/move/package.js"></script>
<script>
	package.packageNumberSet();
</script>
</body>
</html>