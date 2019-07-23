<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/manage/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
	<!-- gnb -->
	<%@include file="/WEB-INF/views/manage/common/header.jsp"%>
	<div class="wrapper">
		<!-- lnb -->
		<%@include file="/WEB-INF/views/manage/shop/page/moveNav.jsp"%>
		
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
					<th>부동산 검색</th>
					<td colspan="4">
						<span class="sbox small">
							<select name="searchType" id="searchType">
								<option value="1">담당자명</option>
								<option value="2">중개사명</option>
							</select>
						</span>
						<input class="tbox" name="searchWord" id="searchWord" value="">
					</td>
				</tr>
				</tbody>
			</table>
			<div class="set_menu">
				<button type="submit" id="search_btn"  class="btn normal col_main f_w">검색</button>
				<a href="/shopManage/shopAllList" class="btn normal col_darkGrey f_w ml5">전체목록</a>
			</div>
		</div>
		<div class="list_field">
			<table class="list_table">
				<colgroup>
					<col width="40">
					<col width="80">
					<col width="100">
					<col width="100">
					<col width="100">
					<col width="200">
					<col width="120">
					<col width="65">
					<col width="85">
				</colgroup>
				<thead>
				<tr>
					<th>No</th>
					<th>매물번호</th>
					<th>중개사명</th>
					<th>담당자</th>
					<th>매물종류</th>
					<th>거래종류</th>
					<th>판매상태</th>
					<th>아이템상태</th>
					<th>등록일</th>
					<th>관리</th>
				</tr>
				</thead>
				<tbody>
					<c:forEach var="list" items="${list}" varStatus="i">
						<tr>
							<td>${i.count }</td>
							<td><a href="/shop/itemView?shopItemIdx=${list.shopItemIdx }">${list.shopItemIdx }</a></td>
							<td>${list.shopName }</td>
							<td>${list.shopItemManager }</td>
							<td>${list.shopItemType1 }</td>
							<td>${list.shopItemDealType }</td>
							<td>
								<c:if test="${list.shopItemSaleState eq '판매완료'}">
									<span class="tag col_darkGrey f_w">${list.shopItemSaleState }</span>
								</c:if>
								<c:if test="${list.shopItemSaleState eq '판매중단'}">
									<span class="tag col_darkGrey f_w">${list.shopItemSaleState }</span>
								</c:if>
								<c:if test="${list.shopItemSaleState eq '판매중'}">
									<span class="tag col_blue f_w">${list.shopItemSaleState }</span>
								</c:if>
								<c:if test="${list.shopItemSaleState eq '삭제'}">
									<span class="tag col_darkGrey f_w">${list.shopItemSaleState }</span>
								</c:if>
							</td>
							<c:if test="${list.shopItemPremiumState eq '0'}">
								<td><span class="tag col_darkGrey f_w">비적용</span></td>
							</c:if>
							<c:if test="${list.shopItemPremiumState eq '1'}">
								<td><span class="tag col_blue f_w">적용</span></td>
							</c:if>
							<td>${list.shopItemRegDate }</td>
							<td>
								<input name="userIdx" type="hidden" value=${list.userIdx }>
								<input name="shopItemIdx" type="hidden" value=${list.shopItemIdx }>
								<c:if test="${list.shopItemSaleState eq '판매중단'}">
									<button type="button" class="btn normal col_blue f_w" name="addItem" value=${list.shopItemIdx }>판매진행</button>
								</c:if>
								<c:if test="${list.shopItemSaleState eq '판매중'}">
									<button type="button" class="btn normal col_darkGrey f_w" name="stopItem" value=${list.shopItemIdx }>판매중단</button>
								</c:if>
								<c:if test="${list.shopItemPremiumState eq '0' && list.shopItemSaleState eq '판매중'}">
									<button type="button" class="btn normal col_blue f_w" name="powerIng" value=${list.shopItemIdx }>아이템 적용</button>
								</c:if>
								<c:if test="${list.shopItemPremiumState eq '1' && list.shopItemSaleState eq '판매중'}">
									<button type="button" class="btn normal col_darkGrey f_w" name="powerEnd" value=${list.shopItemIdx }>아이템 해제</button>
								</c:if>
								<button type="button" class="btn normal col_darkGrey f_w" name="delItem" value=${list.shopItemIdx }>삭제</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="page_group clearFix">
			<ul class="page_box">
				${pageNavi}
			</ul>
		</div>
</div>
<script>
	$("button[name=powerIng]").click(function(){
		var idx = $(this).val();
		var userIdx = $("input[name='userIdx']").val();
		if(confirm("아이템을 적용하시겠습니까?")){
			location.href="/shopManage/powerIng?shopItemIdx="+idx+"&userIdx="+userIdx;
		}
		return;
	});
	
	$("button[name=powerEnd]").click(function(){
		var idx = $(this).val();
		var userIdx = $("input[name='userIdx']").val();
		if(confirm("아이템을 해제하시겠습니까?")){
			location.href="/shopManage/powerEnd?shopItemIdx="+idx+"&userIdx="+userIdx;
		}
		return;
	});
	
	$("button[name='delItem']").click(function(){
		var idx = $(this).val();
		var userIdx = $("input[name='userIdx']").val();
		if(confirm("정말 삭제하시겠습니까?")){
			location.href="/shopManage/shopItemDelete?shopItemIdx="+idx+"&userIdx="+userIdx;
		}
		return;
	});
	$("button[name='stopItem']").click(function(){
		var idx = $(this).val();
		var userIdx = $("input[name='userIdx']").val();
		if(confirm("판매중단으로 변경하시겠습니까?")){
			location.href="/shopManage/shopItemStop?shopItemIdx="+idx+"&userIdx="+userIdx;
		}
		return;
	});
	$("button[name='addItem']").click(function(){
		var idx = $(this).val();
		var userIdx = $("input[name='userIdx']").val();
		if(confirm("판매중으로 변경하시겠습니까?")){
			location.href="/shopManage/shopItemIng?shopItemIdx="+idx+"&userIdx="+userIdx;
		}
		return;
	});
</script>
</body>
</html>