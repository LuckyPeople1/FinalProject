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
					<strong>·짐 수량에 맞춰 아이콘을 터치해주세요.</strong><br/>
					·수량을 뺄 때에는 - 버튼을 터치해주세요.
				</div>
				
				<div class="packageList">
					<div class="packageTypeBox">
						<div class="packageTypeTitle">가전</div>
						<div class="packageTypeList">
							<c:forEach items="${packageList}" var="package">
								<c:if test="${package.packageType == 0}">
									<div class="packageItem">
										<img src="${package.packageImgPath}" class="packageItemImg">
										<div class="packageTitle">${package.packageName}</div>
									</div>
								</c:if>
							</c:forEach>
						</div>
						
					</div>

				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>


</div>
</body>
</html>