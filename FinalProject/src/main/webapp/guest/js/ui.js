/** ******************************** **/
/************** HDHY 최희수 ***********/
/******* 절대수정금지 필요시 추가 *****/
/** ******************************** **/

/**
 * 중복서브밋 방지
 *
 * @returns {Boolean}
 */
var doubleSubmitFlag = false;

function doubleSubmitCheck() {
	if (doubleSubmitFlag) {
		return doubleSubmitFlag;
	} else {
		doubleSubmitFlag = true;
		return false;
	}
}





/* 팝업관리 */

/** 팝업 시 스크롤 고정 **/

// 팝업 내 스크롤이 있을 경우

function scroll_in_disabled() {


	$('.contents').on('scroll touchmove mousewheel DOMMouseScroll', function (event) {
		event.preventDefault();
		event.stopPropagation();
		return false;
	});

	$('.popup').off('scroll touchmove mousewheel DOMMouseScroll');  // 팝업 스크롤은 해제

}

function scroll_in_able() {
	$('.contents').off('scroll touchmove mousewheel DOMMouseScroll');
}

// 팝업 내 스크롤이 없을 경우


function scroll_disabled() {
	$('body').on('scroll touchmove mousewheel DOMMouseScroll', function (event) {
		event.preventDefault();
		event.stopPropagation();
		return false;
	});
}

function scroll_able() {
	$('body').off('scroll touchmove mousewheel DOMMouseScroll');
}

function scroll_set() {
	$('body').css('overflow', 'auto');
	$('html').css('overflow', 'auto');

}

// 팝업 끄기
function closePop() {
	$('.popup').fadeOut(400);
	$('.contents').removeClass('overlay');
	scroll_in_able();
	scroll_able();
}



