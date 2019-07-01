<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<!-- gnb -->
	<%@include file="/WEB-INF/views/notice/common/header.jsp"%>
	<div class="wrapper">
		<!-- lnb -->
		<%@include file="/WEB-INF/views/notice/page/leftSideNotice.jsp"%>

		<div class="contents">
			<div class="set_field">
				<div class="field_title">
					<span class="title_mark">■ 공지사항 관리</span>
				</div>
			</div>
		</div>
		<!-- 푸터 -->
		<?php include $_SERVER['DOCUMENT_ROOT'] . '/manager/common/page/footer.php'; ?>
	</div>
</div>
