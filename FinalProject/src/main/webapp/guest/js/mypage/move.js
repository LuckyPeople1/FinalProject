var move	=	{
		
	payment 	:	function(){
		var applyIdx = "";
		var driverIdx = "";
		
		var IMP = window.IMP;
		IMP.init("imp54534548");
		IMP.request_pay({
		    pg : 'inicis',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '이사 결제',
		    amount : 100,
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울특별시 강남구 삼성동',
		    buyer_postcode : '123-456'
		}, function(rsp) {
			var imp_uid = rsp.imp_uid;
			console.log(str);
		    if ( rsp.success ) {
		    	$.ajax({
		    	    url: "/import",
		    	    type: "get", // POST method
		    	    dataType : 'json', // "Content-Type": "application/json"
		    	    data: {
		    	    	 impUid : str,
		    	    	 applyIdx : applyIdx,
		    	    	 driverIdx : driverIdx
		    	    }
		    	  }).done(function(data){
		    		  alert("결제 완료!!");
		    	  });
		    
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;

		        alert(msg);
		    }
		});
	} 

}