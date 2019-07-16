<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1문의보기</title>
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
						<span class="title_mark">■ 1:1 문의답변</span>
					</div>
					<section class="section_question">
					<form action="/manage/board/question/questionUpdate" method="post" id="update">
						<div class="section_title"></div>
						<div class="set_form">
							<table class="set_table">
								<colgroup>
									<col width="180">
									<col width="*">
								</colgroup>
								<tr>
									<th>제목</th>
									<td>${questionVO.questionsTitle }</td>
								</tr>
								<tr>
									<th>작성자</th>
									<td>${questionVO.questionsWriter }</td>
								</tr>
								<tr>
									<th>내용</th>
									<td>
										<div class="text_con">${questionVO.questionsContent }</div>
									</td>
								</tr>
								<tr>
									<th>답변</th>
									<td><textarea class="board_textarea" name="questionsAnswer">${questionVO.questionsAnswer }</textarea>
									<input type="hidden" name="questionsIndex" value="${questionVO.questionsIndex }">
									<input type="hidden" name="questionsState" value="${questionVO.questionsState }"></td>
								</tr>
								<tr>
									<td colspan="2">
										<div class="board_button">
											<a href="#" onclick="document.getElementById('update').submit();" class="board_Mobtn">등록</a>
											<a href="javascript:history.back()" class="board_Rebtn">취소</a>
										</div>
									</td>
								</tr>
							</table>
						</div>
					</form>
					</section>
				</div>
			</div>
			<!-- 푸터 -->
			<?php include $_SERVER['DOCUMENT_ROOT'] . '/manager/common/page/footer.php'; ?>
		</div>
	</div>
</body>
</html>