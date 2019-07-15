<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_room.jsp" %>   <!--맨왼쪽  서브네비 메뉴-->
	</nav>
	<div class="contents">
		<section class="shopItemList">
		<div class="page_header">
			<div class="page_title">전체 매물관리</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<div class="section_title"></div>
			<div class="set_form search">
			<form action="/shop/item" id="shopItemSearch" method="get">
				<table class="table_set">
					<colgroup>
						<col width="180">
						<col width="*">
						<col width="180">
						<col width="*">
					</colgroup>
					<tr>
						<th>카테고리</th>
						<td colspan="3">
							<span class="sbox small">
								<select name="shopItemManager">
									<option selected="selected" value="">담당자선택</option>
								</select>
							</span>
							<span class="sbox small">
								<select name="type">
									<option selected="selected" value="">매물선택</option>
									<option value=1>원룸</option>
									<option value=2>투룸</option>
									<option value=3>쓰리룸</option>
									<option value=4>오피스텔</option>
									<option value=5>아파트</option>
								</select>
							</span>
						</td>
					</tr>
					<tr>
						<th>검색어</th>
						<td colspan="3">
							<input class="tbox w_6p">
						</td>
					</tr>
				</table>
				</form>
				<div class="set_form_search">
					<a href="javascript:$('#shopItemSearch').submit()" class="btn col_red f_w">검색</a>
					<a href="/shop/item" class="btn col_grey line ml5">전체 목록</a>
				</div>
			</div>
			<div class="list_form">
				<div class="table_list_btn">
					<span class="right_btn">
						<a href="javascript:void(0)" class="btn col_darkGrey f_w">선택 취소</a>
					</span>
				</div>
				<table class="table_list">
					<colgroup>
						<col width="50">
						<col width="90">
						<col width="90">
						<col width="90">
						<col width="90">
						<col width="200">
						<col width="80">
						<col width="90">
						<col width="90">
						<col width="150">
					</colgroup>
					<thead>
					<tr>
						<th><label><input type="checkbox"></label></th>
						<th>매물번호</th>
						<th>담당자</th>
						<th>매물종류</th>
						<th>거래종류</th>
						<th>매물제목</th>
						<th>매물상태</th>
						<th>아이템 적용</th>
						<th>매물등록일</th>
						<th>관리</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach items="${list}" var="item">
					<tr>
						<td><label><input type="checkbox"></label></td>
						<td>${item.shopItemIdx }</td>
						<td>
							<div class="mb5">${item.shopItemManager }</div>
						</td>
						<td>
							<div>${item.shopItemType1 }</div>
						</td>
						<td>
							<div>${item.shopItemDealType }</div>
						</td>
						<td>${item.shopItemTitle }</td>
						<td><span class="tag col_blue f_w">${item.shopItemSaleState }</span></td>
						<td><span class="tag col_green f_w">${item.shopItemPremiumState }</span></td>
						<td>${item.shopItemRegDate }</td>
						<td>
							<div class="set_menu">
								<input name="idx" type="hidden" value=${item.shopItemIdx }>
								<a href="/shop/itemInfo?shopItemIdx=${item.shopItemIdx }" class="btn col_navy f_w">상세보기</a>
								<a href="/shop/shopItemDelete?shopItemIdx=${item.shopItemIdx }" class="btn small col_red f_w">삭제</a>
							</div>
						</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<div id="pageNavi" class="pageNavi">
				<span>${pageNavi}</span>
			</div>
		</div>
		</section>
	</div>
	<footer role="footer" data-include="footer.html"></footer>
</div>
</body>
<script>
	$("button[name=itemDel]").click(function(){
		var data = $(this).siblings('input[name="idx"]').val();
		console.log(data);
		alert($(this).siblings('input[name="idx"]').val());
		if(confirm("해당 매물을 판매중단 하시겠습니까?")){
			$.ajax({
				url:"/shop/shopItemDelete",
				data:{data:data},
				type:'post',
				success : function(){
					alert("판매중단");
				}
			});
		}
		return;
	});
	
	
	$.ajax()
	
</script>
</html>