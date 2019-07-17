<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="/guest/css/insert/commonInsert-ui.css">
<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
	<section id="commonInsert_container">
		<div class="commonInsert_wrapper">
			<div class="commonInsert_contents">
				<div class="commonInsert_field">
					<c:choose>
						<c:when test="${not empty socialId }">
							<div class="commonInsert_title">
								추가 정보 입력
							</div>
						</c:when>
						<c:otherwise>
							<div class="commonInsert_title">
								일반 회원가입
							</div>
						</c:otherwise>
					</c:choose>
					<form action="/insert/commonInsert" method="post">
						<table class="commonInsert_table">
							<colgroup>
								<col width="200">
								<col width="*">
							</colgroup>
							<c:choose>
								<c:when test="${not empty socialId }">
									<input type="hidden" class="tbox normal" name="socialId" value=${socialId }>
									<input type="hidden" class="tbox normal" name="userId">
									<input type="hidden" class="tbox normal" name="userPw">	
								</c:when>
								<c:otherwise>
									<tr>
										<th>아이디</th>
										<td><input type="text" class="tbox normal" name="userId" id="userId"><button type="button" class="regCheckBtn">중복체크</button><span id="idCheck" class="regCheck"></span></td>
									</tr>
									<tr>
										<th>비밀번호</th>
										<td><input type="password" class="tbox normal" name="userPw" id="userPw"><span id="pwCheck" class="regCheck"></span></td>
									</tr>
								</c:otherwise>
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
									<input type="hidden" class="tbox second_post" id="insert_extra_item" name="userExtraAddr" placeholder="참고항목" readonly="readonly">
									<input type="text" class="tbox second_post" id="insert_detail_addr" name="userdetailAddr" placeholder="상세주소">
								</td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>
									<input type="text" class="tbox normal" name="userEmail" id="userEmail"><span id="emailCheck" class="regCheck"></span>
									<input type="hidden" name="userType" value="3">
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
</div>	
</body>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/guest/js/insert/insertcommon-post.js"></script>
<script src="/guest/js/insert/insertcommon.js"></script> 
</html>