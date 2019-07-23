<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
	<h1 class="logo">
		<a href="/userManage/userApprobateList" class="logo_btn">
			<img src="/manage/img/icon_logo.png" alt="로고">
		</a>
	</h1>
	<div class="nav_menu">
		<a href="/userManage/userApprobateList" class="menu_btn">
			<i class="ico auth"></i>
			<div class="menu_text">승인관리</div>
		</a>
		<a href="/shopManage/shopAllList" class="menu_btn">
			<i class="ico shop"></i>
			<div class="menu_text">부동산관리</div>
		</a>
		<a href="/manage/move/packageList" class="menu_btn ${headerNum == 3 ? "on" : ""}">
			<i class="ico move"></i>
			<div class="menu_text">이사관리</div>
		</a>
		<a href="/manage/board/notice/noticeManageList/?reqPage=1" class="menu_btn">
			<i class="ico board"></i>
			<div class="menu_text">게시판관리</div>
		</a>
		<a href="/manage/sale/salePremiumList" class="menu_btn">
			<i class="ico sales"></i>
			<div class="menu_text">매출 관리</div>
		</a>
		<a href="/" class="menu_btn logout">
			<i class="ico logout"></i>
			<div class="menu_text">메인 페이지로</div>
		</a>
	</div>
</header>
