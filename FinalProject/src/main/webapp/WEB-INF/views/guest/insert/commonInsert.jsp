 <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
<script src="http://code.jquery.com/jquery-3.4.0.js"></script>
<head>
	<link rel="stylesheet" type="text/css" href="/guest/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/guest/css/ui.css">
	<link rel="stylesheet" type="text/css" href="/guest/css/style.css">
	<link rel="stylesheet" type="text/css" href="/guest/css/jquery-ui.min.css">
	<link rel="stylesheet" type="text/css" href="/guest/css/insert/commonInsert-ui.css">
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
						<c:choose>
							<c:when test="${empty socialId }">
								<tr>
									<th>아이디</th>
									<td><input type="text" class="tbox normal" name="userId" id="userId"><button type="button" class="regCheckBtn">중복체크</button><span id="idCheck" class="regCheck"></span></td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td><input type="password" class="tbox normal" name="userPw" id="userPw"><span id="pwCheck" class="regCheck"></span></td>
								</tr>
							</c:when>
							<c:when test="${not empty socialId }">
								<tr>
									<th>아이디</th>
									<td><input type="hidden" class="tbox normal" name="userId"></td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td><input type="hidden" class="tbox normal" name="userPw"></td>	
								</tr>
							</c:when>
						</c:choose>
						<tr>
							<th>이름</th>
							<td><input type="text" class="tbox normal" name="userName" id="userName"><span id="nameCheck" class="regCheck"></span></td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td><input type="text" class="tbox normal" name="userPhone" id="userPhone"><span id="phoneCheck" class="regCheck"></span></td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<input type="text" class="tbox post" id="insert_post_code" name="userPostCode" placeholder="우편번호" readonly="readonly">
								<button type="button" onclick="findPost()" >우편번호 찾기</button><br>
								<input type="text" class="tbox normal" id="insert_user_addr" name="userAddr" placeholder="주소" readonly="readonly">
								<input type="text" class="tbox second_post" id="insert_detail_addr" name="userdetailAddr" placeholder="상세주소">
								<input type="text" class="tbox second_post" id="insert_extra_item" name="userExtraAddr" placeholder="참고항목" readonly="readonly">
							</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>
								<input type="text" class="tbox normal" name="userEmail" id="userEmail"><span id="emailCheck" class="regCheck"></span>
								<input type="hidden" name="userType" value="1">
							</td>
						</tr>
								
					</table>
					<div class="commonInsert_btn_group">
						<button type="submit" class="btn insert_user" id="insertUser">회원가입</button>
						<button type="reset" class="btn insert_reset">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
</body>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/guest/js/insert/insertcommon-post.js"></script>
<script src="/guest/js/insert/insertcommon.js"></script> 
</html>