<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
	<!-- gnb -->
	<%@include file="/WEB-INF/views/manage/common/header.jsp"%>
	<div class="wrapper">
		<!-- lnb -->
		<%@include file="/WEB-INF/views/manage/move/page/moveNav.jsp"%>
		
		<div class="contents">
			<div class="set_field">
				<div class="field_title"><span class="title_mark">■ 부동산 목록</span></div>
				<table class="set_table">
					<colgroup>
						<col width="200">
						<col width="*">
						<col width="200">
						<col width="*">
					</colgroup>
					<tbody>
					<tr>
						<th>발주처</th>
						<td colspan="">
							<span class="sbox small">
								<select name="searchType">
									<option value="1">아이디</option>
									<option value="2">회원명</option>
									<option value="3">휴대폰번호</option>
								</select>
							</span>
							<input class="tbox" name="searchWord" value="">
						</td>
						<th>구매금액</th>
						<td>
							<input class="tbox small" name="minAmount" value=""> ~ <input class="tbox small" name="maxAmount" value="">
						</td>
					</tr>
					<tr>
						<th>등급</th>
						<td colspan="3">
							<label>
								<input type="checkbox">
								<span>등급명1</span>
							</label>
							<label class="ml10">
								<input type="checkbox">
								<span>등급명1</span>
							</label>
							<label class="ml10">
								<input type="checkbox">
								<span>등급명1</span>
							</label>
						</td>
					</tr>
					<tr>
						<th>상태</th>
						<td colspan="3">
							<label>
								<input type="checkbox">
								<span>미확인</span>
							</label>
							<label class="ml10">
								<input type="checkbox">
								<span>작업 대기</span>
							</label>
							<label class="ml10">
								<input type="checkbox">
								<span>작업 진행중</span>
							</label>
							<label class="ml10">
								<input type="checkbox">
								<span>완료</span>
							</label>
							<label class="ml10">
								<input type="checkbox">
								<span>취소</span>
							</label>
						</td>
					</tr>
					
					<tr>
						<th>가입일</th>
						<td colspan="3">
							<input id="dateS" class="tbox"> ~ <input id="dateE" class="tbox">
							<a href="javascript:setSearchDate('0d')" class="btn smaller higher col_grey ml10">당일</a>
							<a href="javascript:setSearchDate('1d')" class="btn smaller higher col_grey ml5">어제</a>
							<a href="javascript:setSearchDate('1w')" class="btn smaller higher col_grey ml5">일주일</a>
							<a href="javascript:setSearchDate('1m')" class="btn smaller higher col_grey ml5">1달</a>
							<a href="javascript:setSearchDate('3m')" class="btn smaller higher col_grey ml5">3달</a>
							<a href="javascript:setSearchDate('6m')" class="btn smaller higher col_grey ml5">6달</a>
						</td>
					</tr>
					</tbody>
				</table>
				<div class="set_menu">
					<a href="javascript:void(0)" class="btn normal col_main f_w">검색</a>
					<a href="javascript:void(0)" class="btn normal col_darkGrey f_w ml5">전체목록</a>
				</div>
			</div>
			<div class="list_field">
				<div class="list_menu">
					<span class="left_menu">
						<a href="javascript:all_chk('y')" class="btn col_grey">전체선택</a>
						<a href="javascript:all_chk('n')" class="btn col_grey">전체해제</a>
						<!--<a href="javascript:void(0)" class="btn col_darkGrey f_w">선택삭제</a>-->
					<span class="sbox ml15">
					<select>
						<option>상태 선택</option>
						<option>작업 대기</option>
						<option>작업 진행중</option>
						<option>완료</option>
					</select>
					</span>
					<a href="javascript:void(0)" class="btn col_darkGrey f_w">선택변경</a>
					</span>
					<span class="right_menu">
						<a href="javascript:void(0)" class="btn col_darkGrey f_w">엑셀저장</a>
						<span class="sbox small">
							<select>
								<option>번호순 ▲</option>
								<option>번호순 ▼</option>
								<option>발주일순 ▲</option>
								<option>발주일순 ▼</option>
							</select>
						</span>
						<span class="sbox small">
							<select>
								<option>20개씩</option>
								<option>50개씩</option>
								<option>100개씩</option>
							</select>
						</span>
					</span>
				</div>
				<table class="list_table">
					<colgroup>
						<col width="40">
						<col width="65">
						<col width="150">
						<col width="100">
						<col width="100">
						<col width="200">
						<col width="120">
						<col width="65">
						<col width="85">
						<col width="100">
					</colgroup>
					<thead>
					<tr>
						<th>
							<label>
								<input type="checkbox" name="all_chk">
							</label>
						</th>
						<th>No</th>
						<th>아이디</th>
						<th>회원명</th>
						<th>이메일</th>
						<th>휴대폰번호</th>
						<th>구매금액</th>
						<th>회원가입일</th>
						<th>상태</th>
						<th>관리</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>
							<label>
								<input type="checkbox" name="">
							</label>
						</td>
						<td>1</td>
						<td>ssooya90</td>
						<td>최희수</td>
						<td>ssooya90@naver.com</td>
						<td class="">01084649696</td>
						<td class="">170,000</td>
						<td>2018-10-10 17:22:12</td>
						<td>
							<span class="tag col_blue f_w">정상</span>
						</td>
						<td>
							<div>
								<a href="work_info.html" class="btn small col_main f_w">상세정보</a>
							</div>
							<div>
								<a href="work_info.html" class="btn small col_darkGrey f_w">정지</a>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<label>
								<input type="checkbox" name="">
							</label>
						</td>
						<td>1</td>
						<td>ssooya90</td>
						<td>최희수</td>
						<td>ssooya90@naver.com</td>
						<td class="">01084649696</td>
						<td class="">170,000</td>
						<td>2018-10-10 17:22:12</td>
						<td>
							<span class="tag col_blue f_w">정상</span>
						</td>
						<td>
							<div>
								<a href="work_info.html" class="btn small col_main f_w">상세정보</a>
							</div>
							<div>
								<a href="work_info.html" class="btn small col_darkGrey f_w">정지</a>
							</div>
						</td>
					</tr>
					
					</tbody>
				</table>
			</div>
			<div class="page_group clearFix">
				<ul class="page_box">
					<li class="first arrow">
						<a href="#none"></a>
					</li>
					<li class="prev arrow">
						<a href="#none"></a>
					</li>
					<li class="on">
						<a href="#none">1</a>
					</li>
					<li class="">
						<a href="#none">2</a>
					</li>
					<li class="next arrow">
						<a href="#none "></a>
					</li>
					<li class="end arrow">
						<a href="#none"></a>
					</li>
				</ul>
			</div>
		</div>
		
		
		
		<!-- 푸터 -->
		<?php include $_SERVER['DOCUMENT_ROOT'] . '/manager/common/page/footer.php'; ?>
	</div>
</div>
