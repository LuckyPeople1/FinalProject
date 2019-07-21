<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="description"
	content="Mind freaker stuff (Mindfreakerstuff.com) is a blog for Design inspiration, tutorials and latest mobile/Gadgets review . Learn Design Theory, Typography, Website Design, MS office Tips and latest android mobiles/apps more.">
<link rel="stylesheet" type="text/css"	href="/guest/css/notice/notice.css">
</head>

<body>

	<div class="styled__Main-sc-1bvtbsc-0 cwWDoG">
		<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
		<div class="container">
			<div class="contents">
				<section class="noticeList">
				<div class="styled__Content-sc-1bvtbsc-1 iAegdM">
					<div class="styled__Wrap-sc-1pis5dj-0 kxQgzk">
						<h1 class="styled__Title-sc-1pis5dj-1 gHsEax">문의하기</h1>
						<ul class="styled__Tabs-sc-1pis5dj-2 hvbeFO">
							<li><a href="/guest/notice/faqList?reqPage=1">자주 묻는 질문</a></li>
							<li><a class="active" href="/guest/notice/question" aria-current="page">1:1 문의</a></li>
							<li><a href="/guest/notice/noticeList?reqPage=1">공지사항</a></li>
						</ul>
					</div>
					<div class="styled__Wrap-sc-1v9ngdo-0 eugBve">
						<h1 class="styled__Name-sc-1v9ngdo-1 cYaAqA">고객센터</h1>
						<p class="styled__Tel-sc-1v9ngdo-2 mWqem">02-1234-5678</p>
						<p class="styled__OpenTime-sc-1v9ngdo-3 csQndh">평일 10:00 ~ 18:30 (토, 일요일, 공휴일 휴무)</p>
						<form action="/guest/notice/questionInsert" method="post">
						<ul class="styled__Ul-sc-1v9ngdo-4 hIJwlj">
							<li><p class="styled__Title-sc-1v9ngdo-5 efvxco">제목<input type="hidden" name="questionsWriter" value="test1"></p>
								<input autocomplete="off" class="styled__TitleInput-sc-1v9ngdo-6 ilgADB Input-sfsekm-0 kTQnUD" name="questionsTitle"  required>
								<input type="hidden" style="float:left;" class="" name="questionsUserType" value="일반"></li>
								
							<li><p class="styled__Title-sc-1v9ngdo-5 efvxco">문의내용</p><input type="hidden" name="questionsAnswerState" value="미답변"><input type="hidden" name="questionsState" value="정상">
								<textarea class="styled__InquiryArea-sc-1v9ngdo-7 bqTGEL Textarea-sc-6jro6l-0 hunnDM" name="questionsContent" placeholder="내용을 입력하세요."required></textarea></li>
						</ul>
						<div class="styled__BtnWrap-sc-1v9ngdo-8 cxBJwZ">
							<button type="submit" style="background-color: blue; width: 25%; height: 50px; color: white; border: none; cursor:pointer;">전송하기</button>
						</div>
						</form>
					</div>

				</div>
				</section>
			</div>
			<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
		</div>
</div>
</body>
</html>