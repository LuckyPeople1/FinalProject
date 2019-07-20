<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<nav>
		<%@include file="/WEB-INF/views/shop/page/nav_main.jsp" %>   <!--맨왼쪽  네비 메뉴-->
		<%@include file="/WEB-INF/views/shop/page/nav_item.jsp" %>   <!--맨왼쪽  서브네비 메뉴-->
	</nav>
	<div class="contents">
		<div class="page_header">
			<div class="page_title">아이템 구매</div>
			<div class="page_sub_title"></div>
		</div>
		<div class="section">
			<section class="shopPremium">
				<div class="item">
					<div class="itemImg">
						<img src="/shop/img/item.PNG">
					</div>
					<div class="itemInfo">
						<h1>기본 이용 상품</h1>
						<h1>(구매 시 2개 등록 가능)</h1>
						<br><br>
						<span>다싸 매물상품을 등록하기 위해<br>필수적으로 구매해야 하는 상품<br><br>
							<span>※ 정책 위반 시 상품 이용 제한</span>
						</span>
					</div>
					<div class="btn_box">
						<a href="/shop/premiumItemAdd?userIdx=${sessionScope.user.userIdx }" class="btn col_red">기본 상품 구매</a>
					</div>
				</div>
				<div class="item">
					<div class="itemImg">
						<img src="/shop/img/powerItem.PNG">
					</div>
					<div class="itemInfo">
						<h1>VIP 상품</h1>
						<h1>(구매 시 1개 등록 가능)</h1>
						<br><br>
						<span>다싸 매물상품을 상단에 노출시키기 위해<br>선택적으로 구매할 수 있는 상품<br><br>
							<span>※ 정책 위반 시 상품 이용 제한</span>
						</span>
					</div>
					<div class="btn_box" style="margin: 200px 30px 30px 0;">
						<a href="/shop/powerItemAdd?userIdx=${sessionScope.user.userIdx }" class="btn col_red">VIP 상품 구매</a>
					</div>
				</div>
			</section>			
		</div>	
	</div>
	<%@include file="/WEB-INF/views/shop/common/footer.jsp"%>
</div>

</body>
</html>