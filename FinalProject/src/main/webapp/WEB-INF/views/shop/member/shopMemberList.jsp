<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<nav>
		<!--맨왼쪽  네비 메뉴-->
		<jsp:include page="/WEB-INF/views/shop/page/nav_main.jsp"/>
		<!--맨왼쪽  서브네비 메뉴-->
		<jsp:include page="/WEB-INF/views/shop/page/nav_member.jsp"/>
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">전체직원 관리</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="list_form">
				<table class="table_list">
					<colgroup>
						<col width="70">
						<col width="140">
						<col width="120">
						<col width="100">
						<col width="50">
					</colgroup>
					<thead>
					<tr>
						<th>No</th>
						<th>이름</th>
						<th>휴대폰번호</th>
						<th>가입일</th>
						<th>관리</th>
					</tr>
					</thead>
					<tbody>
					<c:if test="${memberList == null || memberList.size() == 0}">
						<tr>
							<td colspan="5" style="line-height: 50px">등록된 직원이 없습니다</td>
						</tr>
					</c:if>
					<c:forEach items="${memberList}" var="item" varStatus="index" end="${memberList.size()}">
						<tr>
							<td>${index.end - index.index}</td>
							<td>${item.shopMemberName}</td>
							<td>${item.shopMemberPhone}</td>
							<td>${item.shopMemberRegDate}</td>
							<td>
<%--								<a href="/shop/member/memberInfo" class="btn col_navy f_w">상세보기</a>--%>
								<a href="javascript:member.remove(${item.shopMemberIdx})" class="btn col_darkGrey f_w line">삭제</a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script src="<c:url value="/shop/js/member/member.js"/>"></script>

</div>
</body>
</html>