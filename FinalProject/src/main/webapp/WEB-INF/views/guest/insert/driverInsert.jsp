 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
<head>
	<link rel="stylesheet" type="text/css" href="/guest/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/guest/css/ui.css">
	<link rel="stylesheet" type="text/css" href="/guest/css/style.css">
	<link rel="stylesheet" type="text/css" href="/guest/css/jquery-ui.min.css">
	<link rel="stylesheet" type="text/css" href="/guest/css/commonInsert-ui.css">
	<title>다싸</title>
	<script src="/guest/js/jquery-3.1.1.min.js"></script>
	<script src="/guest/js/jquery-ui-1.12.1.js"></script>
	<script src="/guest/js/ui.js"></script>
</head>
<body>
<section id="commonInsert_container">
	<div class="commonInsert_wrapper">
		<div class="commonInsert_contents">
			<div class="commonInsert_field">
				<div class="commonInsert_title">
					일반 회원가입
				</div>
				<form action="/insert/commonInsert" method="post">
					<table class="commonInsert_table">
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
								<input type="text" class="tbox normal" name="userPhone">
							</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<input type="text" class="tbox post" id="insert_post_code" name="userPostCode" placeholder="우편번호">
								<button type="button" onclick="findPost()" >우편번호 찾기</button><br>
								<input type="text" class="tbox normal" id="insert_user_addr" name="userAddr" placeholder="주소">
								<input type="text" class="tbox second_post" id="insert_detail_addr" name="userdetailAddr" placeholder="상세주소">
								<input type="text" class="tbox second_post" id="insert_extra_item" name="userExtraAddr" placeholder="참고항목">
							</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>
								<input type="text" class="tbox normal" name="userEmail" >
								<input type="hidden" name="userType" value="1">
							</td>
						</tr>
								
					</table>
					<div class="commonInsert_btn_group">
						<button type="submit" class="btn insert_user">회원가입</button>
						<button type="reset" class="btn insert_reset">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
</body>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/guest/js/insertcommon-post.js"></script>
</html>