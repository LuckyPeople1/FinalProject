<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="sub_nav_wrap">
	<div class="sub_nav">
		<div class="nav_title">게시판</div>
		<div class="nav_group">
			<a href="/driver/board/driverBoardList?reqPage=1" class="${subNav == 1 ? 'on' : ''}">게시판</a>
			<a href="/driver/board/question/driverQuestionList?reqPage=1" class="${subNav == 2 ? 'on' : ''}">1:1문의</a>
			<a href="/driver/board/faq/driverFaqList?reqPage=1" class="${subNav == 3 ? 'on' : ''}">자주 묻는 질문</a>
		</div>
	</div>
</div>