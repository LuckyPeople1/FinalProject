<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="sub_nav_wrap">
	<div class="sub_nav">
		<div class="nav_title">아이템 관리</div>
		<div class="nav_group">
			<a href="/shop/premiumItem" class="${subNav == 1 ? 'on' : ''}">아이템 구매</a>
			<a href="/shop/premiumItemList" class="${subNav == 2 ? 'on' : ''}">구매 내역</a>
		</div>
	</div>
</div>