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
							<li><a href="/guest/notice/question">1:1 문의</a></li>
							<li><a class="active" aria-current="page"
								href="/guest/notice/noticeList?reqPage=1">공지사항</a></li>
						</ul>
					</div>
					<ul class="styled__Ul-sc-5kwp9x-0 qUCQS">
						<li class="styled__Header-sc-5kwp9x-1 pbYHJ">
							<p>제목</p>
							<p>날짜</p>
						</li>
							<c:forEach items="${list }" var="n">
						<table class="styled__Item-sc-5kwp9x-2 bryRNw">
								<tr>
									<td class="styled__Title-sc-5kwp9x-3 jDHSEw"><a href="/guest/notice/noticeView?noticeIndex=${n.noticeIndex }" style="color:black;">[공지사항] ${n.noticeTitle }</a></td>
									<td class="styled__Time-sc-5kwp9x-4 dJQhTV">${n.noticeRegDate }<input type="hidden" name="${n.noticeIndex }"></td>
								</tr>
						</table>
							</c:forEach>
					</ul>
			<div class="page_group clearFix">
				<ul class="page_box">
					${pageNavi }
				</ul>
			</div>
			<br><br><br>
				</div>
				</section>
			</div>
			
		</div>
		<script type="text/javascript">
			/* <![CDATA[ */
			var google_conversion_id = 967706247;
			var google_conversion_label = "-DVwCMLN3FoQh424zQM";
			var google_custom_params = window.google_tag_params;
			var google_remarketing_only = true;
			/* ]]> */
		</script>
		<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script>

		<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>

		<script type="text/javascript">
			if (!wcs_add)
				var wcs_add = {};
			wcs_add["wa"] = "s_3d10ff175f87";
			if (!_nasa)
				var _nasa = {};
			wcs.inflow();
			wcs_do(_nasa);
		</script>
		<script>
			!function(f, b, e, v, n, t, s) {
				if (f.fbq)
					return;
				n = f.fbq = function() {
					n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
							.push(arguments)
				};
				if (!f._fbq)
					f._fbq = n;
				n.push = n;
				n.loaded = !0;
				n.version = "2.0";
				n.queue = [];
				t = b.createElement(e);
				t.async = !0;
				t.src = v;
				s = b.getElementsByTagName(e)[0];
				s.parentNode.insertBefore(t, s)
			}(window, document, "script",
					"//connect.facebook.net/en_US/fbevents.js");

			fbq("init", "961200640589716");
			fbq("track", "PageView");
		</script>

		<script type="text/javascript">
			(function(w, d, a) {
				w.__beusablerumclient__ = {
					load : function(src) {
						var b = d.createElement("script");
						b.src = src;
						b.async = true;
						b.type = "text / javascript";
						d.getElementsByTagName("head")[0].appendChild(b);
					}
				};
				w.__beusablerumclient__.load(a);
			})(window, document,
					'//rum.beusable.net/script/b180419e141449u165/fe3567ae75');
		</script>
		<script type="text/javascript"
			src="/static/js/web.service.f95c9864.js"></script>

		<div id="toast">
			<div class="styled__Wrap-sc-1run8ov-0 ekZaGw" id="react-toast"></div>
		</div>
		<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>
		
</body>
</html>