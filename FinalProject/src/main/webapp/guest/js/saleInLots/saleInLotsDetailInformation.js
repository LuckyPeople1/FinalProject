$(document).ready(function(){
	var minstr = $(".minprice").html();
	var maxstr = $(".maxprice").html();
	var minstr2 = $(".minprice2").html();
	var maxstr2 = $(".maxprice2").html();
	var priceOne = $(".priceOne").html();

	if($(".minprice").html().length < 19){
		$(".minprice").html("최저분양가 : "+minstr.substring(9,10)+"억 "+minstr.substring(10,14)+"만원");
	}else{
		$(".minprice").html("최저분양가 : "+minstr.substring(9,10)+"억 "+minstr.substring(10,14)+"만원");
	}
	if($(".maxprice").html().length < 19){
		$(".maxprice").html("최고분양가 : "+maxstr.substring(9,10)+"억 "+maxstr.substring(10,14)+"만원");
	}else{
		$(".maxprice").html("최고분양가 : "+maxstr.substring(9,11)+"억 "+maxstr.substring(11,15)+"만원");
	}
	if(minstr2.length < 10){
		$(".minprice2").html(minstr2.substring(0,1)+"억 "+minstr2.substring(1,5)+"만원");
	}else{
		$(".minprice2").html(minstr2.substring(0,2)+"억 "+minstr2.substring(2,6)+"만원");
	}
	if(maxstr2.length < 10){
		$(".maxprice2").html(maxstr2.substring(0,1)+"억 "+maxstr2.substring(1,5)+"만원");
	}else{
		$(".maxprice2").html(maxstr2.substring(0,2)+"억 "+maxstr2.substring(2,6)+"만원");
	}
	if(priceOne.length < 8){
		$(".priceOne").html(priceOne.substring(0,3)+"만원<span>/3.3m²당</span>");
	}else{
		$(".priceOne").html(priceOne.substring(0,4)+"만원<span>/3.3m²당</span>");
	}
});