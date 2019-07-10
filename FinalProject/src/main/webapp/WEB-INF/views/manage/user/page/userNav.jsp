<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="http://code.jquery.com/jquery-3.4.0.js"></script>

<nav class="lnb_wrap">
	<div class="lnb_con">
		<div class="lnb_show">회원 관리</div>
		<ul class="lnb_menu">
			<li>
				<a href="/manage/user/userAllList" class="menu_name">일반회원 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="/userManage/userAllList" class="">회원 관리</a></li>
					<li><a href="/userManage/userSecssion" class="">탈퇴회원 관리</a></li>
				</ul>
			</li>
			<li>
				<a href="#none" class="menu_name">부동산 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="reg_index.html" class="on">승인 관리</a></li>
					<li><a href="reg_index.html" class="">회원 관리</a></li>
					<li><a href="reg_list.html" class="">탈퇴회원 관리</a></li>
				</ul>
			</li>
			<li>
				<a href="#none" class="menu_name">기사 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="reg_index.html" class="">승인 관리</a></li>
					<li><a href="reg_index.html" class="">회원 관리</a></li>
					<li><a href="reg_list.html" class="">탈퇴회원 관리</a></li>
				</ul>
			</li>
		</ul>
	</div>
</nav>