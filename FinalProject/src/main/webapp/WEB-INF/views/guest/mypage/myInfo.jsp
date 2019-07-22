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
					<div class="imgBox">
						 <c:choose>
							<c:when test="${user.proFilename } == null && ${user.proFilename } == ''">
								<input type="file" id="profileImg" name="profileImg" style="display:none;"/>
								<input type="file" class="hide" accept="image/*" name="proFilename" id="fileImg"
									   onchange="package.imgSel(this, event)" value="${user.proFilename }">
							</c:when>
							<c:otherwise>
								<img src="/guest/img/img_profile_default.png" alt="프로필">
								<input type="file" class="hide" accept="image/*" name="proFilename" id="fileImg"
									   onchange="package.imgSel(this, event)" value="${user.proFilename }">
							</c:otherwise>
						</c:choose> 
					</div>
					<div class="profileBtn">
						<div class="img_up_list">
							<div class="img_box">
								<a href="#none" onclick="package.imgUpload(this)">프로필 사진 변경</a>
								<input type="hidden" name="proFilepath" value="${user.proFilename }">
							</div>
						</div>
					</div>
				</div>
				<div class="setInfoBox">
					<div class="row">
						<div class="subject">본인성명</div>
						<input class="tbox" value="${user.userName }" id="userName" name="userName">
					</div>
					<div class="row">
						<div class="subject">새비밀번호</div>
						<input type="password" class="tbox" name="userPw" id="userPw">
						<span id="pwCheck" class="infoTxt"></span>
					</div>
					<div class="row">
						<div  class="subject">새비밀번호</div>
						<input type="password" class="tbox" name="userPwChk" id="userPwChk">
						<span id="pwChk" class="infoTxt"></span>
					</div>
				</div>
				<div class="mypageBtnBox">
					<a href="/my/" class="btn col_darkGrey f_w big">취소</a>
					<a href="javascript:my.modiInfo(${user.userIdx })" class="btn col_main f_w big">수정</a>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
	<script src="<c:url value="/guest/js/mypage/my.js"/>"></script>
</div>
</body>
<script src="/guest/js/insert/insertdriver.js"></script>
</html>