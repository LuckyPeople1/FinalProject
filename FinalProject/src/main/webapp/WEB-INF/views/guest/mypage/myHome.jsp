<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="mypage inner">
			<div class="sectionTitle">MY 다싸</div>
			<jsp:include page="/WEB-INF/views/guest/mypage/page/myTab.jsp"/>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
</div>
</body>
</html>