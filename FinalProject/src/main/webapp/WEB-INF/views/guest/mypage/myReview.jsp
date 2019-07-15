<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
	<div class="contents">
		<section class="mypage inner">
			<div class="sectionTitle">MY 다싸</div>
			
			<!-- 탭메뉴 -->
			<jsp:include page="/WEB-INF/views/guest/mypage/page/myTab.jsp"/>
			
			<!-- 컨텐츠 시작 -->
			<div class="mypageCon move">
				<div class="moveTitle">
					<span class="tit">REVIEW</span>
				</div>
				<div class="moveListBox">
				<c:forEach items="${list }" var="myReview">
					<a href="#none" class="moveBox">
						<div class="moveInfo">
							<div class="top">
								<span class="timeBox">견적가 :${myReview.estimateAmount }원</span>
								<span class="hopeBox">${myReview.extraMoney == 1 ? '현장추가금 X' : '현장추가금 O' }</span>
									<div class="starRev">
										<c:if test="${myReview.reviewStar eq 1 }">
											  <span class="starR on"></span>
										</c:if>	  
										<c:if test="${myReview.reviewStar eq 2 }">
												  <span class="starR on"></span>
												  <span class="starR on"></span>
										</c:if>	
										<c:if test="${myReview.reviewStar eq 3 }">
												  <span class="starR on"></span>
												  <span class="starR on"></span>
												  <span class="starR on"></span>
										</c:if>	
										<c:if test="${myReview.reviewStar eq 4 }">
												  <span class="starR on"></span>
												  <span class="starR on"></span>
												  <span class="starR on"></span>
												  <span class="starR on"></span>
										</c:if>	
										<c:if test="${myReview.reviewStar eq 5 }">
												  <span class="starR on"></span>
												  <span class="starR on"></span>
												  <span class="starR on"></span>
												  <span class="starR on"></span>
												  <span class="starR on"></span>
										</c:if>		  
										 <!--  <input type="hidden" name="reviewStar" value="" > -->
									</div>
							</div>	
							<div class="bottom">
								<span class="addrBox">
									<span class="addr">메모내용 </span>
									<span class="arrow">▶▶▶</span>
									<span class="addr">${myReview.reviewMessage }</span>
								</span>
							</div>
						</div>
					</a>
				</c:forEach>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
	<script src="<c:url value="/guest/js/mypage/move.js"/>"></script>
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