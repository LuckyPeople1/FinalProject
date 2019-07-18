var index = 0;
var month_day = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
$(".selectMonth").focusout(function(){
	index= $(".selectMonth option").index($(".selectMonth option:selected"));
	console.log(index);
	console.log(month_day[index-1]);
	for(var i = 1; i<=month_day[index-1]; i++){
		$("#selectDay").append("<option value='"+i+"'>"+i+"일</option>");
	}
	
});
$(".calcBtn").click(function(){
	var Dday = new Date();
	var selectDay = new Date(2015,1,1);
	var currMonth = 24 * 60 * 60 * 1000 * 30;
	var result = parseInt((Dday-selectDay)/currMonth);
	console.log(result);
	
	var num1 = 1;
	num1 = (num1 + $('.selectContent').val()*1)*5;
	var num2 = 0;
	var num3 = 0;
	$(".completeLi").eq(0).children('p').eq(1).html($('.selectContent').val()+"명");
	$(".completeLi").eq(0).children('p').eq(2).html(num1+"점");
	$(".completeLi").eq(1).children('p').eq(1).html("청약 통장 가입날짜 계산");
	$(".completeLi").eq(2).children('p').eq(1).html($(".selectBox option:selected").html());
	if($(".selectBox option:selected").val()>1){
		console.log(num3);
		num3=($(".selectBox option:selected").val()-1)*2;
		$(".completeLi").eq(2).children('p').eq(2).html(num3+"점");
	}else{
		console.log(num3);
		$(".completeLi").eq(2).children('p').eq(2).html(num3+"점");
	}
	var sum = num1 + num2 + num3;
	$(".completeLi").eq(3).children('p').eq(2).html(sum+"점");
	$(".wrap_content").hide();
	$(".wrap_content2").show();
});
$(".reBtn").click(function(){
	$(".wrap_content2").hide();
	$(".wrap_content").show();
});
