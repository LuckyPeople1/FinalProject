<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!--
	@TODO 비밀번호 확인 컨트롤러 작업 요망
-->

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="mypage inner">
			<div class="sectionTitle">MY 다싸</div>
			
			<!-- 탭메뉴 -->
			<jsp:include page="/WEB-INF/views/guest/mypage/page/myTab.jsp"/>
			
			<!-- 컨텐츠 시작 -->
			<div class="mypageCon pwChk">
				<div class="pwChkTitleBox">
					<div class="tit">비밀번호 재확인</div>
					<div class="sub">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 입력해주세요.</div>
				</div>
				<div class="pwChkBox">
					<span class="pwTxt">비밀번호</span>
					<input class="tbox normal" type="password" name="pwChk" id="pwChk">
				</div>
				<div class="mypageBtnBox">
					<a href="javascript:history.back()" class="btn col_darkGrey f_w big">뒤로가기</a>
<%--					<a href="javascript:my.pwChk()" class="btn col_main f_w big">다음</a>--%>
					<a href="/my/info" class="btn col_main f_w big">다음</a>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
	<script src="<c:url value="/guest/js/mypage/my.js"/>"></script>
</div>
</body>
</html>