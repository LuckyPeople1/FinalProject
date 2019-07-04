

// 이미지 삽입
function img_up(e) {
	console.log("이미지삽입");
	var id = $(e).attr('id');
	console.log(id);
	var order = id.split("_")[1];
	console.log(order);
	$('input[id="img_'+order+'"]').trigger('click');


}


// 이미지 보이기
function img_change(e) {

	/*var id = $(e).attr('id');
	var order = id.split("_")[1];
	var str = '';

	str += '<img src="../img/no-images.png" alt="이미지" class="imgShow_'+ order +'" id="myapge">';
	str += '<a href="#none" class="imgDel" id="imgDel_'+ order +'" onclick="img_del(this)"></a>';
	console.log("이미지보이기");
	$(e).parent().append(str); // 이미지 및 삭제버튼 추가
	$(e).siblings('.imgUp').remove(); // 이미지 업로드버튼 삭제
*/
	readURL(e);
}

function readURL(input) {
	console.log("readURL");
	var id = $(input).attr('id');
	var order = id.split("_")[1];

	if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function (e) {
			/*$('.imgShow_'+ order +'').attr('src', e.target.result);*/
			
			$('#mypage').attr('src', e.target.result);
			
		};
		reader.readAsDataURL(input.files[0]);
	}
}


// 이미지 삭제
function img_del(e) {

	console.log("이미지삭제");
	var id = $(e).attr('id');
	var order = id.split("_")[1];

	var str = '<a href="#none" class="imgUp" id="imgUp_'+ order +'" onclick="img_up(this)"></a>';

	$('input[id="img_'+order+'"]').val(''); // 이미지값 초기화

	$(e).parent().append(str); // 이미지 업로드버튼 생성

	$(e).siblings('img').remove(); // 이미지 삭제
	$(e).remove(); // 이미지 삭제버튼 삭제

}



/* 키워드 추가 */
$(document).on('click','.keyword_add',function () {

	var str = '';
	str += '<span class="keyword_box">';
	str += '	<span class="keyword text"></span>';
	str += '	<input class="keyword tbox" value="">';
	str += '	<a href="#none" class="keyword_del"></a>';
	str += '</span>';

	if($('.keyword_box .tbox').is(":focus")){

		alert('필드명을 입력해주세요');
		return false;
	}

	$(this).before(str);

	$('.keyword_box:last').find('.keyword.text').hide();
	$('.keyword_box:last').find('.tbox').focus();



});


/* 키워드 입력 시 인풋박스로 전환 */
$(document).on('click','.keyword.text',function () {


	var keyword = $(this).text();
	var temp = '';
	temp += '<input class="keyword tbox" value="'+ keyword +'">';

	$(this).siblings().before(temp);

	$(this).siblings('.tbox').focus();
	$(this).hide();

});


/* 인풋박스 블러 시 자동수정 */
$(document).on('blur','.keyword.tbox',function () {

	var keyword = $(this).val();

	if($(this).val() == ''){

		$(this).focus();
		return false;
	}
	
	

	$(this).siblings('.keyword.text').text(keyword);
	$(this).siblings('.keyword.text').show();
	$(this).remove();

});


/* 키워드 삭제 */
$(document).on('click','.keyword_del',function () {

	$(this).closest('.keyword_box').remove();

});