<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>1:1 문의관리</title>
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
				<div class="field_title"><span class="title_mark">■ 1:1 문의관리</span></div>
				<table class="set_table">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tbody>
					<tr>
						<th>제목</th>
						<td colspan="">
							<span class="sbox small">
								<select name="searchType">
									<option value="1">제목</option>
									<option value="2">작성자명</option>
								</select>
							</span>
							<input class="tbox" name="searchWord" value="">
						</td>
						<th>답변상태</th>
						<td>
							<label>
								<input type="checkbox">
								<span>답변완료</span>
							</label>
							<label class="ml10">
								<input type="checkbox">
								<span>미답변</span>
							</label>
						</td>
					</tr>
					
					<tr>
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
					</tr>
					</tbody>
				</table>
				<div class="set_menu">
					<a href="javascript:void(0)" class="btn normal col_main f_w">검색</a>
					<a href="javascript:void(0)" class="btn normal col_darkGrey f_w ml5">전체목록</a>
				</div>
			</div>
			<div class="list_field">
				<table class="list_table">
					<colgroup>
						<col width="80">
						<col width="100">
						<col width="100">
						<col width="*">
						<col width="130">
						<col width="130">
						<col width="100">
						<col width="100">
					</colgroup>
					<thead>
					<tr>
						<th>No</th>
						<th>분류</th>
						<th>아이디</th>
						<th>제목</th>
						<th>작성일시</th>
						<th>답변유무</th>
						<th>상태</th>
						<th>관리</th>
					</tr>
					</thead>
					<tbody>
				<c:forEach items="${list }" var="q">
					
					<tr>
						<td>${q.rnum }</td>
						<td>${q.questionsUserType }</td>
						<td>${q.questionsWriter }</td>
						<td class="text-left">${q.questionsTitle }</td>
						<td>${q.questionsRegDate}</td>
						<td>
							<span class="tag col_blue f_w">${q.questionsAnswerState }</span>
						</td>
						<td>
							<span class="tag col_blue f_w">${q.questionsState }</span>
						</td>
						<td>
							<div>
								<a href="/manage/board/question/questionManageView?questionsIndex=${q.questionsIndex }" class="btn small col_main f_w">보기</a>
							</div>
							<div>
								<a href="/manage/board/question/questionManageDelete?questionsIndex=${q.questionsIndex }" class="btn small col_darkGrey f_w">삭제</a>
							</div>
						</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<div id="pageNavi" class="page_group clearFix">
				${pageNavi}
			</div>
		
		
		
		<!-- 푸터 -->
		<?php include $_SERVER['DOCUMENT_ROOT'] . '/manager/common/page/footer.php'; ?>
	</div>
</div>
</body>
</html>