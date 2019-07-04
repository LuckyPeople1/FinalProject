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
			<div class="page_title">전체직원 관리</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="list_form">
				<table class="table_list">
					<colgroup>
						<col width="70">
						<col width="70">
						<col width="140">
						<col width="100">
						<col width="140">
						<col width="100">
						<col width="120">
						<col width="120">
						<col width="100">
						<col width="100">
						<col width="100">
						<col width="170">
					</colgroup>
					<thead>
					<tr>
						<th>NO</a></th>
						<th>직급</a></th>
						<th>이름</a></th>
						<th>거래 완료 횟수</a></th>
						<th>휴대폰번호</th>
						<th>가입일</a></th>
						<th>관리</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>1</td>
						<td>대표중개인</td>
						<td>최희수</td>
						<td>12회</td>
						<td>010-8464-9696</td>
						<td>2019-07-02</td>
						<td>
							<a href="/shop/memberInfo" class="btn col_navy f_w">상세보기</a>
							<a href="javascript:void(0)" class="btn col_grey line">삭제</a>
						</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>

	</div>
	<footer role="footer" data-include="footer.jsp"></footer>
	<div class="popup memo">
		<div class="popupCon">
			<div class="head">
				<span>메모</span>
			</div>
			<div class="body scroll">
				<textarea class="text_editor smaller"></textarea>
			</div>
			<div class="footer">
				<a href="javascript:closePop()" class="btn pop col_darkGrey f_w">닫기</a>
				<a href="javascript:void(0)" class="btn pop col_red f_w">저장</a>
			</div>
		</div>
	</div>

	<div class="popup send">
		<div class="popupCon">
			<div class="head">
				<span>팝업/SMS 전송</span>
			</div>
			<div class="body scroll">
				<div class="send_sel">
					<a href="#none" class="send_type">SMS 전송</a>
					<a href="#none" class="send_type">푸시알림 전송</a>
				</div>
				<textarea class="text_editor smaller"></textarea>
			</div>
			<div class="footer">
				<a href="javascript:closePop()" class="btn pop col_darkGrey f_w">닫기</a>
				<a href="javascript:void(0)" class="btn pop col_red f_w">전송</a>
			</div>
		</div>
	</div>

</div>
<script>
	// 메모 팝업창
	function memo_pop(e){
		$('.contents').addClass('overlay');
		$('.popup.memo').show();
	}

	// sms,푸시알림 팝업창
	function send_pop(e){
		$('.contents').addClass('overlay');
		$('.popup.send').show();
	}


	// sms, 푸시알림 선택
	$(document).on('click','.send_type',function () {

		$('.send_type').removeClass('on')
		$(this).addClass('on')

	})






</script>
</body>
</html>