<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 작성</title>
</head>
<body>
	<div class="container">
		<!-- gnb -->
		<%@include file="/WEB-INF/views/manage/common/header.jsp"%>
		<div class="wrapper">
			<!-- lnb -->
			<%@include file="/WEB-INF/views/manage/board/page/leftSideNotice.jsp"%>

			<div class="contents">
				<div class="set_field">
					<div class="field_title">
						<span class="title_mark">■ 공지사항 작성</span>
					</div>
					<section class="section_notice">
					
					<form action="/manage/board/notice/noticeInsert" method="post" id="insert" enctype="multipart/form-data">
					<table class="set_table">
						<colgroup>
							<col width="250">
							<col width="*">
						</colgroup>
						<tr>
							<th>제목</th>
							<td><input class="board_input" name="noticeTitle">
							<input type="hidden" name="noticeState" value="정상"></td>
						</tr>
						<tr>
							<th>작성자</th>
							<td><input class="board_input" name="noticeWriter"></td>
						</tr>
						<tr>
							<th>분류</th>
							<td>
							<span class="sbox small">
								<select name="noticeType">
									<option value="사용자">사용자</option>
									<option value="부동산">부동산</option>
									<option value="기사">기사</option>
								</select>
							</span>
							</td>
						</tr>
						<tr>
							<th>파일</th>
							<td>
								<%-- <input type="file" name="noticeFilename" value="${noticeVO.noticeFilename }"><br>
								<input type="hidden" name="noticeFilepath" value="${noticeVO.noticeFilepath }"> --%>
								<div class="img_up_list">
									<div class="img_box">
										<input type="file" class="hide" accept="image/*" name="noticefilename" id="fileImg"
											   onchange="package.imgSel(this, event)">
										<a href="#none" class="upload_btn" onclick="package.imgUpload(this)"></a>
										<input type="hidden" name="noticefilepath" >
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea class="board_textarea" name="noticeContent"></textarea></td>
						</tr>
						<tr>
							<td colspan="2">
								<div class="board_button">
									<a href="#" onclick="document.getElementById('insert').submit();" class="board_Mobtn">등록</a>
									<a href="javascript:history.back()" class="board_Rebtn">취소</a>
								</div>
							</td>
						</tr>
					</table>
					</form>
				</div>
			</div>
			</section>
			<!-- 푸터 -->
			<?php include $_SERVER['DOCUMENT_ROOT'] . '/manager/common/page/footer.php'; ?>
		</div>
	</div>
	<script src="/manage/js/board/board.js"></script>
</body>
</html>