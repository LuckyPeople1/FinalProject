$('.faqNavi_li_1').click(function(){
	// 기존값 사라지게
	$('.faqNavi_li_1').removeClass('faqon');
	// on 클래스 추가
	$(this).addClass('faqon');
	var type = $(this).html();
	console.log(type);
	$.ajax({
		url:"/saleInLots/saleInLotsFaqAjax",
		data:{type : type},
		success:function(res){
			var html = "";
			for(var i =0;i<res.length;i++){
				html +="<div class='wrap_content'>";
				html +="<h1 class='processTitle'>";
				html +="<div class='title_Label'>";
				html +="<span style='font-size:14px;'>"+res[i].saleInLotsFaqType+"</span>"+res[i].saleInLotsFaqTitle;
				html +="</div>";
				html +="<svg width='14' height='8' viewBox='0 0 14 8'>";
				html +="<path fill-rule='nonzero' d='M7 6.226l5.792-6.01a.69.69 0 0 1 1 0 .755.755 0 0 1 0 1.038l-6.291 6.53a.69.69 0 0 1-1.002 0L.207 1.255a.755.755 0 0 1 0-1.039.69.69 0 0 1 1.001 0L7 6.226z'>";
				html +="</path></svg></h1>";
				html +="<div class='processContentDetail' style='display:none'>";
				html +="<p style='white-space:pre-line;'>"+res[i].saleInLotsFaqContent+"</p></div></div>";
			}
			$('.content_box').html(html);
		}
		
	});
	
});

$(document).on("click",".wrap_content",function(){
	if($(this).children('h1').hasClass('on')){
		// 기존값 사라지게
		$(this).children('h1').removeClass('on');
		$(this).children('div').hide();	
		return false;
	}
	// on 클래스 추가
	$(this).children('h1').addClass('on');
	$(this).children('div').show();
});