<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="lnb_wrap">
	<div class="lnb_con">
		<div class="lnb_show">게시판 관리</div>
		<ul class="lnb_menu">
			<li>
				<a href="#none" class="menu_name">게시판 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="/manage/board/notice/noticeManageList?reqPage=1" class="">공지사항 관리</a></li>
					<li><a href="/manage/board/faq/faqManageList?reqPage=1" class="">FAQ 관리</a></li>
					<li><a href="/manage/board/question/questionManageList?reqPage=1" class="">1:1문의 관리</a></li>
				</ul>
			</li>
			<li>
				<a href="#none" class="menu_name">부동산 게시판 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="/manage/board/notice/noticeManageList?reqPage=1&code=1" class="">부동산 공지사항 관리</a></li>
					<li><a href="/manage/board/faq/realestate/faqManageRealestateList" class="">부동산 FAQ 관리</a></li>
					<li><a href="/manage/board/question/realestate/questionManageRealestateList" class="">부동산 1:1 문의 관리</a></li>
				</ul>
			</li>
			<li>
				<a href="#none" class="menu_name">기사 게시판 관리</a>
				<ul class="lnb_sub_menu">
					<li><a href="/manage/board/notice/noticeManageList?reqPage=1&code=2" class="">기사 공지사항 관리</a></li>
					<li><a href="/manage/board/faq/articles/faqManageArticlesList" class="">기사 FAQ 관리</a></li>
					<li><a href="/manage/board/question/articles/questionManageAriticlesList" class="">기사 1:1 문의 관리</a></li>
				</ul>
			</li>			
		</ul>
	</div>
</nav>