<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세보기</title>
</head>
<body>
<div class="container">
	<!-- gnb -->
	<%@include file="/WEB-INF/views/manage/common/header.jsp"%>
	<div class="wrapper">
		<!-- lnb -->
		<%@include file="/WEB-INF/views/manage/user/page/userNav.jsp"%>
			<div class="contents">
				<div class="set_field">
					<div class="field_title">
						<span class="title_mark">■ 상세보기</span>
					</div>
					<section class="section_notice">
						<table class="set_table">
							<colgroup>
								<col width="250">
								<col width="*">
							</colgroup>
							<tr>
								<th>등록 번호</th>
								<td>${userVO.registrationNumber }</td>
							</tr>
							<tr>
								<th>등록파일</th>
								<td><img class="detail_comp_img" src="${compFilepath1 }"></td>
							</tr>
							<c:if test="${userVO.userType eq 2 }">
								<tr>
									<th>등록 번호</th>
									<td>${userVO.businessNumber }</td>
								</tr>
								<tr>
									<th>등록파일</th>
									<td><img class="detail_comp_img" src="${compFilepath2 }"></td>
								</tr>
							</c:if>
							<tr>
								<td colspan="2">
									<div class="board_button">
										<a href="/userManage/userApprobateList?reqPage=1" class="board_Rebtn">목록으로</a>
									</div>
								</td>
							</tr>
						</table>
					</section>
				</div>
			</div>
		<!-- 푸터 -->
	</div>
</div>
</body>
</html>