$(document).ready(function(){
	$('.accept_checkBox').click(function(){
        if($(this).is("input:checked")){
        	$(this).siblings().filter(".accept_svg").children().children().eq(0).css("fill","rgb(57, 107, 243)"); 
        }else{
        	$(this).siblings().filter(".accept_svg").children().children().eq(0).css("fill","rgb(255,255,255)");
        }
    });
    $('.accept_checkBox').eq(3).click(function(){
    	if($(this).is("input:checked")){
    		for(var i=0; i<3; i++){
    			$('.accept_checkBox').eq(i).prop("checked",true);
    			$('.accept_checkBox').eq(i).siblings().filter(".accept_svg").children().children().eq(0).css("fill","rgb(57, 107, 243)");
    		}
    	}else{
    		for(var i=0; i<3; i++){
    			$('.accept_checkBox').eq(i).prop("checked",false);
    			$('.accept_checkBox').eq(i).siblings().filter(".accept_svg").children().children().eq(0).css("fill","rgb(255,255,255)");
    		}
    	}
    });
    
    $(".common_insert").click(function(){
    	if($('.accept_checkBox').eq(0).is("input:checked") && $('.accept_checkBox').eq(1).is("input:checked")){
    		location.href="/insert/insert?userType="+1;
    	}else{
    		alert("필수 약관을 체크해주세요");
    	}
	});
    
    $(".driver_insert").click(function(){
    	if($('.accept_checkBox').eq(0).is("input:checked") && $('.accept_checkBox').eq(1).is("input:checked")){
    		console.log("운송기사");
    	}else{
    		alert("필수 약관을 체크해주세요");
    	}
	});
    
    $(".shop_insert").click(function(){
    	if($('.accept_checkBox').eq(0).is("input:checked") && $('.accept_checkBox').eq(1).is("input:checked")){
    		console.log("부동산");
    	}else{
    		alert("필수 약관을 체크해주세요");
    	}
	});
});