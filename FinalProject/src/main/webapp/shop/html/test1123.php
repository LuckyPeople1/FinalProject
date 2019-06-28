<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>아이주 관리자</title>
	<link rel="stylesheet" type="text/css" href="../css/reset.css">
	<link rel="stylesheet" type="text/css" href="../css/ui.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<script src="../js/jquery-3.1.1.min.js"></script>
	<script src="../js/ui.js"></script>
	<script src="../js/jquery-ui-1.12.1.js"></script>
	<script src="../js/include.js"></script>
</head>
<body>
<div class="container">
	<nav>
		<div role="main_nav" data-include="nav_main.html"></div>
		<div role="sub_nav" data-include="nav_shop.html"></div>
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">직원 추가</div>
			<div class="page_sub_title"></div>
		</div>
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
						<th>아이디</th>
						<td><input class="tbox"><a href="javascript:void(0)" class="btn col_red f_w ml10">중복확인</a></td>
						<th>이름</th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input class="tbox full" type="password"></td>
						<th>비밀번호 확인</th>
						<td><input class="tbox full" type="password"></td>
					</tr>
					<tr>
						<th>매장</th>
						<td>
							<span class="sbox">
								<select>
									<option>선택</option>
									<option>가인헤어</option>
									<option>가인네일</option>
								</select>
							</span>
						</td>
						<th>휴대폰 번호</th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>사진</th>
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
		<div class="section">
			<div class="section_title">선택 정보</div>
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
						<th>주소</th>
						<td colspan="3"><input class="tbox full"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input class="tbox full"></td>
						<th>예금주</th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>은행명</th>
						<td><input class="tbox full"></td>
						<th>계좌번호</th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>소개</th>
						<td colspan="3">
							<textarea class="text_editor smaller"></textarea>
						</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="section">
			<div class="section_title">근무정보</div>
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
						<th>전문업종</th>
						<td><input class="tbox full"></td>
						<th>시간당 처리가능 인원</th>
						<td>
							<span class="sbox">
								<select>
									<option>선택</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
									<option>10</option>
								</select>
							</span>
						</td>
					</tr>
					<tr>
						<th>매장명</th>
						<td><input class="tbox full" value=""></td>
						<th>매장번호</th>
						<td><input class="tbox full" value=""></td>
					</tr>
					<tr>
						<th>매장주소</th>
						<td><input class="tbox full" value=""></td>
						<th>매장 즐겨찾기 수</th>
						<td>0</td>
					</tr>
					<tr>
						<th>담당자 아이디</th>
						<td>
							<span class="sbox">
								<select>
									<option>담당자 선택</option>
									<option>ssooya90</option>
									<option>quyfsdaf</option>
								</select>
							</span>
						</td>
						<th>담당자 이름</th>
						<td>최희수</td>
					</tr>
					<tr>
						<th>담당자 연락처</th>
						<td>010-8464-9696</td>
						<th>매장 생성일시</th>
						<td></td>
					</tr>
					<tr>
						<th>총 직원수</th>
						<td>0</td>
						<th>판매중인 상품수</th>
						<td>0개</td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="section">
			<div class="section_title">상세정보</div>
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
						<th>매장소개</th>
						<td colspan="3">
							<textarea class="text_editor smaller"></textarea>
						</td>
					</tr>
					<tr>
						<th>매장키워드</th>
						<td colspan="3">
							<a href="#none" class="tag col_red f_w keyword_add">추가</a>
						</td>
					</tr>
					<tr>
						<th>사업자번호</th>
						<td><input class="tbox full" placeholder="'-'을 제외한 숫자만 입력"></td>
						<th>은행명</th>
						<td><input class="tbox full"></td>
					</tr>
					<tr>
						<th>계좌번호</th>
						<td><input class="tbox full"></td>
						<th>계좌명</th>
						<td><input class="tbox full"></td>
					</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="btn_box">
			<a href="javascript:void(0)" class="btn col_darkGrey">취소</a>
			<a href="javascript:void(0)" class="btn col_red">저장</a>
		</div>
		<div class="list_form">

		</div>

	</div>
	<footer role="footer" data-include="footer.html"></footer>

</div>
<script src="../js/shop_setting.js"></script>
</body>

</html>