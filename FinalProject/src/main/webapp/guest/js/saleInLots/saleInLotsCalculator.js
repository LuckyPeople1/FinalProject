var index = 0;
var month_day = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
$(".selectMonth").change(function(){
	index= $(".selectMonth option").index($(".selectMonth option:selected"));
	for(var i = 1; i<=month_day[index-1]; i++){
		$("#selectDay").append("<option value='"+i+"'>"+i+"일</option>");
	}
	
});
$(".calcBtn").click(function(){
	var Dday = new Date();
	var selectDay = new Date(parseInt($('.selectYear').val()),parseInt($('.selectMonth').val()),parseInt($('#selectDay').val()));
	var currMonth = 24 * 60 * 60 * 1000 * 30;
	var result =parseInt((Dday-selectDay)/currMonth);

	
	var num1 = 1;
	var num2 = 0;
	var num3 = 0;
	if($('.selectContent').val() != ""){
		num1 = (num1 + $('.selectContent').val()*1)*5;
		$(".completeLi").eq(0).children('p').eq(1).html($('.selectContent').val()+"명");
		$(".completeLi").eq(0).children('p').eq(2).html(num1+"점");
	}else{
		alert("인원을 선택해주세요.");
		return;
	}
	if($('.selectYear').val() != "" && $('.selectMonth').val() != "" && $('.selectDay').val() != ""){
		if(result+2<6){  
			num2 = 1;
			$(".completeLi").eq(1).children('p').eq(1).html("6개월 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=6 && result < 12){  
			num2 = 2;
			$(".completeLi").eq(1).children('p').eq(1).html("6개월 이상 ~ 1년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=12 && result < 24){  
			num2 = 3;
			$(".completeLi").eq(1).children('p').eq(1).html("1년 이상 ~ 2년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=24 && result < 36){  
			num2 = 4;
			$(".completeLi").eq(1).children('p').eq(1).html("2년 이상 ~ 3년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=36 && result < 48){  
			num2 = 5;
			$(".completeLi").eq(1).children('p').eq(1).html("3년 이상 ~ 4년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=48 && result < 60){  
			num2 = 6;
			$(".completeLi").eq(1).children('p').eq(1).html("4년 이상 ~ 5년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=60 && result < 72){  
			num2 = 7;
			$(".completeLi").eq(1).children('p').eq(1).html("5년 이상 ~ 6년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=72 && result < 84){  
			num2 = 9;
			$(".completeLi").eq(1).children('p').eq(1).html("6년 이상 ~ 7년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=84 && result < 96){  
			num2 = 10;
			$(".completeLi").eq(1).children('p').eq(1).html("7년 이상 ~ 8년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=108 && result < 120){  
			num2 = 11;
			$(".completeLi").eq(1).children('p').eq(1).html("8년 이상 ~ 9년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=120 && result < 132){  
			num2 = 12;
			$(".completeLi").eq(1).children('p').eq(1).html("9년 이상 ~ 10년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=132 && result < 144){  
			num2 = 13;
			$(".completeLi").eq(1).children('p').eq(1).html("11년 이상 ~ 12년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=144 && result < 156){  
			num2 = 14;
			$(".completeLi").eq(1).children('p').eq(1).html("12년 이상 ~ 13년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=156 && result < 168){  
			num2 = 15;
			$(".completeLi").eq(1).children('p').eq(1).html("13년 이상 ~ 14년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=168 && result < 180){  
			num2 = 16;
			$(".completeLi").eq(1).children('p').eq(1).html("14년 이상 ~ 15년 미만");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
		if(result>=180){  
			num2 = 17;
			$(".completeLi").eq(1).children('p').eq(1).html("15년 이상");
			$(".completeLi").eq(1).children('p').eq(2).html(num2+"점");
		}
	}else{
		alert("청약통장 가입일을 선택해주세요.");
		return;
	}
	
	
	if($('.selectBox').val() !=""){
		$(".completeLi").eq(2).children('p').eq(1).html($(".selectBox option:selected").html());
		if($(".selectBox option:selected").val()>1){
			console.log(num3);
			num3=($(".selectBox option:selected").val()-1)*2;
			$(".completeLi").eq(2).children('p').eq(2).html(num3+"점");
		}else{
			console.log(num3);
			$(".completeLi").eq(2).children('p').eq(2).html(num3+"점");
		}
	}else{
		alert("무주택 기간을 선택해주세요.");
		return;
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
