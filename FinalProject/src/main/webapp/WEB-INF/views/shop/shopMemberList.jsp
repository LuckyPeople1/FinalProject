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
									<option>아이디</option>
									<option>성명</option>
									<option>핸드폰번호</option>
								</select>
							</span>
							<input class="tbox w_6p">
						</td>
						<th>회원구분</th>
						<td>
							<label><input type="checkbox" name="member_type"><span>일반</span></label>
							<label class="ml10"><input type="checkbox" name="member_type"><span>카카오톡</span></label>
							<label class="ml10"><input type="checkbox" name="member_type"><span>네이버</span></label>
							<label class="ml10"><input type="checkbox" name="member_type"><span>페이스북</span></label>
							<label class="ml10"><input type="checkbox" name="member_type"><span>구글</span></label>
						</td>
					</tr>
					<tr>
						<th>가입일</th>
						<td colspan="3">
							<input class="tbox" id="dateS">
							<span class="hyphen">~</span>
							<input class="tbox" id="dateE">
							<a href="javascript:setSearchDate('0d')" class="btn col_grey line ml10">당일</a>
							<a href="javascript:setSearchDate('1d')" class="btn col_grey line">어제</a>
							<a href="javascript:setSearchDate('1w')" class="btn col_grey line">일주일</a>
							<a href="javascript:setSearchDate('1m')" class="btn col_grey line">1개월</a>
							<a href="javascript:setSearchDate('3m')" class="btn col_grey line ">3개월</a>
							<a href="javascript:setSearchDate('6m')" class="btn col_grey line ">6개월</a>
						</td>
					</tr>
				</table>
				<div class="set_form_search">
					<a href="javascript:void(0)" class="btn col_red f_w">검색</a>
					<a href="javascript:void(0)" class="btn col_grey line ml5">전체 목록</a>
				</div>
			</div>
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
						<th><a href="#none" class="align_btn">NO</a></th>
						<th>메모</th>
						<th><a href="#none" class="align_btn">아이디</a></th>
						<th><a href="#none" class="align_btn">이름</a></th>
						<th>추천인ID</th>
						<th><a href="#none" class="align_btn">추천수</a></th>
						<th><a href="#none" class="align_btn">예약횟수</a></th>
						<th>휴대폰번호</th>
						<th><a href="#none" class="align_btn">보유포인트</a></th>
						<th><a href="#none" class="align_btn">가입일</a></th>
						<th><a href="#none" class="align_btn">최종접속일</a></th>
						<th>관리</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>1</td>
						<td>
							<a href="#none" class="btn col_lightYellow line" onclick="memo_pop(this)">메모</a>
						</td>
						<td>ssooya90</td>
						<td>최희수</td>
						<td>redmess</td>
						<td>1</td>
						<td>12</td>
						<td>
							<a href="#none" class="tag col_blue f_w" onclick="sms_pop(this)">010-8464-9696</a>
						</td>
						<td>500P</td>
						<td>18-05-02<br/>16:21:22</td>
						<td>18-09-12<br/>17:05:41</td>
						<td>
							<a href="member_info_set.html" class="btn col_navy f_w">상세보기</a>
							<a href="javascript:void(0)" class="btn col_grey line">삭제</a>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td>
							<a href="#none" class="btn col_grey line" onclick="memo_pop(this)">메모</a>
						</td>
						<td>quf9799</td>
						<td>김별</td>
						<td></td>
						<td>2</td>
						<td>3</td>
						<td>
							<a href="#none" class="tag col_blue f_w" onclick="send_pop(this)">010-8464-9696</a>
						</td>
						<td>500P</td>
						<td>18-08-06<br/>11:11:50</td>
						<td>18-09-02<br/>22:41:23</td>
						<td>
							<a href="member_info_set.html" class="btn col_navy f_w">상세보기</a>
							<a href="javascript:void(0)" class="btn col_grey line">삭제</a>
						</td>
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