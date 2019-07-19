<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일-->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.img_up_list .img_box .upload_btn {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    top: 0;
    z-index: 5;
}
button, a {
    margin: 0;
    border: none;
    outline: none;
    line-height: inherit;
    cursor: pointer;
    padding: 0;
    font-size: 13px;
    white-space: nowrap;
}
.img_up_list .img_box {
    display: inline-block;
    vertical-align: top;
    margin: 0 8px;
    border: 1px solid #ccc;
    overflow: hidden;
    position: relative;
    height: 120px;
    width: 120px;
    background: url(../img/icon_imgUp.png) no-repeat center;
}
.img_up_list .img_box:first-child {
    border-color: #3A5889;
}
</style>
</head>
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/driver/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/driver/page/nav_notice.jsp" %>    <!--맨왼쪽 2번째 네비 메뉴 (마이페이지 메뉴)  -->
	</nav>
		<div class="contents">
		<div class="page_header">
			<div class="page_title">공지사항 작성</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title"></div>
			<div class="set_form">
			<form action="/driver/board/driverNoticeInsert" method="post" id="insert" enctype="multipart/form-data">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
					</colgroup>
					<tr>
						<th>제목</th>
						<td>
							<input class="tbox full" name="noticeTitle">
							<input type="hidden" name="noticeType" value="기사">
						</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>
							<input class="tbox full" name="noticeWriter">
							<input type="hidden" name="noticeState" value="정상">
						</td>
					</tr>
						<tr>
							<th>파일</th>
							<td>
								<div class="img_up_list">
									<div class="img_box">
										<input type="file" class="hide" accept="image/*" name="noticefilename" id="fileImg" onchange="package.imgSel(this, event)">
											<a href="#none" class="upload_btn" onclick="package.imgUpload(this)"></a> 
											<input type="hidden" name="noticefilepath">
									</div>
								</div>
							</td>
						</tr>
						<tr>
						<th>내용</th>
						<td>
							<textarea class="text_editor" style="resize: none;" name="noticeContent"></textarea>
						</td>
					</tr>
				</table>
				</form>
			</div>
			<div class="btnWrap">
				<a href="javascript:history.back()" class="btn col_darkGrey bigger f_w">취소</a>
				<a href="#" onclick="document.getElementById('insert').submit();" class="btn col_red bigger f_w ml10">작성</a>
			</div>
		</div>

	</div>
	<footer role="footer" data-include="footer.html"></footer>
</div>
	<script src="/manage/js/board/board.js"></script>

</div>
</body>
</html>