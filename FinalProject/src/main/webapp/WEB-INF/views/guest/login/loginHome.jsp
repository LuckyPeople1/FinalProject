<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
<link rel="stylesheet" type="text/css" href="/guest/css/login-ui.css">
<section id="guest_loginHome">
	<div class="container">
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
							<input type="password" name="userPw" id="pw_input">
						</div>
						<a href="javascript:$('#login').submit()" id="guest_login_btn" class="login_btn">LOGIN</a><br>
						<a id="kakao-login-btn"></a><a id="naverIdLogin"></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
</body>
<script>
	$(document).ready(function(){
		$("#guest_login_btn").click(function(e){
			var id = $("#id_input").val();
			console.log($("#id_input").val());
			if(id == null){
				alert("id를 입력하세요.");
				e.preventDefault();
				e.stopPropagation();
			}
		});
	});
</script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="/guest/js/kakaoLogin.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="/guest/js/naverLogin.js"></script>
</html>