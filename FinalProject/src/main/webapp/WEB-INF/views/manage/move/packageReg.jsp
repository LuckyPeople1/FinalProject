<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<!-- gnb -->
	<%@include file="/WEB-INF/views/manage/common/header.jsp"%>
	
	
	<div class="wrapper">
		<!-- lnb -->
		<%@include file="/WEB-INF/views/manage/move/page/moveNav.jsp"%>
		
		<section class="contents package">
			<form id="regFrm" name="regFrm">
				<div class="set_field">
					<div class="field_title"><span class="title_mark">■ 짐 정보 입력</span></div>
					<table class="set_table">
						<colgroup>
							<col width="200">
							<col width="*">
						</colgroup>
						<tr>
							<th>짐 유형</th>
							<td>
								<label class="chk">
									<input type="radio" name="packageType" value="0">
									<span>가전</span>
								</label>
								<label class="chk ml10">
									<input type="radio" name="packageType" value="1">
									<span>가구</span>
								</label>
								<label class="chk ml10">
									<input type="radio" name="packageType" value="2">
									<span>기타</span>
								</label>
							</td>
						</tr>
						<tr>
							<th>짐 이름</th>
							<td>
								<input class="tbox full" id="packageName" name="packageName">
							</td>
						</tr>
						<tr>
							<th>짐 아이콘 등록</th>
							<td>
								<div class="img_up_list">
									<div class="img_box">
										<input type="file" class="hide" accept="image/*" name="fileImg" id="fileImg"
											   onchange="package.imgSel(this, event)">
										<a href="#none" class="upload_btn" onclick="package.imgUpload(this)"></a>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="addOptionBtn">
					<a href="javascript:package.optionFieldAdd()">옵션 추가</a>
				</div>
				<div class="btn_group">
					<a href="javascript:history.back()" class="btn col_darkGrey">목록</a>
					<a href="javascript:package.packageReg()" class="btn col_main">등록</a>
				</div>
			</form>
		
		</section>
		
		
		<!-- 푸터 -->
		<?php include $_SERVER['DOCUMENT_ROOT'] . '/manager/common/page/footer.php'; ?>
	</div>
</div>
<script src="/manage/js/move/package.js"></script>


</body>
</html>
