var move	=	{
		
	payment  :	function(userEmail,userName,userPhone,userAddr,addrCode,applyIdx,driverIdx,amount){
		var applyIdx= applyIdx;
		var driverIdx= driverIdx;
		console.log(driverIdx);
		var amount = amount;
		var IMP = window.IMP;
		IMP.init("imp54534548");
		IMP.request_pay({
		    pg : 'inicis',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '이사 결제',
		    amount : '100',
		    buyer_email : userEmail,
		    buyer_name : userName,
		    buyer_tel : userPhone,
		    buyer_addr : userAddr,
		    buyer_postcode : addrCode
		}, function(rsp) {
			var imp_uid = rsp.imp_uid;
		    if ( rsp.success ) {
		    	$.ajax({
		    	    url: "/my/guestMovePayment",
		    	    type: "POST", // POST method
		    	    dataType : 'json', // "Content-Type": "application/json"
		    	    data: {
		    	    	 impUid : imp_uid,
		    	    	 applyIdx : applyIdx,
		    	    	 driverIdx : driverIdx
		    	    }
		    	  }).done(function(data){
		    		  if(data == '1'){
		    			  alert("결제가 완료되었습니다.");
		    			  location.href="/my/"
		    		  }else{
		    			  alert("결제가 실패했습니다.");
		    		  }
		    	  });
		    
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;

		        alert(msg);
		    }
		});
	},
	
	
	paymentCencel : function (impUid,applyIdx) {
		if(confirm("취소하시겠습니까?")){
			$.ajax({
				url: "/my/guestMovePaymentCencel",
				type: "POST",
				data:{
					impUid : impUid,
					applyIdx : applyIdx
				},
				success:function(data){
					if(data == '1'){
						alert("결제 취소 성공");
						location.href="/my/";
					}else{
						alert("결제 취소 실패");
					}
				},
				 error: function(xhr, status, error) {
			         alert(error);
			    }  
			});
		}
		
	}
	
	
}
	