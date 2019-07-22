<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_shop.jsp" %>   <!--맨왼쪽  서브네비 메뉴-->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">부동산설정</div>
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
						<td><input class="tbox full" name="" value="${item.companyName }"></td>
						<th>대표자명<span class="ess">*</span></th>
						<td><input class="tbox full" name="userName" value="${item.userName }"></td>
					</tr>
					<tr>
						<th>연락처<span class="ess">*</span></th>
						<td><input class="tbox full" name="userPhone" value="${item.userPhone }"></td>
						<th>이메일</th>
						<td><input class="tbox full" name="userEmail" value="${item.userEmail }"></td>
					</tr>
					<tr>
						<th>주소<span class="ess">*</span></th>
						<td colspan="3"><input class="tbox full" name="userAddr" value="${item.userAddr } ${item.addrCode}"></td>
					</tr>
					<tr>
						<th>사업자등록번호<span class="ess">*</span></th>
						<td><input class="tbox full" name="businessNumber" value="${item.businessNumber }"></td>
						<th>사업자 등록증<span class="ess">*</span></th>
						<td>
							<div class="img_upload">
								<input type="file" name="fileImg" id="img_0" class="hide" onchange="img_change(this)" value="${compFilepath1}">
								<a href="#none" class="imgUp" id="imgUp_0" onclick="img_up(this)" name="fileName">
									<img id="mypage"  src="${compFilepath1 }"> 
								</a>
							</div>
						</td>
					</tr>
					<tr>
						<th>중개사번호<span class="ess">*</span></th>
						<td><input class="tbox full" name="registrationNumber" value="${item.registrationNumber }"></td>
						<th>중개사 등록증<span class="ess">*</span></th>
						<td>
							<div class="img_upload">
								<input type="file" name="fileImg" id="img_0" class="hide" onchange="img_change(this)" value="${compFilepath2 }">
								<a href="#none" class="imgUp" id="imgUp_0" onclick="img_up(this)" name="fileName">
									<img id="mypage"  src="${compFilepath2 }"> 
								</a>
							</div>
						</td>
					</tr>
					<tr>
						<th>자기소개<span class="ess">*</span></th>
						<td colspan="3"><input class="tbox full" id="userIntroduce" name="userIntroduce" value="${item.userIntroduce }"></td>
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
			<a href="javascript:void(0)" class="btn col_blue">확인</a>
		</div>
		<div class="list_form">
		</div>
	</div>
	<%@include file="/WEB-INF/views/shop/common/footer.jsp"%>


</body>
</html>