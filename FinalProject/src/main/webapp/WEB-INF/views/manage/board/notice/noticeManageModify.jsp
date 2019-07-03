<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항 수정</title>
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
						<span class="title_mark">■ 공지사항 수정</span>
					</div>
					<section class="section_notice">
					<form action="/manage/board/notice/noticeUpdate" method="get">
					<table class="set_table">
						<colgroup>
							<col width="250">
							<col width="*">
						</colgroup>
						<tr>
							<th>제목</th>
							<td><input class="board_input" name="noticeTitle" value="${noticeVO.noticeTitle }"></td>
						</tr>
						<tr>
							<th>파일</th>
							<td>
								<input type="file" name="noticeFilename" value="${noticeVO.noticeFilename }"><br>
								<input type="hidden" name="noticeFilepath" value="${noticeVO.noticeFilepath }">
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea class="board_textarea" name="noticeContent">${noticeVO.noticeContent }</textarea>
							<input type="hidden" value="${noticeVO.noticeIndex}" name="noticeIndex"></td>
						</tr>
						<tr>
							<td colspan="2">
								<div class="board_button">
									<input type="submit" class="board_Mobtn" value="수정">
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
</body>
</html>