<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">기본환경설정</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title">기본 설정</div>
			<div class="set_form">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<thead></thead>
					<tbody>
					<tr>
						<th>회사명<span class="ess">*</span></th>
						<td><input class="tbox full"></td>
						<th>대표자명<span class="ess">*</span></th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>연락처<span class="ess">*</span></th>
						<td><input class="tbox full"></td>
						<th>사업자등록번호<span class="ess">*</span></th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>주소<span class="ess">*</span></th>
						<td colspan="3"><input class="tbox full"></td>

					</tr>
					<tr>
						<th>사이트명</th>
						<td><input class="tbox full"></td>
						<th>팩스번호</th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>업태</th>
						<td><input class="tbox full"></td>
						<th>종목</th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>통신판매신고번호</th>
						<td><input class="tbox full"></td>
						<th>고객센터</th>
						<td colspan="">
							<input class="tbox full" value="1111-2222 (월-금, 9시-6시, 토-일요일 휴무)">
						</td>
					</tr>
					</tbody>
				</table>
				<div class="tip_box">
					<div class="tip">
						<span class="f_red">*</span>표시는 필수입력입니다.
					</div>
				</div>
			</div>
		</div>
		<div class="section">
			<div class="section_title">추천인 설정</div>
			<div class="set_form">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<thead></thead>
					<tbody>
					<tr>
						<th>가입시 적립포인트</th>
						<td><input class="tbox full"></td>
						<th>추천1</th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>추천2</th>
						<td><input class="tbox full"></td>
						<th>추천3</th>
						<td><input class="tbox full"></td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="btn_box">
			<a href="javascript:void(0)" class="btn col_red">확인</a>
		</div>
		<div class="list_form">

		</div>

	</div>
	<%@include file="/WEB-INF/views/shop/common/footer.jsp"%>


</body>
</html>