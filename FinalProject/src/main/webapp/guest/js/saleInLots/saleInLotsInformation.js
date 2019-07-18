$(document).ready(function(){
	var minIndex= $(".minPrice").length;
	var maxIndex= $(".maxPrice").length;
	var minstr = new Array();
	var maxstr = new Array();
	for(var i=0; i<minIndex; i++){
		minstr.push($(".minPrice").eq(i).html());
		
	}
	for(var i=0; i<maxIndex; i++){
		maxstr.push($(".maxPrice").eq(i).html());
		
	}
	for(var i=0; i<minIndex; i++){
		if(minstr[i].length < 14){
			$(".minPrice").eq(i).html("최저 : "+minstr[i].substring(4,5)+"억 "+minstr[i].substring(5,9)+"만원");
		}else{
			$(".minPrice").eq(i).html("최저 : "+minstr[i].substring(4,6)+"억 "+minstr[i].substring(6,10)+"만원");
		}
	}
	for(var i=0; i<maxIndex; i++){
		if(maxstr[i].length < 14){
			$(".maxPrice").eq(i).html("최저 : "+maxstr[i].substring(4,5)+"억 "+maxstr[i].substring(5,9)+"만원");
		}else{
			$(".maxPrice").eq(i).html("최저 : "+maxstr[i].substring(4,6)+"억 "+maxstr[i].substring(6,10)+"만원");
		}
	}
	
});

$(".searchBox_btn").click(function(){ // 분양 Home 검색 정보
		// 같은거를 클릭했을 때
		if($(this).hasClass('on')){
			// 기존값 사라지게
			$('.searchBox_btn').removeClass('on');
			$('.searchBox_btn').siblings().hide();	
			return false;
		}
		// 기존값 사라지게
		$('.searchBox_btn').removeClass('on');
		$('.searchBox_btn').siblings().hide();
		// on 클래스 추가
		$(this).addClass('on');
		$(this).siblings().show();
		
		
	});
	// 클릭 시 상세효과(분양 전국)
	$(".filterBox_area > li > span").click(function(){
		var str = $(this).html();
		$(this).parents('.searchBox_filter_type').children().eq(0).children('span').html(str);
	});
	
	// 클릭 시 체크 된 체크박스의 내용 모두 표시하기(건물 유형 / 분양단계 / 분양일정/ 공급유형)
	$(".inputCheckbox").click(function(){

		var count = $(this).parent().parent().parent().find('input').length; // 체크박스의 수
		var str = $(this).parents('ul').prev().html();  // 전체일경우 표시될 문자 가져오기
		var result = str.substr(0,4); // 전체일경우 표시될 문자 4번째 까지 문자 자르기
		var items=[];  // 체크된 체크박스 내용 저장할 배열
		if($(this).parent().parent().parent().find('input:checked').length == 0){
			$(this).parent().parent().parent().find('input').eq(0).prop('checked',true);
			$(this).parents('div').eq(0).prev().find('span').html(result);
			
		}else{
			if($(this).next().next().html() != '전체'){ // 전체가 체크 되어있지 않을 경우
				$(this).parent().parent().parent().find('input').eq(0).prop('checked',false); // 전체 체크박스 체크해제
			}
			if($(this).parent().parent().parent().find('input:checked').length == count-1){ // 전체 빼고 나머지가 다 체크되었을 경우
				$(this).parent().parent().parent().find('input').prop('checked',false); // 체크 박스 모두 해제
				$(this).parent().parent().parent().find('input').eq(0).prop('checked',true); // 첫번째 체크박스 체크
				$(this).parents('div').eq(0).prev().find('span').html(result);  // 전체일 경우 자른 문자열 삽입
			}else{ 
				if($(this).next().next().html() == '전체'){ // 체크 된 체크박스가 전체 일경우 전체 체크박스 빼고 나머지 체크해제후 리턴
					$(this).parents('div').eq(0).prev().find('span').html(result); // 전체일 경우 자른 문자열 삽입
					$(this).parent().parent().parent().find('input').prop('checked',false); // 체크 박스 모두 해제
					$(this).parent().parent().parent().find('input').eq(0).prop('checked',true); // 첫번째 체크박스 체크
					
				}else{
					$($(this).parent().parent().parent().find('input:checked')).each(function(){ // 체크된 체크박스 내용 반복문으로 가져오기
						if($(this).next().next().html() != '전체'){ // 가지고온 문자가 전체 일경우는 넣지 않는다.
							items.push($(this).next().next().html());
						}
					});
					var tmp = items.join(',');  // 가져온 체크박스에 내용에 대해 ',' 추가
					$(this).parents('div').eq(0).prev().find('span').html(tmp); // 체크된 체크박스 내용 보여주기
				}
			}
		}
	});
	$(".searchBtn").click(function(){
		var area = $("#area").html();
		var supplyType = $("#supplyType").html();
		var buildType = $("#buildType").html();
		var saleState = $("#saleState").html();
		var supplyType = $("#supplyType").html();
		
		$(".searchBtn").parent().attr("href","/saleInLots/saleInLotsInformation?saleInLotsArea="+area+"&saleInLotsSupplyType="+supplyType+"&saleInLotsBuildType="+buildType+"&saleInLotsState="+saleState);
	})
 