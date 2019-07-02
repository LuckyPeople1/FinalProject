<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
<body>
<section id="guest_loginHome">
	<div class="container">
		<div class="login_wrap">
			<div class="logo_box">
				<span class="logo"></span>
			</div>
			<form method="post" id="login">
				<div class="login_group">
					<div class="login_box">
						<div class="tit_txt">로그인</div>
						<div class="input_box">
							<span class="mark">
								<i class="ico ico_id"></i>
							</span>
							<input type="text" name="userId">
						</div>
						<div class="input_box">
							<span class="mark">
								<i class="ico ico_pw"></i>
							</span>
							<input type="password" name="userPw">
						</div>
						<a href="javascript:$('#login').submit()" class="login_btn">LOGIN</a><br>
						<a href="#none" class="">LOGIN</a>
						<a href="#none" class="">LOGIN</a>
						<a id="kakao-login-btn"></a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
</body>
</html>