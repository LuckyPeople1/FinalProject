<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="lnb_wrap">
	<div class="lnb_con">
		<div class="lnb_show">이사 관리</div>
		<ul class="lnb_menu">
			<li>
				<a href="#none" class="menu_name">이사 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="/manage/move/moveAllList" class="${subNav == 0 ? 'on' : ''}">이사 목록</a></li>
					<li><a href="#none" class="${subNav == 1 ? 'on' : ''}">완료된 이사</a></li>
				</ul>
			</li>
			<li>
				<a href="#none" class="menu_name">짐 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="/manage/move/packageList" class="${subNav == 2 ? 'on' : ''}">짐 관리</a></li>
					<li><a href="/manage/move/packageReg" class="${subNav == 3 ? 'on' : ''}">짐 등록</a></li>
				</ul>
			</li>
			<li>
				<a href="#none" class="menu_name">기사 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="#none" class="${subNav == 4 ? 'on' : ''}">기사 목록</a></li>
				</ul>
			</li>
		</ul>
	</div>
</nav>