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
						<th>담당자</th>
						<td colspan="3">
							<input class="tbox w_6p" name="shopItemManager" value="">
						</td>
					</tr>
				</table>
				<div class="set_form_search">
					<a href="javascript:$('#shopItemSearch').submit()" class="btn col_blue f_w">검색</a>
					<a href="/shop/item" class="btn col_grey line ml5">전체 목록</a>
				</div>
				</form>
			</div>
			<div class="list_form">
				<div>
					<div>매물 등록 가능 개수 : ${itemCount }개</div>
					<br>
					<div>VIP 적용 가능 개수 : ${powerCount}개</div>
				</div>
				<div class="table_list_btn">
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
						<td><a href="/shop/itemView?shopItemIdx=${item.shopItemIdx }">${item.shopItemIdx }</a></td>
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
						<td>
						<c:if test="${item.shopItemSaleState eq '판매중단'}">
							<span class="tag col_darkGrey f_w">${item.shopItemSaleState }</span>
						</c:if>
						<c:if test="${item.shopItemSaleState eq '판매중'}">
							<span class="tag col_blue f_w">${item.shopItemSaleState }</span>
						</c:if>
						<c:if test="${item.shopItemSaleState eq '판매완료'}">
							<span class="tag col_darkGrey f_w">${item.shopItemSaleState }</span>
						</c:if>
						</td>
						<td>
							<c:if test="${item.shopItemPremiumState eq '0'}">
								<span class="tag col_darkGrey f_w">비적용</span>
							</c:if>
							<c:if test="${item.shopItemPremiumState eq '1'}">
								<span class="tag col_green f_w">적용</span>
							</c:if>
						</td>
						<td>${item.shopItemRegDate }</td>
						<td>
							<div class="set_menu">
								<input name="userIdx" type="hidden" value=${sessionScope.user.userIdx }>
								<input name="shopItemIdx" type="hidden" value=${item.shopItemIdx }>
								<a href="/shop/itemInfo?shopItemIdx=${item.shopItemIdx }" class="btn col_navy f_w">수정하기</a>
								<c:if test="${item.shopItemSaleState eq '판매중단'}">
									<button type="button" class="btn small col_blue f_w" name="addItem" value=${item.shopItemIdx }>판매진행</button>
								</c:if>
								<c:if test="${item.shopItemSaleState eq '판매중'}">
									<button type="button" class="btn small col_blue f_w" name="itemSuc" value=${item.shopItemIdx }>판매완료</button>
									<button type="button" class="btn small col_darkGrey f_w" name="stopItem" value=${item.shopItemIdx }>판매중단</button>
								</c:if>
								<c:if test="${item.shopItemPremiumState eq '0' && item.shopItemSaleState eq '판매중'}">
									<button type="button" class="btn small col_green f_w" name="powerIng" value=${item.shopItemIdx }>아이템 적용</button>
								</c:if>
								<c:if test="${item.shopItemPremiumState eq '1' && item.shopItemSaleState eq '판매중'}">
									<button type="button" class="btn small col_darkGrey f_w" name="powerEnd" value=${item.shopItemIdx }>아이템 해제</button>
								</c:if>
								<button type="button" class="btn small col_red f_w" name="delItem" value=${item.shopItemIdx }>삭제</button>
							</div>
						</td>
					</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="page_group clearFix">
				<ul class="page_box">${pageNavi}
				</ul>
			</div>
		</div>
		</section>
	</div>
	
</div>
<script>
	
	$("button[name=powerIng]").click(function(){
		var idx = $(this).val();
		var userIdx = $("input[name='userIdx']").val();
		if(confirm("아이템을 적용하시겠습니까?")){
			location.href="/shop/powerIng?shopItemIdx="+idx+"&userIdx="+userIdx;
		}
		return;
	});
	
	$("button[name=powerEnd]").click(function(){
		var idx = $(this).val();
		var userIdx = $("input[name='userIdx']").val();
		if(confirm("아이템을 해제하시겠습니까?")){
			location.href="/shop/powerEnd?shopItemIdx="+idx+"&userIdx="+userIdx;
		}
		return;
	});
	
	$("button[name='delItem']").click(function(){
		var idx = $(this).val();
		var userIdx = $("input[name='userIdx']").val();
		if(confirm("정말 삭제하시겠습니까?")){
			location.href="/shop/shopItemDelete?shopItemIdx="+idx+"&userIdx="+userIdx;
		}
		return;
	});
	$("button[name='stopItem']").click(function(){
		var idx = $(this).val();
		var userIdx = $("input[name='userIdx']").val();
		if(confirm("판매중단으로 변경하시겠습니까?")){
			location.href="/shop/shopItemStop?shopItemIdx="+idx+"&userIdx="+userIdx;
		}
		return;
	});
	$("button[name='addItem']").click(function(){
		var idx = $(this).val();
		var userIdx = $("input[name='userIdx']").val();
		if(confirm("판매중으로 변경하시겠습니까?")){
			location.href="/shop/shopItemIng?shopItemIdx="+idx+"&userIdx="+userIdx;
		}
		return;
	})
	$("button[name='itemSuc']").click(function(){
		var idx=$(this).val();
		var userIdx = $("input[name='userIdx']").val();
		if(confirm("판매완료로 변경하시겠습니까?")){
			location.href="/shop/shopItemSuc?shopItemIdx="+idx+"&userIdx="+userIdx;
		}
		return;
	});
</script>
</body>
</html>