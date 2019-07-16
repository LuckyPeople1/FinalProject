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
<link rel="stylesheet" type="text/css" href="/guest/css/notice/notice.css">
</head>
<style>
.table_list{
	border: 1px solid black;
}
.table_list tr td{
	width: 70%;
	height: 30px;
}
</style>
<body>
		<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="container">
		<div class="contents">
			<section class="noticeList">
			<h1 class="styled__Title-sc-1pis5dj-1 gHsEax">문의하기</h1>
			<ul class="styled__Tabs-sc-1pis5dj-2 hvbeFO"><li><a href="/service/faq">자주 묻는 질문</a></li><li><a href="/service/inquiry">1:1 문의</a></li><li><a class="active" aria-current="page" href="/service/notice">공지사항</a></li></ul>
			<ul class="styled__Ul-sc-5kwp9x-0 qUCQS"><li class="styled__Header-sc-5kwp9x-1 pbYHJ"><p>제목</p><p>날짜</p></li><li class="styled__Item-sc-5kwp9x-2 bryRNw"><a href="https://blog.naver.com/dabangapp/221454899401" target="_blank" rel="noopener noreferrer"><p class="styled__Title-sc-5kwp9x-3 jDHSEw">[공지사항] 다방 주요 서비스 개인정보 처리방침 주요 개정사항 </p><p class="styled__Time-sc-5kwp9x-4 dJQhTV">2019.01.18</p></a></li><li class="styled__Item-sc-5kwp9x-2 bryRNw"><a href="https://blog.naver.com/dabangapp/221454884401" target="_blank" rel="noopener noreferrer"><p class="styled__Title-sc-5kwp9x-3 jDHSEw">[공지사항] 다방 이용약관 변경 사전 안내</p><p class="styled__Time-sc-5kwp9x-4 dJQhTV">2018.08.09</p></a></li></ul>











			<!-- <div class="tabcontainer">
			<h1 id="hh1">문의하기</h1>
				<ul class="tabs">
					<li><a href="#tab1">공지사항</a></li>
					<li><a href="#tab2">1:1 문의하기</a></li>
					<li><a href="#tab3">자주 묻는 질문</a></li>

				</ul>
				<div class="tab_container">
					<div id="tab1" class="tab_content">
						<table class="table_list">
							<tr>
								<td>제목</td><td>등록일</td>
							</tr>
							<c:forEach items="${list }" var="n">
							<tr>
								<td><a href="/guest/notice/noticeView?noticeIndex=${n.noticeIndex }">${n.noticeTitle }</a></td>
								<td>${n.noticeRegDate }<input type="hidden" name="${n.noticeIndex }"></td>
							</tr>

						</c:forEach>
						</table><br><br>
						<div id="pageNavi">${pageNavi}</div>
					</div>
					<div id="tab2" class="tab_content">

						<p>Lorem Ipsum is simply dummy text of the printing and
							typesetting industry. Lorem Ipsum has been the industry's
							standard dummy text ever since the 1500s, when an unknown printer
							took a galley of type and scrambled it to make a type specimen
							book. It has survived not only five centuries, but also the leap
							into electronic typesetting, remaining essentially unchanged. It
							was popularised in the 1960s with the release of Letraset sheets
							containing Lorem Ipsum passages, and more recently with desktop
							publishing software like Aldus PageMaker including versions of
							Lorem Ipsum.</p>
					</div>
					<div id="tab3" class="tab_content">

						<p>다싸 사용자의 편의를 위해 <span>자주 묻는 질문과 답변</span>을 모아놓았습니다.<br>
						원하시는 질문을 찾아보세요!</p>

					</div>
				</div>
			</div>

			<script type="text/javascript">
				$(document).ready(function() {

					//Default Action
					$(".tab_content").hide(); //Hide all content
					$("ul.tabs li:first").addClass("active").show(); //Activate first tab
					$(".tab_content:first").show(); //Show first tab content

					//On Click Event
					$("ul.tabs li").click(function() {
						$("ul.tabs li").removeClass("active"); //Remove any "active" class
						$(this).addClass("active"); //Add "active" class to selected tab
						$(".tab_content").hide(); //Hide all tab content
						var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
						$(activeTab).fadeIn(); //Fade in the active content
						return false;
					});

				});
			</script> -->
			</section>
		</div>
		<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
	</div>
</body>
</html>