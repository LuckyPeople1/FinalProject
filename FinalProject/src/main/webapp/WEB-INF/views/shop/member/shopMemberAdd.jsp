<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.btn_box button{
    width: 90px;
    color: #fff;
    line-height: 40px;
    padding-top: 0;
    padding-bottom: 0;
    font-size: 16px;
    text-align: center;
}

</style>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_member.jsp" %>   <!--맨왼쪽  서브네비 메뉴-->
	</nav>
	
	<div class="contents">
	<form action="">
		<div class="page_header">
			<div class="page_title">직원 등록</div>
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
						<td><input class="tbox full" name="employeeName"></td>
						<th>직급<span class="ess">*</span></th>
						<td>
							<span class="sbox full">
								<select name="employeeRank">
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
						<td><input class="tbox full" name="employeePhone"></td>
						<th>이메일<span class="ess" ></span></th>
						<td><input class="tbox full" name="email"></td>
					</tr>
					<tr>
						<th>주소<span class="ess">*</span></th>
						<td colspan="3">
							<input class="tbox full" name="adress">
						</td>
					</tr>
					<tr>
						<th>중개등록번호<span class="ess">*</span></th>
						<td colspan="3"><input class="tbox full" name="registrationNumber"></td>
					</tr>
					<tr>
						<th>프로필 사진 첨부<span class="ess">*</span></th>
						<td colspan="3">
							<div class="img_upload">
								<input type="file" name="img_0" id="img_0" class="hide" onchange="img_change(this)">
								<a href="#none" class="imgUp" id="imgUp_0" onclick="img_up(this)"></a>
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
			<button type="submit" class="btn col_red">회원등록</button>			
		</div>
		<div class="list_form"></div>
		</form>
	</div>
	<%@include file="/WEB-INF/views/shop/common/footer.jsp"%>
	<script src="/shop/js/shop_employee_add.js"></script>
	</div>
</body>
</html>