
$(document).ready(function(){
	$(".eCZDhi").click(function(){
		if(!$(this).children('div').hasClass("fCHdqd")){
			$(this).children('.hnpyID').attr('class','fCHdqd');
			$(this).children('div').next().css('display','none');
		}else{
			$(this).children('.fCHdqd').attr('class','hnpyID');
			$(this).children('div').next().css('display','block');
		}
		
	});
	$(".GqmLz > li > span").click(function(){
		var str = $(this).html();
		$(this).parents('.eCZDhi').children().eq(0).children('span').html(str);
	})
});
