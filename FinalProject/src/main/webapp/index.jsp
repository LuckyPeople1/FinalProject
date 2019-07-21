<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="mainSearch inner">
			<div class="mainSearchBox">
				<div class="mainTxt">
					<span class="accent">어떤 동네, 어떤방</span>에서<br/>
					살고싶으신가요?
				</div>
				<div class="searchBox">
					<input type="text" class="searchInput">
					<span class="ico search"></span>
					<a href="#none" class="searchBtn">검색</a>
				</div>
			</div>
		</section>
		<!-- <section class="easyFind inner">
			<div class="easyFindBox">
				<a href="/shop/itemView?shopItemIdx=95">방찾기</a>
				<a href="/guest/notice/noticeList?reqPage=1">공지사항</a>
			</div>
		</section> -->
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
	
	
</div>
</body>
</html>