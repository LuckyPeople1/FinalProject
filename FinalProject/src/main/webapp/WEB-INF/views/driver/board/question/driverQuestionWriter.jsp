<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css"	href="/guest/css/notice/notice.css">
</head>
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/driver/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/driver/page/nav_notice.jsp" %>    <!--맨왼쪽 2번째 네비 메뉴 (마이페이지 메뉴)  -->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">1:1문의작성</div>
			<div class="page_sub_title"></div>
		</div>
			
			
				<section class="noticeList">
				<div class="styled__Content-sc-1bvtbsc-1 iAegdM">
					
					<div class="styled__Wrap-sc-1v9ngdo-0 eugBve">
						<h1 class="styled__Name-sc-1v9ngdo-1 cYaAqA">고객센터</h1>
						<p class="styled__Tel-sc-1v9ngdo-2 mWqem">02-1234-5678</p>
						<p class="styled__OpenTime-sc-1v9ngdo-3 csQndh">평일 10:00 ~ 18:30 (토, 일요일, 공휴일 휴무)</p>
						<form action="/driver/board/question/driverQuestionInsert" method="post">
						<ul class="styled__Ul-sc-1v9ngdo-4 hIJwlj">
							<li><p class="styled__Title-sc-1v9ngdo-5 efvxco">제목<input type="hidden" name="questionsWriter" value="${sessionScope.user.userId }"></p>
								<input autocomplete="off" class="styled__TitleInput-sc-1v9ngdo-6 ilgADB Input-sfsekm-0 kTQnUD" name="questionsTitle">
								<input type="hidden" style="float:left;" class="" name="questionsUserType" value="기사"></li>
							<li><p class="styled__Title-sc-1v9ngdo-5 efvxco">문의내용</p><input type="hidden" name="questionsAnswerState" value="미답변"><input type="hidden" name="questionsState" value="정상">
								<textarea class="styled__InquiryArea-sc-1v9ngdo-7 bqTGEL Textarea-sc-6jro6l-0 hunnDM" name="questionsContent" placeholder="내용을 입력하세요."></textarea></li>
						</ul>
						<div class="styled__BtnWrap-sc-1v9ngdo-8 cxBJwZ">
							<button type="submit" style="background-color: blue; width:25%; height: 50px; color: white; border: none; cursor: :pointer;">전송하기</button>
						</div>
						</form>
					</div>

				</div>
				</section>
			</div>
	<footer role="footer" data-include="footer.html"></footer>
</div>
</body>
</html>