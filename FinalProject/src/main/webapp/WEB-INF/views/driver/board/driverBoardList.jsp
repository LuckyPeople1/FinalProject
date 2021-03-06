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
			<div class="page_title">공지사항</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title"></div>
			<div class="set_form search">
			<form action="/driver/board/searchKeyword?reqPage=1" method="post" id="search">
			
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tr>
						<th>검색어</th>
						<td colspan="3">
							<input class="tbox w_6p" name="keyWord">
						</td>
					</tr>
			<%--		<tr>
						<th>작성일</th>
						<td colspan="3">
							<input class="tbox" id="dateS">
							<span class="hyphen">~</span>
							<input class="tbox" id="dateE">
							<a href="javascript:setSearchDate('0d')" class="btn col_grey line ml10">당일</a>
							<a href="javascript:setSearchDate('1d')" class="btn col_grey line">어제</a>
							<a href="javascript:setSearchDate('1w')" class="btn col_grey line">일주일</a>
							<a href="javascript:setSearchDate('1m')" class="btn col_grey line">1개월</a>
							<a href="javascript:setSearchDate('3m')" class="btn col_grey line ">3개월</a>
							<a href="javascript:setSearchDate('6m')" class="btn col_grey line ">6개월</a>
						</td>
					</tr> --%>
				</table>
				<div class="set_form_search" style="height: 36px; overflow: hidden;">
					<a href="javascript:$('#search').submit()" class="btn normal col_main f_w" style="line-height: 40px;">검색</a>
					<a href="/driver/board/driverBoardList?reqPage=1" class="btn normal col_darkGrey f_w ml5" style="line-height: 40px;">전체목록</a>
				</div>
				</form>
			</div>
			<div class="list_form">

				<table class="table_list">
					<colgroup>
						<col width="90">
						<col width="*">
						<col width="130">
						<col width="100">
						<col width="80">
					</colgroup>
					<thead>
					<tr>
						<th>NO</th>
						<th>제목</th>
						<th>작성일시</th>
						<th>상태</th>
						<th>관리</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="q">
					<tr>
						<td>${q.rnum }</td>
						<td>
							<div class="text-left">${q.noticeTitle }</div>
						</td>
						<td>
							<div>${q.noticeRegDate }</div>
						</td>
						<td>
							<div>${q.noticeState }</div>
						</td>
						<td>
							<div class="set_menu">
								<a href="/driver/board/driverNoticeView?noticeIndex=${q.noticeIndex }" class="btn col_navy f_w">상세보기</a>
							</div>

						</td>
					</tr>
					</c:forEach>
					<c:if test="${empty list }">
						<td colspan="5"><p>검색결과가 없습니다.</p></td>
					</c:if>
					</tbody>
				</table>
			</div>
			<div class="page_group clearFix">
				<ul class="page_box">
					${pageNavi }
				</ul>
			</div>
		</div>
	</div>
</div>
	<footer role="footer" data-include="footer.html"></footer>
</body>
</html>