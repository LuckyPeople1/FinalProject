<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_item.jsp" %>   <!--맨왼쪽  서브네비 메뉴-->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">상품 구매 내역</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title"></div>
			<div class="list_form">
				<table class="table_list">
					<colgroup>
						<col width="60">
						<col width="90">
						<col width="90">
						<col width="90">
						<col width="90">
						<col width="90">
						<col width="90">
					</colgroup>
					<thead>
					<tr>
						<th><label><input type="checkbox"></label></th>
						<th>NO</th>
						<th>구매 상품</th>
						<th>등록 가능 개수</th>
						<th>구매 가격</th>
						<th>구매 일시</th>
						<th>종료 일시</th>
					</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
			<br>
		</div>
	</div>
	<footer role="footer" data-include="footer.html"></footer>
</div>
</body>
</html>