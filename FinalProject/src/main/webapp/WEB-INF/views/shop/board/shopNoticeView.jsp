<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css">
	<link rel="stylesheet" type="text/css" href="../css/ui.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<script src="../js/jquery-3.1.1.min.js"></script>
	<script src="../js/jquery-ui-1.12.1.js"></script>
	<script src="../js/ui.js"></script>
	<script src="../js/include.js"></script>
</head>
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_board.jsp" %>   <!--맨왼쪽  서브네비 메뉴-->
	</nav>
		<div class="contents">
		<div class="page_header">
			<div class="page_title">공지사항 상세페이지</div>
			<div class="page_sub_title"></div>
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
						<td>
							${noticeVO.noticeTitle }
							<input type="hidden" name="noticeType" value="부동산">
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
							${noticeVO.noticeWriter }
							<input type="hidden" name="noticeState" value="정상">
						</td>
					</tr>

					<tr>
						<th>내용</th>
						<td>
						<c:if test="${noticeVO.noticeFilename !=null}">
							<img src="/upload/board/${noticeVO.noticeFilename }"><br>
						</c:if>
						${noticeVO.noticeContent }</td>
					</tr>
						</table>
			</div>
			<div class="btnWrap">
				<a href="javascript:history.back()" class="btn col_darkGrey bigger f_w">목록으로</a>
			</div>
		</div>

	</div>
	<footer role="footer" data-include="footer.html"></footer>
</div>
	<script src="/manage/js/board/board.js"></script>

</body>
</html>