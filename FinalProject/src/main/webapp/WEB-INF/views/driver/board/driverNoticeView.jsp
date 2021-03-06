<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일-->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/driver/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/driver/page/nav_notice.jsp" %>    <!--맨왼쪽 2번째 네비 메뉴 (마이페이지 메뉴)  -->
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
							<input type="hidden" name="noticeType" value="기사">
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
</div>
	<footer role="footer" data-include="footer.html"></footer>
</body>
</html>