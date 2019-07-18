<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/manage/common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container">
	<!-- gnb -->
	<%@include file="/WEB-INF/views/manage/common/header.jsp" %>
	
	
	<div class="wrapper">
		<!-- lnb -->
		<%@include file="/WEB-INF/views/manage/move/page/moveNav.jsp" %>
		
		<section class="contents package">
			<form id="regFrm" name="regFrm">
				<input type="hidden" name="packageIdx" value="${item.packageIdx}"/>
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
									<input type="radio" name="packageType"
										   value="0" ${item.packageType == 0 ? 'checked' : ''}>
									<span>가전</span>
								</label>
								<label class="chk ml10">
									<input type="radio" name="packageType"
										   value="1" ${item.packageType == 1 ? 'checked' : ''}>
									<span>가구</span>
								</label>
								<label class="chk ml10">
									<input type="radio" name="packageType"
										   value="2" ${item.packageType == 2 ? 'checked' : ''}>
									<span>기타</span>
								</label>
							</td>
						</tr>
						<tr>
							<th>짐 이름</th>
							<td>
								<input class="tbox full" id="packageName" name="packageName"
									   value="${item.packageName}">
							</td>
						</tr>
						<tr>
							<th>짐 아이콘 등록</th>
							<td>
								<div class="img_up_list">
									<div class="img_box">
<%--										<input type="file" class="hide" accept="image/*" name="fileImg" id="fileImg" onchange="package.imgSel(this, event)">--%>
										<a href="#none" class="upload_btn" onclick="package.imgUpload(this)"></a>
										<img src="${item.packageImgPath}" alt="이미지">
										<a href="#none" class="del_btn" onclick="package.delImg(this,'M')">삭제</a>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<c:forEach items="${optionList}" var="item">
					<table class="set_table packageOption">
						<colgroup>
							<col width="200">
							<col width="*">
						</colgroup>
						<tbody>
						<tr>
							<th>옵션명</th>
							<td>
								<input type="text" class="tbox normal" name="packageOptionName" value="${item.packageOptionName}">
								<a href="#none" class="opDelBtn btn col_darkGrey f_w small" onclick="package.optionFieldDelete(this)">옵션 삭제</a>
							</td>
						</tr>
						<tr>
							<th>옵션값</th>
							<td>
								<div class="color_list optionValueList">
									<c:set var="optionValue" value="${fn:split(item.packageOptionValue,',')}"/>
									<c:forEach items="${optionValue}" var="option">
										<div class="color_set">
											<input class="tbox" name="packageOptionValue" value="${option}">
											<span class="color_preview"></span>
											<a href="#none" class="removeBtn" onclick="package.optionValueDelete(this)">X</a>
										</div>
									</c:forEach>
									<a href="#none" class="addBtn col_main f_w" onclick="package.optionValueAdd(this)">추가</a>
								</div>
							</td>
						</tr>
						<tr>
							<th>기타옵션 사용</th>
							<td>
								<div class="etcCheckBox">
									<label class="chk">
										<input type="checkbox" name="etcUse" value="1" onchange="package.optionToggle(this)" ${item.packageOptionEtc == 1 ? 'checked' : ''}>
										<span>사용</span>
									</label>
									<label class="chk ml10">
										<input type="checkbox" name="etcUse" value="0" onchange="package.optionToggle(this)" ${item.packageOptionEtc == 0 ? 'checked' : ''}>
										<span>미사용</span>
									</label>
								</div>
							</td>
						</tr>
						</tbody>
					</table>
				
				</c:forEach>
				
				<div class="addOptionBtn">
					<a href="javascript:package.optionFieldAdd()">옵션 추가</a>
				</div>
				<div class="btn_group">
					<a href="javascript:history.back()" class="btn col_darkGrey">목록</a>
					<a href="javascript:package.packageModify(${item.packageIdx})" class="btn col_main">수정</a>
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
