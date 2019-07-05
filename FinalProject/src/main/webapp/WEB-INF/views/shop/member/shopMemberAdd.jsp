<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_member.jsp" %>   <!--맨왼쪽  서브네비 메뉴-->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">회원 등록</div>
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
						<th>이름<span class="ess">*</span></th>
						<td><input class="tbox full"></td>
						<th>직급<span class="ess">*</span></th>
						<td>
							<span class="sbox full">
								<select>
									<option value="0" selected="selected">직급선택</option>
									<option value="1">대표공인중개사</option>
									<option value="2">소속공인중개사</option>
									<option value="3">중개보조원</option>
									<option value="4">중개인</option>
								</select>
							</span>
						</td>
					</tr>
					<tr>
						<th>연락처<span class="ess">*</span></th>
						<td><input class="tbox full"></td>
						<th>이메일<span class="ess"></span></th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>주소<span class="ess">*</span></th>
						<td colspan="3">
							<input class="tbox full">
						</td>
					</tr>
					<tr>
						<th>중개등록번호<span class="ess">*</span></th>
						<td colspan="3"><input class="tbox full"></td>
					</tr>
					<tr>
						<th>중개등록증 첨부<span class="ess">*</span></th>
						<td colspan="3">
							<div class="img_upload">
								<input type="file" name="img_0" id="img_0" class="hide" onchange="img_change(this)">
								<a href="#none" class="imgUp" id="imgUp_0" onclick="img_up(this)"></a>
							</div>
						</td>
					</tr>
					<tr>
						<th>사업자등록번호<span class="ess">*</span></th>
						<td colspan="3"><input class="tbox full"></td>
					</tr>
					<tr>
						<th>사업자등록증 첨부<span class="ess">*</span></th>
						<td colspan="3">
							<div class="img_upload">
								<input type="file" name="img_1" id="img_1" class="hide" onchange="img_change(this)">
								<a href="#none" class="imgUp" id="imgUp_1" onclick="img_up(this)"></a>
							</div>
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
		<div class="btn_box">
			<a href="javascript:void(0)" class="btn col_red">회원등록</a>
		</div>
		<div class="list_form">

		</div>

	</div>
	<%@include file="/WEB-INF/views/shop/common/footer.jsp"%>
	<script src="/shop/js/shop_setting.js"></script>
	</div>
</body>
</html>