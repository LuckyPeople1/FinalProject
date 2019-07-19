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
				<div class="page_title">자주 묻는 질문</div>
				<div class="page_sub_title"></div>
			</div>
			<div class="section">
				<div class="section_title"></div>

				<div class="list_form">
					<section class="noticeList">
					<div class="styled__Content-sc-1bvtbsc-1 iAegdM">
						<div class="styled__Wrap-sc-1pis5dj-0 kxQgzk"></div>
						<div class="styled__Header-hqk9t8-0 ogonX">
							<p>
								다싸 사용자의 편의를 위해 <span>자주 묻는 질문과 답변</span>을 모아놓았습니다.
							</p>
							<p>원하시는 질문을 찾아보세요!</p>
						</div>
						<ul class="styled__Ul-hqk9t8-1 isLaHo">
							<li class="styled__Item-sc-8ux180-0 gvvcgC"><c:forEach
									items="${list }" var="f">
									<div class="styled__Header-sc-8ux180-1 gSggcM" id="question">${f.faqQuestion }</div>
									<div class="styled__Answer-sc-8ux180-2 dHAoav" id="answer"
										title="off">${f.faqAnswer}</div>
								</c:forEach></li>
						</ul>
						<div id="pageNavi" style="text-align: center;">${pageNavi}</div>
					</div>
					</section>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			//faq제목 클릭시 답변내용이 show hide되게 하는 스크립트
			$(document).ready(function() {
				$(".dHAoav").hide();
				$(".gSggcM").each(function() {
					$(this).click(function() {
						if ($(this).next().attr("title") == "on") {
							$(this).next().hide();
							$(this).next().attr("title", "off");
						} else {
							$(this).next().show();
							$(this).next().attr("title", "on");
						}
					});
				});
			});
		</script>
	</div>
</body>
</html>