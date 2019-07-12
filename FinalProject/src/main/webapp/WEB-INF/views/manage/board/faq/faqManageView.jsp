<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FAQ뷰</title>
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
						<span class="title_mark">■ FAQ뷰</span>
					</div>
					<section class="section_notice">
					<table class="set_table">
						<colgroup>
							<col width="250">
							<col width="*">
						</colgroup>
						<tr>
							<th>제목</th>
							<td>${faqVO.faqQuestion }</td>
						</tr>
						<tr>
							<th>분류</th>
							<td>
								${faqVO.faqUserType}
							</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
							${faqVO.faqAnswer }</td>
						</tr>
						<tr>
							<td colspan="2">
								<div class="board_button">
									<a href="/manage/board/faq/faqManageList?reqPage=1" class="board_Rebtn">목록으로</a>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
			</section>
		<!-- 푸터 -->
		<?php include $_SERVER['DOCUMENT_ROOT'] . '/manager/common/page/footer.php'; ?>
	</div>
	</div>
</body>
</html>