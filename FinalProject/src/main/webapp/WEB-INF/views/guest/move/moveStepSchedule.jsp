<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp" %>
	<div class="contents">
		<section class="moveStep inner">
			<div class="sectionTitle">날짜 및 이사 종류</div>
			<div class="moveGroup">
				<form id="scheduleFrm">
					<div class="moveScheduleGroup">
						<div class="scheduleBox">
							<div class="scheduleTitle">이사 날짜</div>
							<div id="calendar"></div>
							<input type="hidden" name="date" value="${sessionScope.scheduleInfo.date}">
						</div>
						<div class="scheduleBox">
							<div class="scheduleTitle">이사 시작 시간</div>
							<div class="timeSelect">
								<input type="hidden" name="time">
								<span class="sbox">
									<select name="hour" onchange="package.scheduleTime(this)">
										<c:forEach begin="0" end="23" varStatus="status">
											<option value="${status.index}" ${sessionScope.scheduleInfo.time.split(':')[0] == status.index ? 'selected' : ''}>${status.index}</option>
										</c:forEach>
									</select>
								</span>
								<span class="hyphen">:</span>
								<span class="sbox">
									<select name="min" onchange="package.scheduleTime(this)">
										<option value="0" ${sessionScope.scheduleInfo.time.split(':')[1] == '0' ? 'selected' : ''}>0</option>
										<option value="30" ${sessionScope.scheduleInfo.time.split(':')[1] == '30' ? 'selected' : ''}>30</option>
									</select>
								</span>
							</div>
						
						</div>
						<div class="scheduleBox">
							<div class="scheduleTitle">희망 이사 종류</div>
							<div class="moveHopeList moveListInput">
								<label>
									<input type="radio" name="moveHope" value="차량만" ${sessionScope.scheduleInfo.moveHope == "차량만" ? 'checked' : ''}>
									<span>차량만</span>
								</label>
								<label>
									<input type="radio" name="moveHope" value="일반" ${sessionScope.scheduleInfo.moveHope == "일반" ? 'checked' : ''}>
									<span>일반</span>
								</label>
								<label>
									<input type="radio" name="moveHope" value="반포장" ${sessionScope.scheduleInfo.moveHope == "반포장" ? 'checked' : ''}>
									<span>반포장</span>
								</label>
								<label>
									<input type="radio" name="moveHope" value="포장" ${sessionScope.scheduleInfo.moveHope == "포장" ? 'checked' : ''}>
									<span>포장</span>
								</label>
							</div>
							<div class="moveHopeInfo">
								이미지
							</div>
						</div>
						<div class="scheduleBox">
							<div class="moveHelp ">
								<div class="scheduleTitle">고객 도움 여부${sessionScope.scheduleInfo.date}</div>
								<div class="helpInfo">기사님과 무거운 짐(냉장고, 세탁기 등)을 함께 옮길 수 있는 사람이 있나요? (본인 포함)
								</div>
								<div class="helpSelect moveListInput">
									<label class="half">
										<input type="radio" name="moveHelp" value="Y" ${sessionScope.scheduleInfo.moveHelp == "Y" ? 'checked' : ''}>
										<span>있음</span>
									</label>
									<label class="half">
										<input type="radio" name="moveHelp" value="N" ${sessionScope.scheduleInfo.moveHelp == "N" ? 'checked' : ''}>
										<span>없음</span>
									</label>
								</div>
							</div>
						</div>
						<div class="scheduleBox">
							<div class="moveAgree">
								<label>
									<input type="checkbox" name="moveAgree">
									<span>이사 날짜, 시간, 종류에 대해 확인하였습니다.</span>
								</label>
							</div>
						</div>
					</div>
				</form>
				<div class="packageBtnBox">
					<a href="/move/step3" class="btn col_darkGrey f_w big">뒤로가기</a>
					<a href="javascript:package.scheduleSelect()" class="btn col_main f_w big">다음</a>
				</div>
			</div>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp" %>


</div>
<script src="/guest/js/move/package.js"></script>
<script>

	$(function () {
		$("#calendar").datepicker({
			changeMonth: false,
			changeYear: false,
			dateFormat: 'yy-mm-dd',
			prevText: '이전 달',
			nextText: '다음 달',
			monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			dayNames: ['일', '월', '화', '수', '목', '금', '토'],
			dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
			dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
			showMonthAfterYear: true,
			yearSuffix: '년',
			minDate: 0, // 오늘 이전 날짜 선택 불가
			maxDate: 60,
			beforeShow:function(input, inst){
			
			
			},


				onSelect : function (dateText) {
				$('input[name=date]').val(dateText);
			}
		});

		
		// 초기값
		var sessionDate	=	$('input[name=date]').val();
		var date = new Date(sessionDate);
		
		$('#calendar').datepicker('setDate', date);
	});

</script>
</body>
</html>