<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/shop/common/head.jsp" %>   <!--스타일-->    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
					<div class="itemPrice">
						<h1>기본 상품 기한</h1>
						<br>
						<span>구매일로 부터 30일</span>
						<br>
						<br>
						<br>
						<h1>기본 상품 가격</h1>
						<br>
						<span>₩ 20,000원</span>
					</div>
					<div class="btn_box">
						<button name="item"><a class="btn col_red">기본 상품 구매</a></button>
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
					<div class="itemPrice">
						<h1>VIP 상품 기한</h1>
						<br>
						<span>구매일로 부터 30일</span>
						<br>
						<br>
						<br>
						<h1>VIP 상품 가격</h1>
						<br>
						<span>₩ 30,000원</span>
					</div>
					<div class="btn_box">
						<button name="vip"><a class="btn col_red">VIP 상품 구매</a></button>
					</div>
				</div>
			</section>			
		</div>	
	</div>
	<%@include file="/WEB-INF/views/shop/common/footer.jsp"%>
</div>
<script>
$("button[name='item']").click(function(){
	if(confirm("기본 상품을 구매하시겠습니까?")){
		var userIdx=${sessionScope.user.userIdx};
		var IMP = window.IMP;
		IMP.init("imp54534548");
		IMP.request_pay({
		    pg : 'inicis',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '프리미엄 상품 결제',
		    amount : '100',
		    buyer_email : '${sessionScope.user.userEmail }',
		    buyer_name : '${sessionScope.user.userName }',
		    buyer_tel : '${sessionScope.user.userPhone }',
		    buyer_addr : '${sessionScope.user.userAddr }',
		    buyer_postcode : '${sessionScope.user.addrCode }'
		}, function(rsp) {
			var imp_uid = rsp.imp_uid;
		    if ( rsp.success ) {
		    	$.ajax({
		    	    url: "/shop/premiumItemAdd",
		    	    type: "POST", // POST method
		    	    dataType : 'json', // "Content-Type": "application/json"
		    	    data: {
		    	    	 impUid : imp_uid,
		    	    	 userIdx : userIdx
		    	    }
		    	  }).done(function(data){
		    		  if(data == '1'){
		    			  alert("상품 구매가 완료되었습니다.");
		    		  }else{
		    			  alert("상품 구매가 실패했습니다.");
		    		  }
		    	  });
		    
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;

		        alert(msg);
		    }
		}
		)
	}
	return;
});
$("button[name='vip']").click(function(){
	if(confirm("VIP 상품을 구매하시겠습니까?")){
		var userIdx=${sessionScope.user.userIdx};
		var IMP = window.IMP;
		IMP.init("imp54534548");
		IMP.request_pay({
		    pg : 'inicis',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '파워링크 상품 결제',
		    amount : '100',
		    buyer_email : '${sessionScope.user.userEmail}',
		    buyer_name : '${sessionScope.user.userName }',
		    buyer_tel : '${sessionScope.user.userPhone }',
		    buyer_addr : '${sessionScope.user.userAddr }',
		    buyer_postcode : '${sessionScope.user.addrCode }'
		}, function(rsp) {
			var imp_uid = rsp.imp_uid;
		    if ( rsp.success ) {
		    	$.ajax({
		    	    url: "/shop/powerItemAdd",
		    	    type: "POST", // POST method
		    	    dataType : 'json', // "Content-Type": "application/json"
		    	    data: {
		    	    	 impUid : imp_uid,
		    	    	 userIdx : userIdx
		    	    }
		    	  }).done(function(data){
		    		  if(data == '1'){
		    			  alert("상품 구매가 완료되었습니다.");
		    		  }else{
		    			  alert("상품 구매가 실패했습니다.");
		    		  }
		    	  });
		    
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;

		        alert(msg);
		    }
		}
		)
	}
	return;
});
</script>
</body>
</html>