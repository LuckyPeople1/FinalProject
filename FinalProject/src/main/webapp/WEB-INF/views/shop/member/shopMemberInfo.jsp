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
			<div class="page_title">직원 상세정보</div>
			<div class="page_sub_title"></div>
		</div>
		<ul class="tabs_group clearfix">
			<li>
				<a href="#none" class="on">기본정보</a>
			</li>
			<!--<li>-->
			<!--<a href="javascript:void(0)">예약 조회</a>-->
			<!--</li>-->
			<!--<li>-->
			<!--<a href="javascript:void(0)">포인트 조회</a>-->
			<!--</li>-->
		</ul>
		<div class="section">
			<div class="section_title">필수 정보</div>
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
						<td><input class="tbox full" name="employeeName" value=""></td>
						<th>직급<span class="ess">*</span></th>
						<td>
							<span class="sbox full">
								<select name="employeeRank">
									<option value="0" selected="selected">직급선택</option>
									<option value="1">소속공인중개사</option>
									<option value="2">중개보조원</option>
									<option value="3">중개인</option>
								</select>
							</span>
						</td>
					</tr>
					<tr>
						<th>연락처<span class="ess">*</span></th>
						<td><input class="tbox full" name="employeePhone" value=""></td>
						<th>이메일</th>
						<td><input class="tbox full" name="email" value=""></td>
					</tr>
					<tr>
						<th>주소<span class="ess">*</span></th>
						<td colspan="3"><input class="tbox full" name="adress" value=""></td>
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
			</div>
		</div>
		<div class="tip_box">
			<div class="tip">
				<span class="f_red">*</span>표시는 필수입력입니다.
			</div>
		</div>
		<br>
		<br>
		<div class="section">
			<div class="section_title">기본 정보</div>
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
						<th>담당 매물</th>
						<td colspan="3">서울특별시 영등포구 당산동 1234-1234</td>
					</tr>
					<tr>
					</tr>
					<tr>
						<th>거래 완료 횟수</th>
						<td>11</td>
						<th>가입일</th>
						<td>2019-07-02</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="btn_box">
			<a href="javascript:history.back();" class="btn col_darkGrey">취소</a>
			<a href="javascript:void(0)" class="btn col_red">저장</a>
		</div>
		<div class="list_form">

		</div>

	</div>
	<footer role="footer" data-include="footer.jsp"></footer>

</div>
<script>

	//비밀번호 변경 보이기
	function pw_show() {

		var pw_btn = $('a[name="pw"]');

		var pw_temp = '';

		pw_temp += '<div class="tbox_box">';
		pw_temp += '	<div>';
		pw_temp += '		<input class="tbox" type="password" placeholder="비밀번호">';
		pw_temp += '	</div>';
		pw_temp += '	<div class="mt5">';
		pw_temp += '		<input class="tbox" type="password" placeholder="비밀번호 재입력">';
		pw_temp += '	</div>';
		pw_temp += '	<div class="mt5">';
		pw_temp += '		<a href="#none" class="btn col_red f_w" onclick="pw_set(this, \'change\')">변경</a>';
		pw_temp += '		<a href="#none" class="btn col_darkGrey f_w" onclick="pw_set(this, \'n\')">취소</a>';
		pw_temp += '	</div>';
		pw_temp += '</div>';


		pw_btn.parent().append(pw_temp);
		pw_btn.hide();

	}


	// 비밀번호 변경/취소 클릭시
	function pw_set(e , state) {


		if(state == "change"){
			alert('변경되었습니다.');
			location.reload();
		}

		$(e).closest('.tbox_box').hide();
		$('a[name="pw"]').show();


	}
</script>
<script src="/shop/js/shop_setting.js"></script>
</body>
</html>