<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="/guest/css/login/login-ui.css">
<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
	<section id="guest_loginHome">
		<div class="login_wrap">
			<div class="logo_box">
				<span class="logo"></span>
			</div>
			<form action="/login/commonLogin" method="post" id="login">
				<div class="login_group">
					<div class="login_box">
						<div class="tit_txt">로그인</div>
						<div class="login_input_box">
							<span class="mark">
								<i class="ico ico_id"></i>
							</span>
							<input type="text" name="userId" id="id_input">
						</div>
						<div class="login_input_box">
							<span class="mark">
								<i class="ico ico_pw"></i>
							</span>
							<input type="password" name="userPw" id="pw_input" required>
						</div>
						<button type="submit" id="guest_login_btn" class="login_btn">LOGIN</button>
						<br>
						<a id="kakao-login-btn"></a>
						<a id="naverIdLogin"></a>
					</div>
				</div>
			</form>
		</div>
	</section>
</div>
<script src="/guest/js/login/loginHome.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="/guest/js/login/kakaoLogin.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
		charset="utf-8"></script>
<script src="/guest/js/login/naverLogin.js"></script>
</body>
</html>