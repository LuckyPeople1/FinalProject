<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일-->
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/driver/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/driver/page/nav_board.jsp" %>   <!--맨왼쪽  네비 메뉴-->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">리뷰 관리</div>
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
						<td colspan="3">
							<input class="tbox w_6p">
						</td>
					</tr>
					<tr>
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
					</tr>
				</table>
				<div class="set_form_search">
					<a href="javascript:void(0)" class="btn col_red f_w">검색</a>
					<a href="javascript:void(0)" class="btn col_grey line ml5">전체 목록</a>
				</div>
			</div>
			<div class="list_form">
				<table class="table_list">
					<colgroup>
						<col width="*">
						<col width="*">
						<col width="*">
						<col width="*">
						<col width="*">
						<col width="*">
					</colgroup>
					<thead>
					<tr>
						<th><label><input type="checkbox"></label></th>
						<th>NO</th>
						<th>리뷰내용</th>
						<th>현장추가금</th>
						<th>작성일시</th>
						<th>별점</th>
						<th>견적금액</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="reviewManage" varStatus="i">
					<tr>
						<td><label><input type="checkbox"></label></td>
						<td>${reviewManage.applyIdx }</td>
						<td>${reviewManage.reviewMessage }</td>
						<td>${reviewManage.extraMoney == 1 ? 'X' : 'O' }</td>
						<td>${reviewManage.reviewDate }</td>
						<td><c:if test="${reviewManage.reviewStar eq 1 }"><span class="starR on"></span></c:if>	  
							<c:if test="${reviewManage.reviewStar eq 2 }"><span class="starR on"></span><span class="starR on"></span></c:if>	
								<c:if test="${reviewManage.reviewStar eq 3 }">
										  <span class="starR on"></span>
										  <span class="starR on"></span>
										  <span class="starR on"></span>
								</c:if>	
								<c:if test="${reviewManage.reviewStar eq 4 }">
										  <span class="starR on"></span>
										  <span class="starR on"></span>
										  <span class="starR on"></span>
										  <span class="starR on"></span>
								</c:if>	
								<c:if test="${reviewManage.reviewStar eq 5 }">
										  <span class="starR on"></span>
										  <span class="starR on"></span>
										  <span class="starR on"></span>
										  <span class="starR on"></span>
										  <span class="starR on"></span>
								</c:if>		  
						</td>
						<td>${reviewManage.estimateAmount }</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<ul class="page_wrap">
				<li><a href="#none">First</a></li>
				<li><a href="#none">Prev</a></li>
				<li><a href="#none" class="num active">1</a></li>
				<li><a href="#none" class="num">2</a></li>
				<li><a href="#none" class="num">3</a></li>
				<li><a href="#none">Next</a></li>
				<li><a href="#none">Last</a></li>
			</ul>
		</div>
	</div>
	<%@include file="/WEB-INF/views/driver/common/footer.jsp"%>

</div>
<script type="text/javascript">
	$('.starRev span').click(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  var count = $(".on").length;
		  $(this).parent().children('input').val(count);
		  return false;
		});
/* 	해당 <span>태그를 클릭 시, 부모를 한번 타고 올라가서 다른 <span>에 class="on"을 add/remove 하면서 변화  */
</script>
</body>
</html>
<style>
.starR{
  background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
  background-size: auto 100%;
  width: 30px;
  height: 30px;
  display: inline-block;
  text-indent: -9999px;
  cursor: pointer;
}
.starR.on{background-position:0 0;}
</style>