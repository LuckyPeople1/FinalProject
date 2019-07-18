<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css">
	<link rel="stylesheet" type="text/css" href="../css/ui.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<script src="../js/jquery-3.1.1.min.js"></script>
	<script src="../js/jquery-ui-1.12.1.js"></script>
	<script src="../js/ui.js"></script>
	<script src="../js/include.js"></script>
</head>
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_board.jsp" %>   <!--맨왼쪽  서브네비 메뉴-->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">1:1문의</div>
			<div class="page_sub_title"></div>
		</div>
			<div class="section">
				<div class="section_title"></div>
				<div class="set_form search">
					<table class="table_set">
						<colgroup>
							<col width="180">
							<col width="*">
							<col width="180">
							<col width="*">
						</colgroup>
						<tr>
							<th>제목</th>
							<td colspan=""><span class="sbox small"> <select>
										<option>제목</option>
										<option>작성자명</option>
								</select>
							</span> <input class="tbox w_6p"></td>
							<th>답변상태</th>
							<td><label><input type="checkbox"><span>미답변</span></label>
								<label class="ml10"><input type="checkbox"><span>답변완료</span></label>
							</td>
						</tr>
						<tr>
							<th>작성일</th>
							<td colspan="3"><input class="tbox" id="dateS"> <span
								class="hyphen">~</span> <input class="tbox" id="dateE">
								<a href="javascript:setSearchDate('0d')"
								class="btn col_grey line ml10">당일</a> <a
								href="javascript:setSearchDate('1d')" class="btn col_grey line">어제</a>
								<a href="javascript:setSearchDate('1w')"
								class="btn col_grey line">일주일</a> <a
								href="javascript:setSearchDate('1m')" class="btn col_grey line">1개월</a>
								<a href="javascript:setSearchDate('3m')"
								class="btn col_grey line ">3개월</a> <a
								href="javascript:setSearchDate('6m')" class="btn col_grey line ">6개월</a>
							</td>
						</tr>
					</table>
					<div class="set_form_search">
						<a href="javascript:void(0)" class="btn col_red f_w">검색</a> <a
							href="javascript:void(0)" class="btn col_grey line ml5">전체 목록</a>
					</div>
				</div>
				<div class="list_form">
					<div class="table_list_btn">
						<span class="right_btn">
							<a href="board_notice_write.html" class="btn col_darkGrey f_w">선택 삭제</a>
							<a href="/shop/board/question/shopQuestionWriter" class="btn col_red f_w">1:1문의하기</a>
						</span>
					</div>
					<table class="table_list">
						<colgroup>
							<col width="40">
							<col width="70">
							<col width="120">
							<col width="*">
							<col width="100">
							<col width="100">
							<col width="140">
						</colgroup>
						<thead>
							<tr>
								<th><label><input type="checkbox"></label></th>
								<th>NO</th>
								<th>아이디</th>
								<th>제목</th>
								<th>작성일시</th>
								<th>답변유무</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list }" var="q">
								<tr>
									<td><label><input type="checkbox"></label></td>
									<td>${q.questionsIndex }</td>
									<td>${q.questionsWriter }</td>
									<td class="text-left">${q.questionsTitle}</td>
									<td>${q.questionsRegDate }</td>
									<td><span class="tag col_blue f_w">${q.questionsAnswerState }</span>
									</td>
									<td>
										<a href="/shop/board/question/shopQuestionView?questionsIndex=${q.questionsIndex }" class="btn col_navy f_w">보기</a>
										<a href="/shop/board/question/shopQuestionDelete?questionsIndex=${q.questionsIndex }" class="btn col_grey line">삭제</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
				<div id="pageNavi" class="page_group clearFix">${pageNavi}</div>
		</div>
	<footer role="footer" data-include="footer.html"></footer>

</div>
</body>
</html>