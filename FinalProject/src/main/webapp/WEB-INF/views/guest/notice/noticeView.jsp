<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>사용자 공지사항</title>
<link rel="stylesheet" type="text/css" href="/guest/css/notice/notice.css">
<style type="text/css">

</style>
</head>
<body>
	<div class="container">
		<!-- gnb -->
		<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
		<div class="wrapper">

			<div class="contents">
				<div class="set_field">
					<div class="field_title">
						<h3 style="color:black; padding:30px; margin-left:170px;">■ 공지사항</h3>
					</div>
					<section class="noticeList">
					<center>
					<table class="set_table">
						<colgroup>
							<col width="180">
							<col width="*">
						</colgroup>
						<tr>
							<th>제목</th>
							<td>${noticeVO.noticeTitle }
							<input type="hidden" name="faqState" value="정상"></td>
						</tr>
						<tr>
							<th>등록일</th>
							<td>${noticeVO.noticeRegDate }</td>
						</tr>
						<tr>
							<th id="Vcon">내용</th>
							<td><c:if test="${noticeVO.noticeFilename !=null}">
							<img src="/upload/board/${noticeVO.noticeFilename }"><br>
							</c:if>
							${noticeVO.noticeContent }</td>
						</tr>
						<tr>
							<td colspan="2">
								<div class="board_button">
									<a href="javascript:history.back()"	class="board_Rebtn">목록으로</a>
								</div>
							</td>
						</tr>
					</table></center>
					</form>
				</div>
			</div>

		</section>
				<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
		</div></div>
</body>
</html>