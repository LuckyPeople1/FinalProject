<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>
<body>
<div class="container">
	<div class="login_wrap">
		<div class="logo_box">
			<span class="logo"></span>
		</div>
		<div class="login_group">
			<div class="login_box">
				<div class="login_tit"></div>
				<div class="login_txt"></div>
			</div>
			<div class="login_box">
				<div class="tit_txt">로그인</div>
				<div class="input_box">
					<span class="mark">
						<i class="ico ico_id"></i>
					</span>
					<input>
				</div>
				<div class="input_box">
					<span class="mark">
						<i class="ico ico_pw"></i>
					</span>
					<input>
				</div>
				<a href="#none" class="login_btn">LOGIN</a>
			</div>
		</div>
	</div>
</div>
</body>
</html>