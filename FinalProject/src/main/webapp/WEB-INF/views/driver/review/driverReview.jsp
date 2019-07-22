<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/WEB-INF/views/driver/common/head2.jsp" %>   <!--스타일-->
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