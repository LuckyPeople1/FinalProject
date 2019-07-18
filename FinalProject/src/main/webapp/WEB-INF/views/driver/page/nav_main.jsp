<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="main_nav_wrap">
	<div class="main_nav">
		<a href="/driver/home?driverIdx=${sessionScope.user.userIdx }" class="${subNavi == 0 ? 'on' : ''}">
			<i class="ico home">홈</i>
			<span class="nav_txt">홈</span>
		</a>
		<a href="/driver/mypage"  class="${subNavi == 1 ? 'on': '' }">
			<i class="ico set">마이페이지</i>
			<span class="nav_txt">마이페이지</span>
		</a>
		<a href="/driver/auction" class="${subNavi == 2 ? 'on': '' }">
			<i class="ico marketing">입찰관리</i>
			<span class="nav_txt">입찰관리</span>
		</a>
		<a href="/driver/move?driverIdx=${sessionScope.user.userIdx }" class="${subNavi == 3 ? 'on': '' }">
			<i class="ico reserve">이사관리</i>
			<span class="nav_txt">이사관리</span>

		</a>
		<a href="/driver/review?driverIdx=${sessionScope.user.userIdx }" class="${subNavi == 4 ? 'on': '' }">
			<i class="ico board">사용자리뷰</i>
			<span class="nav_txt">사용자리뷰</span>

		</a>
		<a href="/driver/saleList?driverIdx=${sessionScope.user.userIdx }" class="${subNavi == 5 ? 'on': '' }">
			<i class="ico stats">매출관리</i>
			<span class="nav_txt">매출관리</span>
		</a>
		<a href="notice" class="">
			<i class="ico board">게시판관리</i>
			<span class="nav_txt">게시판관리</span>

		</a>
		<a href="/login/logout" class="logout">
			<i class="ico logout">로그아웃</i>
			<span class="nav_txt">로그아웃</span>
		</a>
	</div>
</div>
<!-- <script>
$(document).ready(function(){
	$("#driver").click(function(){
		$("#driver").addClass("on");
		
	});
	
});
</script> -->