/** ******************************** **/
/************** HDHY 최희수 ***********/
/******* 절대수정금지 필요시 추가 *****/
/** ******************************** **/

// lnb 작동 스크립트

// $('.menu > a').on('click',function () {
//     $(this).parent().removeClass('active');
//     $(this).parent().toggleClass('on');
//     $(this).siblings('.submenu').slideToggle();
// });
// $('.menu ul li a').on('click',function () {
//     $('.menu ul li a').removeClass('active');
//     $(this).addClass('active');
// });


$(document).on('click','.menu > a',function () {
	$(this).parent().removeClass('active');
	$(this).parent().toggleClass('on');
	$(this).siblings('.submenu').slideToggle();
});

$(document).on('click','.menu ul li a',function () {
	$('.menu ul li a').removeClass('active');
	$(this).addClass('active');
});




// input 숫자만 입력

$('.onlyNum').on('keyup change',function() {
	this.value = this.value.replace(/[^0-9]/g,'');
});

// input 콤마

$('.onlyComma').on('keyup change',function() {
	var str = this.value = this.value.replace(/[^0-9]/g,'');
	this.value = str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
});


// input 숫자 + '-' 입력

$('.onlyAc').on('keyup change',function() {
	this.value = this.value.replace(/[^0-9^-]/g,'');
});



// 페이징 클릭 효과

$(document).on('click','.page_wrap .num',function () {
	$('.page_wrap .num').removeClass('active');
	$(this).addClass('active');
});

// 정렬버튼
$(document).on('click','.align_btn',function () {

	var e	=	$(this);
	var etc	=	$(this).parent().siblings().find('.align_btn');

	etc.removeClass('des');		//	다른 정렬 해제
	etc.removeClass('asc');		//	다른 정렬 해제

	if(e.hasClass('des')){	// 내림차순일 때 클릭
		e.removeClass('des');
		e.addClass('asc');
	}else if(e.hasClass('asc')){	// 오름차순일 때 클릭
		e.removeClass('asc');
	}else{	// 미정렬상태에서 클릭
		e.addClass('des');
	}



});


// 모든 체크박스 선택

$('#allChk').on('change',function () {
	if($(this).prop('checked') == true){
		$(this).parents('table').find('input:checkbox').prop('checked',true)

	}else if($(this).prop('checked') == false){
		$(this).parents('table').find('input:checkbox').prop('checked',false)
	}
});

// 검색 초기화

$('.reset').on('click',function () {
	$('.searchGroup input').val('');
	$(".searchGroup select").each(function () {
		$(this).find('option:eq(0)').prop('selected',true);
	});
	$('.searchGroup input:radio[name=state]').removeAttr('checked');
	$('.searchGroup .rbox:first-child input').prop('checked',true);
	$('.searchGroup .cbox input').prop('checked',false);
	$('.searchGroup .cbox:first-child input').prop('checked',true);
});


// 팝업 닫기

// $(document).mouseup(function (e) {
// 	var overlay = $('.content');
// 	var popup = $('.popup');
//
// 	if (!popup.is(e.target) && popup.has(e.target).length === 0){
// 		popup.hide();
// 		overlay.removeClass('overlay');
// 	}
// });

/**
 * 중복서브밋 방지
 *
 * @returns {Boolean}
 */
var doubleSubmitFlag = false;
function doubleSubmitCheck(){
	if(doubleSubmitFlag){
		return doubleSubmitFlag;
	}else{
		doubleSubmitFlag = true;
		return false;
	}
}







function closePop(){
	$('.popup').fadeOut(400);
	$('.contents').removeClass('overlay');
}