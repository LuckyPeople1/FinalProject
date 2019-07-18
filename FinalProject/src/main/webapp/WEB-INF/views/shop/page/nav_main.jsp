<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="main_nav_wrap">
	<div class="main_nav">
		<a href="/shop/" class="">
			<i class="ico home">홈</i>
			<span class="nav_txt">홈</span>
		</a>
		<a href="/shop/mypage"  class="">
			<i class="ico set">부동산 설정</i>
			<span class="nav_txt">부동산 설정</span>
		</a>
		<a href="/shop/member/" class="${headerNav == 3 ? 'on' : ''}">
			<i class="ico member">직원관리</i>
			<span class="nav_txt">직원관리</span>
		</a>
		<a href="/shop/item">
			<i class="ico shop">매물관리</i>
			<span class="nav_txt">매물관리</span>
		</a>
		<a href="/shop/reserve" class="">
			<i class="ico reserve">방문관리</i>
			<span class="nav_txt">방문관리</span>
		</a>
		<a href="/shop/board">
			<i class="ico board">게시판관리</i>
			<span class="nav_txt">게시판관리</span>
		</a>
		<a href="/shop/premiumItem">
			<i class="ico marketing">상품관리</i>
			<span class="nav_txt">상품관리</span>
		</a>
		<a href="/" class="logout">
			<i class="ico logout">로그아웃</i>
			<span class="nav_txt">로그아웃</span>
		</a>
	</div>
</div>