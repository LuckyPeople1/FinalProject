<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@include file="/WEB-INF/views/driver/common/head.jsp" %>   <!--스타일--> --%>
<body>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp"%>
		<!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_room.jsp"%>
		<!--맨왼쪽  서브네비 메뉴-->
		<%-- <%@include file="/WEB-INF/views/driver/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/driver/page/nav_set.jsp" %>    <!--맨왼쪽 2번째 네비 메뉴 (마이페이지 메뉴)  --> --%>
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">직원 등록</div>
			<div class="page_sub_title"></div>
		</div>
		<form id="driverMypageUpdate">
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
							<td><input class="tbox full" id="employeeName" name="employeeName"></td>  <!--여기 이름 추가해야함!!!  -->
							<th>전화번호<span class="ess">*</span></th>
							<td><input class="tbox full" name="employeePhone"></td>
						</tr>
						<tr>
							<th>이메일<span class="ess">*</span></th>
							<td><input class="tbox full" id="email" name="email"></td>
							<th>중개사등록번호<span class="ess">*</span></th>
							<td><input class="tbox full" name="registrationNumber"></td>
						</tr>
						<tr>
							<th>주소<span class="ess">*</span></th>
							<td><input class="tbox full" id="adress" name="adress"></td>
							<th>직급<span class="ess">*</span></th>
							<td>
							<select class="iDUqOA hRFrgm" name="employeeRank">
										<option value="0">담당자 선택</option>
										<option value="1">앙</option>
										<option value="2">김오띠</option>
										<option value="3">뀨</option>
										
									</select>
									</td>
						</tr>
						<tr>
							<th>전화번호<span class="ess">*</span></th>
							<td><input class="tbox full" id="employeePhone" name="employeePhone"></td>
							
						</tr>
						<tr>
							<th>프로필 사진<span class="ess">*</span></th>
							<td colspan="">
								<div class="img_upload">
									<input type="file" name="fileImg" id="img_0" class="hide" onchange="img_change(this)">
									<a href="#none" class="imgUp" id="imgUp_0" onclick="img_up(this)" name="fileName">
										
									</a>
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
		</form>
		<div class="btn_box">
			<a href="/driver/" class="btn col_blue">목록으로</a>
			<a href="javascript:void(0)" class="btn col_blue" onclick="DriverupdateClick();">등록</a>
		</div>
		<div class="list_form">
		</div>

	</div>
	<%-- <%@include file="/WEB-INF/views/driver/common/footer.jsp"%> --%>
	<script src="/driver/js/shop_setting.js"></script>
	<script>
	function DriverupdateClick(){
		var formData= new FormData($('#driverMypageUpdate')[0]);
	$.ajax({
	      url : "/shop/shopMemberAdd",
	      data:formData,
	      type : "post",
	      enctype: 'multipart/form-data',
	      processData: false,
	      contentType: false,
	      success : function(data){	        
	      },
	      error : function(){
	          
	      }
	  });
	}
	</script>
</div>
</body>
</html>