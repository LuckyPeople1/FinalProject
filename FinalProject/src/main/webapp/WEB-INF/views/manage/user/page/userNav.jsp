<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="lnb_wrap">
	<div class="lnb_con">
		<div class="lnb_show">회원 관리</div>
		<ul class="lnb_menu">
			<li>
				<a href="/userManage/userAllList?userType=3" class="menu_name">일반회원 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="/userManage/userAllList?userType=3" class="${subNav == 0 ? 'on' : ''}">회원 관리</a></li>
					<li><a href="/userManage/all/allSecssion?userType=3" class="${subNav == 7 ? 'on' : ''}">탈퇴회원 관리</a></li>
				</ul>
			</li>
			<li>
				<a href="/userManage/userAllList?userType=2" class="menu_name">부동산 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="/userManage/all/allApprobate?userType=2" class="${subNav == 4 ? 'on' : ''}">승인 관리</a></li>
					<li><a href="/userManage/userAllList?userType=2" class="${subNav == 2 ? 'on' : ''}">회원 관리</a></li>
					<li><a href="/userManage/all/allSecssion?userType=2" class="${subNav == 6 ? 'on' : ''}">탈퇴회원 관리</a></li>
				</ul>
			</li>
			<li>
				<a href="/userManage/userAllList?userType=1" class="menu_name">기사 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="/userManage/all/allApprobate?userType=1" class="${subNav == 3 ? 'on' : ''}">승인 관리</a></li>
					<li><a href="/userManage/userAllList?userType=1" class="${subNav == 1 ? 'on' : ''}">회원 관리</a></li>
					<li><a href="/userManage/all/allSecssion?userType=1" class="${subNav == 5 ? 'on' : ''}">탈퇴회원 관리</a></li>
				</ul>
			</li>
		</ul>
	</div>
</nav>