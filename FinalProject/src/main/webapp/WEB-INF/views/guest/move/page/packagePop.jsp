<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="popupGroup">
	<div class="popupTitle">${name}</div>
	<div class="popupCon">
		<c:forEach items="${optionList}" var="option" varStatus="status">
			<div class="optionList">
				<div class="optionTitle">${option.packageOptionName}</div>
				<div class="optionBox" data-optionOrder="${status.count}">
					
					<c:forEach items="${option.packageOptionValue.split(',')}" var="item">
						<label>
							<input name="option${status.count}" type="radio" value="${item}" onchange="package.packageEtcOption(this)">
							<span>${item}</span>
						</label>
					</c:forEach>
					<c:if test="${option.packageOptionEtc == 1}">
						<label>
							<input name="option${status.count}" type="radio" value="기타" class="etc" onchange="package.packageEtcOption(this)">
							<span>기타</span>
						</label>
					</c:if>
				</div>
				<c:if test="${option.packageOptionEtc == 1}">
					<div class="optionEtc">
						<input name="optionEtc${status.count}" type="text" placeholder="특이사항을 입력해주세요(10자 이내)" maxlength="10">
					</div>
				</c:if>
			</div>
		</c:forEach>
<%--		<div class="duplicationBox">--%>
<%--			<div class="duplicationTitle">중복 제품 간편 선택</div>--%>
<%--			<div class="duplicationInfo">n대의 냉장고가 더 있습니다. 이 중 냉장고(현재)와 동일한 옵션을 가진 제품이 있다면 아래에서 선택해주세요.</div>--%>
<%--			<div class="duplicationSelect">--%>
<%--				<label>--%>
<%--					<input type="checkbox">--%>
<%--					<span>냉장고(1)</span>--%>
<%--				</label>--%>
<%--			</div>--%>
<%--		</div>--%>
		
	</div>
	<div class="popupFooter">
		<a href="javascript:package.packagePopClose()" class="btn col_darkGrey f_w">취소</a>
		<a href="javascript:package.optionSelect()" class="btn col_main f_w">선택</a>
	
	</div>
</div>

