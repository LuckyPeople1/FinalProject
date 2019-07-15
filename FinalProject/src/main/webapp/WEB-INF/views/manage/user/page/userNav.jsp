<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="http://code.jquery.com/jquery-3.4.0.js"></script>

<nav class="lnb_wrap">
	<div class="lnb_con">
		<div class="lnb_show">회원 관리</div>
		<ul class="lnb_menu">
			<li>
				<a href="/userManage/userAllList?userType=3" class="menu_name">일반회원 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="/userManage/userAllList?userType=3" class="on">회원 관리</a></li>
					<li><a href="/userManage/all/allSecssion?userType=3" class="">탈퇴회원 관리</a></li>
				</ul>
			</li>
			<li>
				<a href="/userManage/userAllList?userType=2" class="menu_name">부동산 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="/userManage/all/allApprobate?userType=2" class="">승인 관리</a></li>
					<li><a href="/userManage/userAllList?userType=2" class="">회원 관리</a></li>
					<li><a href="/userManage/all/allSecssion?userType=2" class="">탈퇴회원 관리</a></li>
				</ul>
			</li>
			<li>
				<a href="/userManage/userAllList?userType=1" class="menu_name">기사 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="/userManage/all/allApprobate?userType=1" class="">승인 관리</a></li>
					<li><a href="/userManage/userAllList?userType=1" class="">회원 관리</a></li>
					<li><a href="/userManage/all/allSecssion?userType=1" class="">탈퇴회원 관리</a></li>
				</ul>
			</li>
		</ul>
	</div>
</nav>