<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css"	href="/guest/css/notice/question.css">

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
	<div class="contents">
		<section class="mypage inner">
			<div class="sectionTitle">MY 다싸</div>
			
			<!-- 탭메뉴 -->
			<jsp:include page="/WEB-INF/views/guest/mypage/page/myTab.jsp"/>
			<!-- 컨텐츠 시작 -->
			<div class="mypageCon move">
				<div class="moveTitle">
					<span class="tit">문의 내역</span>
				</div>
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
									<td>${questionVO.questionsAnswer }
									<input type="hidden" name="questionsIndex" value="${questionVO.questionsIndex }">
									<input type="hidden" name="questionsState" value="${questionVO.questionsState }"></td>
								</tr>
								<tr>
									<td colspan="2">
										<div class="board_button">
											<a href="/my/myQuestionDelete?questionsIndex=${questionVO.questionsIndex }" class="board_Rebtn" style="background-color: gray;">삭제</a>
											<a href="javascript:history.back()" class="board_Rebtn">취소</a>
										</div>
									</td>
								</tr>
							</table>
						</div>
					</form>
		</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
	<script src="<c:url value="/guest/js/mypage/move.js"/>"></script>
</div>
</body>
</html>