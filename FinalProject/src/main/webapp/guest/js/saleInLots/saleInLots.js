
$(document).ready(function(){

	$(".eCZDhi").click(function(){

		// 기존값 사라지게
		$('.fCHdqd').removeClass('on');
		$('.fCHdqd').siblings().hide();


		// 현재값 표시
		$(this).find('.fCHdqd').addClass('on');
		$(this).find('.fCHdqd').siblings().show();



		//
		// if(!$(this).children('div').hasClass("fCHdqd")){
		// 	$(this).children('.hnpyID').attr('class','fCHdqd');
		// 	$(this).children('div').next().css('display','none');
		// }else{
		// 	$(this).children('.fCHdqd').attr('class','hnpyID');
		// 	$(this).children('div').next().css('display','block');
		// }
		
	});

	// 클릭 시 상세효과
	$(".GqmLz > li > span").click(function(){
		var str = $(this).html();
		$(this).parents('.eCZDhi').children().eq(0).children('span').html(str);
	})
});
