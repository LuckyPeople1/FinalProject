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
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>

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
							<li><a class="active" href="/guest/notice/faqList?reqPage=1" aria-current="page">자주 묻는 질문</a></li>
							<li><a href="/guest/notice/question">1:1 문의</a></li>
							<li><a href="/guest/notice/noticeList?reqPage=1">공지사항</a></li>
						</ul>
					</div>
					<div class="styled__Header-hqk9t8-0 ogonX">
						<p>
							다싸 사용자의 편의를 위해 <span>자주 묻는 질문과 답변</span>을 모아놓았습니다.
						</p>
						<p>원하시는 질문을 찾아보세요!</p>
					</div>
					<ul class="styled__Ul-hqk9t8-1 isLaHo">
						<li class="styled__Item-sc-8ux180-0 gvvcgC">
						<c:forEach items="${list }" var="f" varStatus="c">
							<div class="styled__Header-sc-8ux180-1 gSggcM" id="question">${f.faqQuestion }</div>
								<div class="styled__Answer-sc-8ux180-2 dHAoav" id="answer" title="off">${f.faqAnswer}</div>
						</c:forEach>		
								</li>

					</ul>
					<div id="pageNavi" style="text-align: center;">${pageNavi}</div>

				</div>
				</section>
			</div>
			<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
		</div>
	<script type="text/javascript">
	//faq제목 클릭시 답변내용이 show hide되게 하는 스크립트
	$(document).ready(function(){
		$(".dHAoav").hide();
		$(".gSggcM").each(function(){
			$(this).click(function(){
				if($(this).next().attr("title") == "on"){
					$(this).next().hide();
					$(this).next().attr("title","off");
				}else{
					$(this).next().show();
					$(this).next().attr("title","on");
				}
			});
		});
	});
	</script>
</body>
</html>