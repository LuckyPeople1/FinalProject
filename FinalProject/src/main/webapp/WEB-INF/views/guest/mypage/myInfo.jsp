<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="mypage inner">
			<div class="sectionTitle">MY 다싸</div>
			
			<!-- 탭메뉴 -->
			<jsp:include page="/WEB-INF/views/guest/mypage/page/myTab.jsp"/>
			
			<!-- 컨텐츠 시작 -->
			<div class="mypageCon myInfo">
				<div class="profileBox">
					<input type="file" id="profileImg" name="profileImg" style="display:none;"/>
					<div class="imgBox">
						<img src="/guest/img/img_profile_default.png" alt="프로필">
					</div>
					<div class="profileBtn">
						<a href="#none">프로필 사진 변경</a>
					</div>
				</div>
				<div class="setInfoBox">
					<div class="row">
						<div class="subject">본인성명</div>
						<input class="tbox">
					</div>
					<div class="row">
						<div class="subject">새비밀번호</div>
						<input class="tbox">
						<div class="infoTxt">설명할 게 있다면 여기에..</div>
					</div>
					<div class="row">
						<div class="subject">새비밀번호</div>
						<input class="tbox">
					</div>
				</div>
				<div class="mypageBtnBox">
					<a href="/my/" class="btn col_darkGrey f_w big">취소</a>
					<a href="/my/info" class="btn col_main f_w big">수정</a>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
	<script src="<c:url value="/guest/js/mypage/my.js"/>"></script>
</div>
</body>
</html>