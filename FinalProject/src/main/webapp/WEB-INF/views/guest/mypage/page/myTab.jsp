<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="navTabBox">
	<a href="/my/pwChk" class="tab ${tab == 0 ? 'on' : ''}">정보수정</a>
	<a href="/my/reserList?guestIdx=${sessionScope.user.userIdx }" class="tab ${tab == 1 ? 'on' : ''}">방문 내역</a>
	<a href="/my/moveList?guestIdx=${sessionScope.user.userIdx}" class="tab ${tab == 2 ? 'on' : ''}">이사 관리</a>
	<a href="/my/review?guestIdx=${sessionScope.user.userIdx}" class="tab ${tab == 3 ? 'on' : ''}">내가 쓴 리뷰</a>
</div>