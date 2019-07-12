<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
<div class="container">
	<div class="contents">
		<section class="mypage inner">
			<div class="sectionTitle">MY 다싸</div>
			<!-- 탭메뉴 -->
			<jsp:include page="/WEB-INF/views/guest/mypage/page/myTab.jsp"/>
 			
				<!-- 컨텐츠 시작 -->
			<div class="mypageCon move">
				<div class="moveTitle">
					<div class="auctionInfoBg">후기 작성(견적가 : 150,000원)</div>
					<div class="auctionDetailInfo">
						<div class="moveListBox">
							<div class="moveInfo">
								<div class="top">
									<span class="dateBox">이사날짜 : 2019-05-20</span>
									<span class="timeBox">이사시간 : 15:30분</span>
									<span class="hopeBox">[차량만 // 도움있음]</span>
								</div>
								<div class="bottom">
									<span class="addrBox">
										<span class="addr">서울시 강서구 강서구청 1-31 5</span>
										<span class="arrow">▶▶▶</span>
										<span class="addr">서울시 마포구 153-32길 303호</span>
									</span>
								</div>
							</div>
							<!-- -->
						</div>
						<div class="driverMemo">
							<div class="memoTit">평점</div>
							<div class="memoCon">
								<div class="starRev">
									  <span class="starR on"><input type="hidden" name="reviewStar" value="1"></span>
									  <span class="starR"><input type="hidden" name="reviewStar" value="2"></span>
									  <span class="starR"><input type="hidden" name="reviewStar" value="3"></span>
									  <span class="starR"><input type="hidden" name="reviewStar" value="4"></span>
									  <span class="starR"><input type="hidden" name="reviewStar" value="5"></span>
								</div>
							</div>
						</div>
					</div>
				<div class="mypageCon move">
					<div class="auctionDetailInfo">
						<div class="driverMemo">
							<div class="memoTit">평점후기</div>
							<div class="memoCon">
								<input type="radio" name="extraMoney" value="0"> 현장추가금 (Y)
								<input type="radio" name="extraMoney" value="1"> 현장추가금 (N)
								<hr>
								<span>후기작성</span>
								<hr>
								<textarea  style="width:1100px; height: 100px; border: 1px solid black;" name=""></textarea>
							</div>
						</div>
					</div>
					<div class="mypageBtnBox">
						<a href="/my/" class="btn col_darkGrey f_w big">뒤로가기</a>
						<a href="javascript:move.payment()" class="btn col_main f_w big">작성완료</a>
					</div>
				</div>
			</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>
	<script src="<c:url value="/guest/js/mypage/move.js"/>"></script>
	
	<script type="text/javascript">
	$('.starRev span').click(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  return false;
		});
/* 	해당 <span>태그를 클릭 시, 부모를 한번 타고 올라가서 다른 <span>에 class="on"을 add/remove 하면서 변화  */
	</script>
</div>
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