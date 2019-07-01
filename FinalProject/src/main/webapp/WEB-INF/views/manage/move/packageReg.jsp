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
											   onchange="goodsReg.imgSel(this, event)">
										<a href="#none" class="upload_btn"></a>
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="set_field">
					<div class="field_title">
						<span class="title_mark">■ 옵션1 정보</span>
					</div>
					<table class="set_table packageOption">
						<colgroup>
							<col width="200">
							<col width="*">
						</colgroup>
						<thead>
						<tr>
							<th>옵션 사용유무</th>
							<td>
								<div class="opUse">
									<label class="chk">
										<input type="radio" name="opUse1" value="1" onchange="package.optionToggle(this)">
										<span>사용</span>
									</label>
									<label class="chk ml10">
										<input type="radio" name="opUse1" value="0" onchange="package.optionToggle(this)" checked>
										<span>미사용</span>
									</label>
								</div>
							</td>
						</tr>
						</thead>
						<tbody>
						<tr>
							<th>옵션명</th>
							<td>
								<input type="text" class="tbox normal" name="packageOptionName">
							</td>
						</tr>
						<tr>
							<th>옵션값</th>
							<td>
								<div class="color_list optionValueList">
									<div class="color_set">
										<input class="tbox" name="packageOptionValue">
										<span class="color_preview"></span>
										<a href="#none" class="removeBtn" onclick="goodsReg.tagRemove(this)">X</a>
									</div>
									<div class="color_set">
										<input class="tbox" name="packageOptionValue">
										<span class="color_preview"></span>
										<a href="#none" class="removeBtn" onclick="goodsReg.tagRemove(this)">X</a>
									</div>
									<div class="color_set">
										<input class="tbox" name="packageOptionValue">
										<span class="color_preview"></span>
										<a href="#none" class="removeBtn" onclick="goodsReg.tagRemove(this)">X</a>
									</div>
									<a href="javascript:goodsReg.tagAdd()" class="addBtn col_main f_w">추가</a>
								</div>
							</td>
						</tr>
						<tr>
							<th>기타옵션 사용</th>
							<td>
								<label class="chk">
									<input type="radio" name="etcUse1" value="1">
									<span>사용</span>
								</label>
								<label class="chk ml10">
									<input type="radio" name="etcUse1" value="0" checked>
									<span>미사용</span>
								</label>
							</td>
						</tr>
						</tbody>
					
					</table>
				</div>
				
				<!--
				<div class="set_field">
					<div class="field_title">
						<span class="title_mark">■ 옵션2 정보</span>
					</div>
					<table class="set_table packageOption">
						<colgroup>
							<col width="200">
							<col width="*">
						</colgroup>
						<thead>
						<tr>
							<th>옵션 사용유무</th>
							<td>
								<div class="opUse">
									<label class="chk">
										<input type="radio" name="opUse2" onchange="package.optionToggle(this)">
										<span>사용</span>
									</label>
									<label class="chk ml10">
										<input type="radio" name="opUse2" onchange="package.optionToggle(this)" checked>
										<span>미사용</span>
									</label>
								</div>
							
							</td>
						</tr>
						</thead>
						<tbody>
						<tr>
							<th>옵션명</th>
							<td><input type="text" class="tbox normal" name="option1"></td>
						</tr>
						<tr>
							<th>옵션값</th>
							<td>
								<div class="color_list">
									<div class="color_set">
										<input class="tbox" name="goodsTag">
										<span class="color_preview"></span>
										<a href="#none" class="removeBtn" onclick="goodsReg.tagRemove(this)">X</a>
									</div>
									<a href="javascript:goodsReg.tagAdd()" class="addBtn col_main f_w">추가</a>
								</div>
							</td>
						</tr>
						<tr>
							<th>기타옵션 사용</th>
							<td>
								<label class="chk">
									<input type="radio" name="etcUse2">
									<span>사용</span>
								</label>
								<label class="chk ml10">
									<input type="radio" name="etcUse2" checked>
									<span>미사용</span>
								</label>
							</td>
						
						</tr>
						</tbody>
					
					</table>
				</div>
				<div class="set_field">
					<div class="field_title">
						<span class="title_mark">■ 옵션3 정보</span>
					</div>
					<table class="set_table packageOption">
						<colgroup>
							<col width="200">
							<col width="*">
						</colgroup>
						<thead>
						<tr>
							<th>옵션 사용유무</th>
							<td>
								<div class="opUse">
									<label class="chk">
										<input type="radio" name="opUse3">
										<span>사용</span>
									</label>
									<label class="chk ml10">
										<input type="radio" name="opUse3" checked>
										<span>미사용</span>
									</label>
								</div>
							
							</td>
						</tr>
						</thead>
						<tbody>
						<tr>
							<th>옵션명</th>
							<td><input type="text" class="tbox normal" name="option1"></td>
						</tr>
						<tr>
							<th>옵션값</th>
							<td>
								<div class="color_list">
									<div class="color_set">
										<input class="tbox" name="goodsTag">
										<span class="color_preview"></span>
										<a href="#none" class="removeBtn" onclick="goodsReg.tagRemove(this)">X</a>
									</div>
									<a href="javascript:goodsReg.tagAdd()" class="addBtn col_main f_w">추가</a>
								</div>
							</td>
						</tr>
						<tr>
							<th>기타옵션 사용</th>
							<td>
								<label class="chk">
									<input type="radio" name="etcUse2">
									<span>사용</span>
								</label>
								<label class="chk ml10">
									<input type="radio" name="etcUse2" checked>
									<span>미사용</span>
								</label>
							</td>
						
						</tr>
						</tbody>
					
					</table>
				</div>
				<div class="set_field">
					<div class="field_title">
						<span class="title_mark">■ 옵션4 정보</span>
					</div>
					<table class="set_table packageOption">
						<colgroup>
							<col width="200">
							<col width="*">
						</colgroup>
						<thead>
						<tr>
							<th>옵션 사용유무</th>
							<td>
								<div class="opUse">
									<label class="chk">
										<input type="radio" name="opUse4">
										<span>사용</span>
									</label>
									<label class="chk ml10">
										<input type="radio" name="opUse4" checked>
										<span>미사용</span>
									</label>
								</div>
							
							</td>
						</tr>
						</thead>
						<tbody>
						<tr>
							<th>옵션명</th>
							<td><input type="text" class="tbox normal" name="option1"></td>
						</tr>
						<tr>
							<th>옵션값</th>
							<td>
								<div class="color_list">
									<div class="color_set">
										<input class="tbox" name="goodsTag">
										<span class="color_preview"></span>
										<a href="#none" class="removeBtn" onclick="goodsReg.tagRemove(this)">X</a>
									</div>
									<a href="javascript:goodsReg.tagAdd()" class="addBtn col_main f_w">추가</a>
								</div>
							</td>
						</tr>
						<tr>
							<th>기타옵션 사용</th>
							<td>
								<label class="chk">
									<input type="radio" name="etcUse4">
									<span>사용</span>
								</label>
								<label class="chk ml10">
									<input type="radio" name="etcUse4" checked>
									<span>미사용</span>
								</label>
							</td>
						
						</tr>
						</tbody>
					
					</table>
				</div>
				<div class="set_field">
					<div class="field_title">
						<span class="title_mark">■ 옵션5 정보</span>
					</div>
					<table class="set_table packageOption">
						<colgroup>
							<col width="200">
							<col width="*">
						</colgroup>
						<thead>
						<tr>
							<th>옵션 사용유무</th>
							<td>
								<div class="opUse">
									<label class="chk">
										<input type="radio" name="opUse5">
										<span>사용</span>
									</label>
									<label class="chk ml10">
										<input type="radio" name="opUse5" checked>
										<span>미사용</span>
									</label>
								</div>
							
							</td>
						</tr>
						</thead>
						<tbody>
						<tr>
							<th>옵션명</th>
							<td><input type="text" class="tbox normal" name="option5"></td>
						</tr>
						<tr>
							<th>옵션값</th>
							<td>
								<div class="color_list">
									<div class="color_set">
										<input class="tbox" name="goodsTag">
										<span class="color_preview"></span>
										<a href="#none" class="removeBtn" onclick="goodsReg.tagRemove(this)">X</a>
									</div>
									<a href="javascript:goodsReg.tagAdd()" class="addBtn col_main f_w">추가</a>
								</div>
							</td>
						</tr>
						<tr>
							<th>기타옵션 사용</th>
							<td>
								<label class="chk">
									<input type="radio" name="etcUse5">
									<span>사용</span>
								</label>
								<label class="chk ml10">
									<input type="radio" name="etcUse5" checked>
									<span>미사용</span>
								</label>
							</td>
						
						</tr>
						</tbody>
					
					</table>
				</div>
				-->
				
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
