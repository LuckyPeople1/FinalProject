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
					<div class="commonInsert_title">
						부동산 회원가입
					</div>
					<form action="/insert/shopInsert" method="post" enctype="multipart/form-data">
						<table class="commonInsert_table">
							<colgroup>
								<col width="200">
								<col width="*">
							</colgroup>
							<tr>
								<th>아이디</th>
								<td><input type="text" class="tbox normal" name="userId" id="userId"><button type="button" class="regCheckBtn">중복체크</button><span id="idCheck" class="regCheck"></span></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td><input type="password" class="tbox normal" name="userPw" id="userPw"><span id="pwCheck" class="regCheck"></span></td>
							</tr>
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
									<input type="hidden" name="userType" value="1">
								</td>
							</tr>
							<tr>
								<th>자기소개</th>
								<td>
									<textarea class="tbox normal" name="userIntro" id="userIntro" placeholder="본인을 소개해 주세요."></textarea>
								</td>
							</tr>
							<tr>
								<th>중개 등록번호</th>
								<td>
									<input type="text" class="tbox normal" name="regisNum" id="regisNum">
								</td>
							</tr>
							<tr>
								<th>사업자 등록번호</th>
								<td>
									<input type="text" class="tbox normal" name="busNum" id="busNum">
								</td>
							</tr>
							<tr>
								<th>파일 첨부</th>
								<td>
									<div class="img_up_list" style="float:left;">
										<div class="img_box">
											<input type="file" class="hide" accept="image/*" name="compFilename" id="fileImg"
												   onchange="package.imgSel(this, event)" value="${noticeVO.noticeFilename }">
											<a href="#none" class="upload_btn" onclick="package.imgUpload(this)"></a>
											<input type="hidden" name="compFilepath" value="${noticeVO.noticeFilename }">
										</div>
									</div>
									<div class="img_up_list">
										<div class="img_box">
											<input type="file" class="hide" accept="image/*" name="compFilename1" id="fileImg"
												   onchange="package.imgSel(this, event)" value="${noticeVO.noticeFilename }">
											<a href="#none" class="upload_btn" onclick="package.imgUpload(this)"></a>
											<input type="hidden" name="compFilepath" value="${noticeVO.noticeFilename }">
										</div>
									</div>
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/guest/js/insert/insertcommon-post.js"></script>
<script src="/guest/js/insert/insertcommon.js"></script>
<script src="/guest/js/insert/insertdriver.js"></script>
</body>
</html>