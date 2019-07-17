$('.wrap_content').click(function(){
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