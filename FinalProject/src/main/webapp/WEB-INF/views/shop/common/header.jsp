<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
	<h1 class="logo">
		<a href="/manager/index.php" class="logo_btn">
			<img src="/manage/img/icon_logo.png" alt="로고">
		</a>
	</h1>
	<div class="nav_menu">
		<a href="/admin/html/member/memberList.html" class="menu_btn">
			<i class="ico set"></i>
			<div class="menu_text">승인관리</div>
		</a>
		<a href="/manage/shop/shopAllList" class="menu_btn">
			<i class="ico set"></i>
			<div class="menu_text">부동산관리</div>
		</a>
		<a href="/manage/move/moveAllList" class="menu_btn ${headerNum == 3 ? "on" : ""}">
			<i class="ico set"></i>
			<div class="menu_text">이사관리</div>
		</a>
		<a href="/admin/html/board/boardList.html" class="menu_btn">
			<i class="ico set"></i>
			<div class="menu_text">게시판관리</div>
		</a>
		<a href="/admin/html/sale/saleList.html" class="menu_btn">
			<i class="ico set"></i>
			<div class="menu_text">매출&상품 관리</div>
		</a>
		<a href="/logout" class="menu_btn logout">
			<i class="ico set"></i>
			<div class="menu_text">로그아웃</div>
		</a>
	</div>
</header>
