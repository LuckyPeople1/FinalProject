<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="sub_nav_wrap">
	<div class="sub_nav">
		<div class="nav_title">게시판관리</div>
		<div class="nav_group">
			<a href="/shop/board/shopBoardList?reqPage=1" class="${subNav == 1 ? 'on' : ''}">공지사항</a>
			<a href="/shop/board/question/shopQuestion?reqPage=1" class="${subNav == 2 ? 'on' : ''}">1:1문의</a>
			<a href="/shop/board/faq/shopFaqList?reqPage=1" class="${subNav == 3 ? 'on' : ''}">자주 묻는 질문</a>
		</div>
	</div>
</div>