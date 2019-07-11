<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_room.jsp" %>   <!--맨왼쪽  서브네비 메뉴-->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">전체 매물관리</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title"></div>
			<div class="set_form search">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tr>
						<th>검색어</th>
						<td>
							<span class="sbox small">
								<select>
									<option>고객명</option>
									<option>아이디</option>
									<option>예약번호</option>
									<option>상품명</option>
									<option>담당직원</option>
								</select>
							</span>
							<input class="tbox w_6p">
						</td>
					</tr>
					<tr>
						<th>상태</th>
						<td colspan="3">
							<label><input type="checkbox"><span>판매중</span></label>
							<label class="ml10"><input type="checkbox"><span>판매완료</span></label>
							<label class="ml10"><input type="checkbox"><span>노쇼</span></label>
						</td>
					</tr>
				</table>
				<div class="set_form_search">
					<a href="javascript:void(0)" class="btn col_red f_w">검색</a>
					<a href="javascript:void(0)" class="btn col_grey line ml5">전체 목록</a>
				</div>
			</div>
			<div class="list_form">
				<div class="table_list_btn">
					<span class="right_btn">
						<a href="javascript:void(0)" class="btn col_darkGrey f_w">선택 취소</a>
					</span>
				</div>
				<table class="table_list">
					<colgroup>
						<col width="50">
						<col width="90">
						<col width="90">
						<col width="90">
						<col width="200">
						<col width="80">
						<col width="90">
						<col width="90">
						<col width="90">
					</colgroup>
					<thead>
					<tr>
						<th><label><input type="checkbox"></label></th>
						<th>매물번호</th>
						<th>담당자</th>
						<th>매물종류</th>
						<th>매물제목</th>
						<th>상세보기</th>
						<th>매물상태</th>
						<th>아이템 적용</th>
						<th>매물등록일</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="" begin="">
					
					</c:forEach>
					<tr>
						<td><label><input type="checkbox"></label></td>
						<td>1</td>
						<td>
							<div class="mb5">담당자이름</div>
						</td>
						<td>
							<div>원룸</div>
						</td>
						<td>원룸매물1번제목입니다</td>
						<td>
							<div class="set_menu">
								<a href="/shop/itemInfo" class="btn col_navy f_w">상세보기</a>
							</div>
						</td>
						<td>
							<span class="sbox small">
								<select>
									<option value="판매중" selected="selected">판매중</option>
									<option value="판매중단">판매중단</option>
									<option value="판매완료">판매완료</option>
								</select> 
							</span>
						</td>
						<td>
							<span class="sbox small">
								<select>
									<option value="비적용" selected="selected">비적용</option>
									<option value="적용">적용</option>
								</select> 
							</span>
						</td>
						<td>18-09-30<br/>11:30</td>
					</tr>
					</tbody>
				</table>
			</div>
			<ul class="page_wrap">
				<li><a href="#none">First</a></li>
				<li><a href="#none">Prev</a></li>
				<li><a href="#none" class="num active">1</a></li>
				<li><a href="#none" class="num">2</a></li>
				<li><a href="#none" class="num">3</a></li>
				<li><a href="#none">Next</a></li>
				<li><a href="#none">Last</a></li>
			</ul>
		</div>
	</div>
	<footer role="footer" data-include="footer.html"></footer>
</div>
</body>
</html>