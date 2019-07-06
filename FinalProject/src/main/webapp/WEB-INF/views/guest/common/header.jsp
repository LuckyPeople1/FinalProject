<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
	<h1 class="logo">
		<a href="/" class="logoBtn"></a>
	</h1>
	<div class="rolePageBox">
		<a href="/shop/">프로중개사 사이트</a>
		<a href="#none">방주인 사이트</a>
		<a href="/driver/">운송기사 사이트</a>
		<a href="/manage/">관리자 사이트</a>
	</div>
	<div class="rightMenu">
		<nav class="mainNav">
			<a href="/mapView">방찾기</a>
			<a href="/saleInLots/" class="new">분양</a>
			<a href="#none">관심목록</a>
			<a href="#none">방내놓기</a>
			<a href="#none">알림</a>
			<a href="/move/step1">이사하기</a>
		</nav>
		<div class="loginMenu">
			<c:if test="${not empty sessionScope.user}">
				<div id="login_sessionUser_userName">[${sessionScope.user.userName }] 님 반갑습니다.</div> <a href="/login/logout">로그아웃</a>
			</c:if>
			<c:if test="${empty sessionScope.user}">
				<a href="/login/">로그인</a>
				<a href="/insert/accept">회원가입</a>
			</c:if>
		</div>
	</div>

</header>
