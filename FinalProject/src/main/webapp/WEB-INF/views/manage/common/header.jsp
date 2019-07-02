<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
	<h1 class="logo">
		<a href="/manage/" class="logo_btn">
			<img src="/manage/img/icon_logo.png" alt="로고">
		</a>
	</h1>
	<div class="nav_menu">
		<a href="/admin/html/member/memberList.html" class="menu_btn">
			<i class="ico set"></i>
			<div class="menu_text">승인관리</div>
		</a>
		<a href="/admin/html/shop/shopList.html" class="menu_btn">
			<i class="ico set"></i>
			<div class="menu_text">부동산관리</div>
		</a>
		<a href="/manage/move/moveAllList" class="menu_btn ${headerNum == 3 ? "on" : ""}">
			<i class="ico set"></i>
			<div class="menu_text">이사관리</div>
		</a>
		<a href="/manage/notice/noticeManageList" class="menu_btn">
			<i class="ico set"></i>
			<div class="menu_text">게시판관리</div>
		</a>
		<a href="/manage/sale/saleAllList" class="menu_btn">
			<i class="ico set"></i>
			<div class="menu_text">매출 관리</div>
		</a>
		<a href="/" class="menu_btn logout">
			<i class="ico set"></i>
			<div class="menu_text">로그아웃</div>
		</a>
	</div>
</header>
