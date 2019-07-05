<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		  content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<title>다싸</title>
	<link rel="stylesheet" type="text/css" href="/guest/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/guest/css/ui.css">
	<link rel="stylesheet" type="text/css" href="/guest/css/style.css">
	<link rel="stylesheet" type="text/css" href="/guest/css/jquery-ui.min.css">
	<link rel="stylesheet" type="text/css" href="/guest/css/login-ui.css">
	<script src="/guest/js/jquery-3.1.1.min.js"></script>
	<script src="/guest/js/jquery-ui-1.12.1.js"></script>
	<script src="/guest/js/ui.js"></script>
</head>
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
							<input type="text" name="userId" id="id_input" >
						</div>
						<div class="login_input_box">
							<span class="mark">
								<i class="ico ico_pw"></i>
							</span>
							<input type="password" name="userPw" id="pw_input" required>
						</div>
						<button type="submit" id="guest_login_btn" class="login_btn">LOGIN</button><br>
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
		$("#guest_login_btn").click(function(){
			var id = $("#id_input").val();
			var pw = $("#pw_input").val();
			console.log($("#id_input").val());
			if(id == ""){
				alert("아이디를 입력해주세요");
				return false;
			}
			if(pw == ""){
				alert("비밀번호를 입력해주세요");
				return false;
			}
		});
	});
</script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="/guest/js/kakaoLogin.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="/guest/js/naverLogin.js"></script>
</html>