 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@include file="/WEB-INF/views/guest/common/header.jsp" %> --%>

<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		  content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<title>JM 관리자</title>
	<link rel="stylesheet" type="text/css" href="/manage/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/manage/css/ui.css">
	<link rel="stylesheet" type="text/css" href="/manage/css/style.css">
	<link rel="stylesheet" type="text/css" href="/manage/css/jquery-ui.min.css">
</head>
<style>
	
</style>
<body>
<div class="container">
	<header role="header" data-include="header.html"></header>
	<div class="wrapper">
		<header role="nav" data-include="reg_nav.html"></header>
		<div class="contents">
			<div class="set_field">
				<div class="field_title"><span class="title_mark">■</span>일반 회원가입</div>
				<table class="set_table">
					<colgroup>
						<col width="200">
						<col width="*">
					</colgroup>
					<tr>
						<th>아이디</th>
						<td><input type="text" class="tbox normal" name="userId"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" class="tbox normal" name="userPw"></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" class="tbox normal" name="userName"></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td>
							<input type="text" class="textbox full higher" name="userPhone"></textarea>
						</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>
							<input type="text" class="textbox full higher" name="userEmail"></textarea>
						</td>
					</tr>
				</table>

			</div>
			
			<div class="btn_group">
				<a href="javascript:void(0)" class="btn col_main">회원가입</a>
				<a href="javascript:void(0)" class="btn col_ash">취소</a>
			</div>

		</div>
	</div>
</div>
</body>

</html>