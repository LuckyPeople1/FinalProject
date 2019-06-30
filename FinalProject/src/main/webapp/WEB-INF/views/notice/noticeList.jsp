<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 리스트</title>
</head>
<body>
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<section>
		<form action="#">
			<table border="1">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>조회수</th>
					<th>등록일</th>
				</tr>
				
				<c:forEach items="#{list }" var="nv">
					<tr>
						<th>${nv.getNoticeIndex }</th>
						<th>${nv.getNoticeTitle }</th>
						<th>${nv.getNoticeHit }</th>
						<th>${nv.getNoitceRegDate }</th>
					</tr>
				</c:forEach>
			</table>
		</form>
	</section>
</body>
</html>