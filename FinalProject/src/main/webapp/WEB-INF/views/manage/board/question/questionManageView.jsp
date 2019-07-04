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
					<div class="section_title"></div>
					<div class="set_form">
						<table class="set_table">
							<colgroup>
								<col width="180">
								<col width="*">
							</colgroup>
							<tr>
								<th>제목</th>
								<td>예약을 했는데, 말 없이 방문을 안하면 어떻게 되나요?</td>
							</tr>
							<tr>
								<th>내용</th>
								<td>
									<div class="text_con">
										어제 예약을 했는데, 깜빡하고 방문을 안했습니다.<br /> 어제 예약을 했는데, 깜빡하고 방문을 안했습니다.<br />
										어제 예약을 했는데, 깜빡하고 방문을 안했습니다. 어떡하죠<br /> 어제 예약을 했는데, 깜빡하고 방문을
										안했습니다. 어떡하죠<br /> 어제 예약을 했는데, 깜빡하고 방문을 안했습니다. 어떡하죠<br /> 어제
										예약을 했는데, 깜빡하고 방문을 안했습니다. 어떡하죠
									</div>
								</td>
							</tr>
							<tr>
								<th>답변</th>
								<td><textarea class="board_textarea"></textarea></td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="board_button">
										<a href="javascript:javascript:void(0)" class="board_Mobtn">수정</a>
										<a href="javascript:history.back()" class="board_Rebtn">취소</a>
									</div>
								</td>
							</tr>
						</table>
					</div>

					</section>
				</div>
			</div>
			<!-- 푸터 -->
			<?php include $_SERVER['DOCUMENT_ROOT'] . '/manager/common/page/footer.php'; ?>
		</div>
	</div>
</body>
</html>