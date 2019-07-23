<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FAQ 이용관리</title>
<link rel="stylesheet" type="text/css"	href="/guest/css/notice/notice.css">

</head>
<body> 
<div class="container">
	<!-- gnb -->
	<%@include file="/WEB-INF/views/manage/common/header.jsp"%>
	<div class="wrapper">
		<!-- lnb -->
		<%@include file="/WEB-INF/views/manage/board/page/leftSideNotice.jsp"%>

		<div class="contents">
			<div class="set_field">
				<div class="field_title">
					<span class="title_mark">■ FAQ 이용관리</span>
				</div>
				<form action="/manage/board/faq/searchKeyword?reqPage=1" method="post" id="search">

				<table class="set_table">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tr>
						<th>제목</th>
						<td colspan="3">
							<input class="tbox w_6p"  style="width: 80%;" name="keyWord">
						</td>
					</tr>
					<%--<tr>
						<th>작성일</th>
						<td colspan="3">
							<input id="dateS" class="tbox"> ~ <input id="dateE" class="tbox">
							<a href="javascript:setSearchDate('0d')" class="btn smaller higher col_grey ml10">당일</a>
							<a href="javascript:setSearchDate('1d')" class="btn smaller higher col_grey ml5">어제</a>
							<a href="javascript:setSearchDate('1w')" class="btn smaller higher col_grey ml5">일주일</a>
							<a href="javascript:setSearchDate('1m')" class="btn smaller higher col_grey ml5">1달</a>
							<a href="javascript:setSearchDate('3m')" class="btn smaller higher col_grey ml5">3달</a>
							<a href="javascript:setSearchDate('6m')" class="btn smaller higher col_grey ml5">6달</a>
						</td>
					</tr> --%>
				</table>
				<div class="set_menu">
					<a href="javascript:$('#search').submit()" class="btn normal col_main f_w">검색</a>
					<a href="#" class="btn normal col_darkGrey f_w ml5">전체목록</a>
				</div>
				</form>
			</div>
			<div class="list_field">
			<div class="list_menu">
					<span class="right_menu">
						<a href="/manage/board/faq/faqManageWriter" class="btn col_darkGrey f_w">FAQ작성</a>
					</span>
				</div>
				<table class="list_table">
					<colgroup>
						<col width="100">
						<col width="120">
						<col width="*">
						<col width="155">
						<col width="120">
						<col width="130">
					</colgroup>
					<thead>
					<tr>
						<th>NO</th>
						<th>분류</th>
						<th>제목</th>
						<th>상태</th>
						<th>작성일시</th>
						<th>관리</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="f">
					<tr>
						<td>${f.rnum }</td>
						<td>${f.faqUserType }</td>
						<td class="text-left">${f.faqQuestion }</td>
						<td>
						<span class="tag col_blue f_w">${f.faqState }</span>
						</td>
						<td>
							${f.faqRegDate }
						</td>
						<td>
							<div>
								<a href="/manage/board/faq/faqManageView?faqIndex=${f.faqIndex }"" class="btn small col_main f_w" style="background: gray;">상세보기</a>
							</div>
							<div>
								<a href="/manage/board/faq/faqManageModify?faqIndex=${f.faqIndex }" class="btn small col_main f_w">수정</a>
							</div>
							<div>
								<a href="/manage/board/faq/faqDelete?faqIndex=${f.faqIndex }" class="btn small col_darkGrey f_w">삭제</a>
							</div>
						</td>
					</tr>
					</c:forEach>
					<c:if test="${empty list }">
						<td colspan="6"><p>검색결과가 없습니다.</p></td>
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

		<!-- 푸터 -->
		<?php include $_SERVER['DOCUMENT_ROOT'] . '/manager/common/page/footer.php'; ?>
	</div>
</div>
</body>
</html>