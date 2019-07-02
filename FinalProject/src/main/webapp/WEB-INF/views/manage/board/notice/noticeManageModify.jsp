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

					<div class="section">
						<div class="section_title"></div>
						<div class="set_form">
							<table class="table_set">
								<colgroup>
									<col width="180">
									<col width="*">
								</colgroup>
								<tr>
									<th>제목</th>
									<td><input class="tbox"></td>
								</tr>
								<tr>
									<th>내용</th>
									<td><textarea class="text_editor"></textarea></td>
								</tr>
								<tr>
									<th colspan="2">
										<div>
											<a href="javascript:javascript:void(0)" class="btn small col_main f_w">수정</a>
											<a href="javascript:history.back()" class="btn small col_darkGrey f_w">취소</a>
										</div>									
									</th>
								</tr>
							</table>
						</div>
					</div>

			</div>
		</div>
		<!-- 푸터 -->
		<?php include $_SERVER['DOCUMENT_ROOT'] . '/manager/common/page/footer.php'; ?>
	</div>
	</div>
</body>
</html>