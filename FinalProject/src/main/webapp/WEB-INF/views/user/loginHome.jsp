<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>
<head>
	<meta charset="UTF-8">
	<title>다싸 로그인</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css">
	<link rel="stylesheet" type="text/css" href="../css/ui.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<script src="../../js/jquery-3.1.1.min.js"></script>
	<script src="../../js/ui.js"></script>
	<script src="../../js/jquery-ui-1.12.1.js"></script>
	<script src="../../js/include.js"></script>
</head>
<body>
<div class="container">
	<div class="login_wrap">
		<div class="logo_box">
			<span class="logo"></span>
		</div>
		<div class="login_group">
			<div class="login_box">
				<div class="login_tit">TOTAL ADMIN</div>
				<div class="login_txt">본 페이지는 인증이 필요한 관리자 페이지 입니다.</div>
			</div>
			<div class="login_box">
				<div class="tit_txt">관리자 로그인</div>
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