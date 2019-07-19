<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일-->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/driver/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/driver/page/nav_stats.jsp" %>   <!--맨왼쪽  네비 메뉴-->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">매출 통계</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<%-- <div class="section_title"></div>
			<div class="set_form search">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tr>
						<th>날짜</th>
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
					</tr>
				</table>
				<div class="set_form_search">
					<a href="javascript:void(0)" class="btn col_red f_w">검색</a>
					<a href="javascript:void(0)" class="btn col_grey line ml5">전체 목록</a>
				</div> --%>
			</div>
			<div class="list_form">
				<div class="table_list_btn">
					<span class="right_btn">
						<!-- <a href="board_notice_write.html" class="btn col_green f_w">엑셀저장</a> -->
					</span>
				</div>
			<section class="driverSale">
				<div class="saleBox">
					<h1 class="saleTitle">년도별 매출 총합</h1>
					<div id="bar_example1" ></div>
				</div>
				<div class="saleBox">
					<h1 class="saleTitle">년도별 매출 평균</h1>
					<div id="bar_example2" ></div>
				</div>
				<div class="saleBox2">
					<h1 class="saleTitle">월별 매출 총합</h1>
					<div id="bar_example3" ></div>
				</div>
				<div class="saleBox2">
					<h1 class="saleTitle">월별 매출 평균</h1>
					<div id="bar_example4" ></div>
				</div>
			</section>
			</div>
		</div>
	</div>
	<%@include file="/WEB-INF/views/driver/common/footer.jsp"%>
<script src="/driver/js/driverSale.js"></script>
</div>
</body>
</html>
