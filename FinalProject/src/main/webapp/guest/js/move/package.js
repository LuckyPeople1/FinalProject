var package = {

	/**
	 * 짐 수량증가 (짐박스는 type으로 분류)
	 * @param event
	 * @param e
	 * @param type
	 */
	packagePlus: function (event, e, type) {

		if (type == "box") {

			var count = $(e).siblings('.qty');
			var countNumber = parseInt(count.text());

			switch (count.text()) {
				case "0" :
					count.text("1~5");
					break;
				case "1~5" :
					count.text("6~10");
					break;
				case "6~10" :
					count.text("11~15");
					break;
				case "11~15" :
					count.text("16~20");
					break;
				case "16~20" :
					count.text("21~30");
					break;
				case "21~30" :
					count.text("31~40");
					break;
				case "31~40" :
					count.text("41~60");
					break;
				case "41~60" :
					count.text("61~80");
					break;
				case "61~80" :
					count.text("81~99");
					break;
				case "81~99" :
					count.text("100+");
					break;
				case "100+" :
					break;
			}


		} else {

			var count = $(e).find('.packageSelect .qty');
			var countNumber = parseInt(count.text());
			countNumber++;
			count.text(countNumber);

			if (countNumber >= 1) {
				$(e).addClass('on');
			}
		}


	},

	/**
	 * 짐 수량감소 (짐박스는 type으로 분류)
	 * @param event
	 * @param e
	 * @param type
	 */
	packageMinus: function (event, e, type) {

		var count = $(e).siblings('.qty');
		var countNumber = parseInt(count.text());

		if (type == "box") {

			switch (count.text()) {
				case "0" :
					break;
				case "1~5" :
					count.text("0");
					break;
				case "6~10" :
					count.text("1~5");
					break;
				case "11~15" :
					count.text("6~10");
					break;
				case "16~20" :
					count.text("11~15");
					break;
				case "21~30" :
					count.text("16~20");
					break;
				case "31~40" :
					count.text("21~30");
					break;
				case "41~60" :
					count.text("31~40");
					break;
				case "61~80" :
					count.text("41~60");
					break;
				case "81~99" :
					count.text("61~80");
					break;
				case "100+" :
					count.text("81~99");
					break;
			}

		} else {
			// 버블링 방지
			event.stopPropagation();

			countNumber--;
			count.text(countNumber);

			if (countNumber === 0) {
				$(e).parents('.packageBtn').removeClass('on');

			}
		}
	},


	/**
	 * 짐 수량 최종선택
	 */
	packageSelect: function () {


		var packageList = new Array();

		$('.packageBtn').each(function () {

			if ($(this).hasClass('on')) {


				var package = {
					packageIdx: $(this).parent().data('idx'),
					packageType: $(this).parent().data('type'),
					packageName: $(this).parent().data('name'),
					packageImgPath: $(this).find('.packageImg').attr('src'),
					packageAmount: $(this).find('.qty').text()
				};

				packageList.push(package);
			}
		});


		// 짐 박스 예외처리
		var box = $('.packageTypeList.zimBox')
		var package = {

			packageIdx: 0,
			packageType: 3,
			packageName: "짐박스",
			packageImgPath: box.find('.packageImg').attr('src'),
			packageAmount: box.find('.qty').text()
		};
		packageList.push(package);


		$.ajax({
			type: "POST",
			url: "/move/packageSelect",
			data: JSON.stringify(packageList),
			contentType: 'application/json',
			success: function (data) {

				if (data.trim() == "Y") {
					location.href = '/move/step2'
				} else {
					alert("등록실패")
				}


			}, error: function () {
				alert("에러 발생")
			}

		})


	},


	/**
	 * 중복되는 짐이 있을 경우 넘버링 처리
	 */
	packageNumberSet: function () {

		var order = 1;
		var count = $('.listBox').length;


		$('.listBox').each(function (index) {

			var prevName = $(this).prev().find('.name').text().trim();
			var nowName = $(this).find('.name').text().trim();

			console.log(index)

			if (prevName != "") {

				if (prevName == nowName) {

					$(this).prev().find('.order').text("(" + (order) + ")");
					order++;

				} else {

					if (order >= 2) {

						$(this).prev().find('.order').text("(" + (order) + ")");
						order = 1;
					}
				}


				// 마지막일 경우 처리
				if (index + 1 == count) {

					if (nowName == prevName) {
						$(this).find('.order').text("(" + (order) + ")");
					}
				}

			}
		});


	},


	/**
	 * 짐 옵션 팝업 열기
	 * @param idx
	 * @param order
	 */
	packagePop: function (idx, e) {

		var popup	=	$('.layerPopup');
		var name	=	$(e).find('.name').text().trim() + $(e).find('.order').text().trim();

		popup.load('/move/packagePop',
			{
				idx: idx,
				name : name
			}
		);

		popup.show();
		$('body').addClass('popup');




		// console.log(idx)
		// console.log(order)
		//
		// $.ajax({
		// 	type: "POST",
		// 	url: "/move/packageOptionPop",
		// 	data: {
		// 		idx : idx
		// 	},
		// 	success:function (data) {
		//
		// 		console.log(data)
		//
		// 	},
		// 	error:function () {
		// 		alert("에러 발생");
		// 	}
		// })


	},

	/**
	 * 짐 옵션팝업 닫기
	 */
	packagePopClose:function () {

		var popup	=	$('.layerPopup');

		popup.hide();
		$('body').removeClass('popup');
	},


	/**
	 * 짐 옵션팝업에서 기타 선택 시 input창 표시
	 * @param e
	 */
	packageEtcOption:function (e) {


		if($(e).parents('.optionBox').find('.etc').prop('checked')){

			$(e).parents('.optionBox').siblings('.optionEtc').show();

		}else{
			$(e).parents('.optionBox').siblings('.optionEtc').hide();

		}
	},

	optionSelect:function () {

		var selName 	=	$('.popupTitle').text();
		var length	=	$('.optionList').length;
		var selectArray	=	new Array();


		// 옵션 배열에 저장
		for(var i = 0 ; i < length ; i++){

			var valueChk	=	$('input[name=option' + (i+1) + ']:checked').val();

			if(valueChk == null){
				alert("옵션을 전부 선택해주세요");
				return false;
			}


			if($('input[name=option' + (i+1) + ']:checked').hasClass('etc')){


				var selectOption	=	{
					optionName	:	$('.optionList').eq(i).find('.optionTitle').text(),
					optionValue :	"기타(" + $('input[name=optionEtc' + (i+1) + ']').val() + ")"
				};
			}else{
				var selectOption	=	{
					optionName	:	$('.optionList').eq(i).find('.optionTitle').text(),
					optionValue :	$('input[name=option' + (i+1) + ']:checked').val()
				};
			}

			selectArray.push(selectOption);
		}


		// 옵션값 적용
		$('.listBox').each(function () {


			var optionName	=	$(this).find('.nameGroup .name').text().trim() + $(this).find('.nameGroup .order').text().trim();


			if(selName	==	optionName){

				var str	= "";

				selectArray.forEach(function (value, index) {

					if(index > 0){
						str += ",　";
					}

					str += "<span>[" + value.optionName + "]";
					str += value.optionValue + "</span>";
				});

				$(this).addClass('on');
				$(this).find('.caption').text('');
				$(this).find('.caption').append(str);

				package.packagePopClose();

			}
		});

	},

	/**
	 * 짐 삭제
	 * @param e
	 * @param event
	 */
	packageRemove : function (e,event) {

		event.stopPropagation();

		$(e).parents('.listBox').remove();
		package.packageNumberSet();
	},


	/**
	 * 짐정보 입력
	 * @returns {boolean}
	 */
	packageFinish : function () {


		var count = 0;

		$('.listBox').each(function (index) {

			if(!$(this).hasClass('on')){
				return false;
			}
			count ++;
		});


		//상세정보 입력 확인인
		if(count != $('.listBox').length){

			alert("짐 정보를 전부 선택해주세요");
			return false;
		}




		$.ajax({
			url		:	"/move/packageFinish",
			data	:	null,
			success	:	function (data) {

				if (data.trim() == "Y") {
					location.href = '/move/step3'
				} else {
					alert("등록실패")
				}
			},
			error	:	function () {
				alert("에러 발생")
			}
		})



	},


	/**
	 * 주소 입력
	 * @param type
	 */
	moveDetailAddr	:	function (type) {

		var formData	=	$('#addrFrm').serialize();
		formData	=	formData + "&addrType=" + type;

		console.log(formData);

		$.ajax({
			url : "/move/addrProc",
			data : formData,
			success:function () {

				location.href='/move/step3';
			},
			error:function () {
				alert("에러 발생")
			}
		});

	},


	/**
	 * 시간/날짜 정보 입력
	 */
	scheduleSelect : function () {


		var formData	=	$("#scheduleFrm").serialize();

		$.ajax({
			url : "/move/scheduleProc",
			data : formData,
			success:function (data) {
				location.href='/move/step3'
			}, error:function () {
				alert("에러 발생")
			}
		})





	},


	/**
	 * 스케쥴 입력 페이지에서 시/분 선택시 합침
	 */
	scheduleTime : function () {


		var hour	=	$('select[name=hour]').val();
		var min		=	$('select[name=min]').val();

		if(min == "0"){
			min	=	"00"
		}

		$('input[name=time]').val(hour +":"+min)

	},

	/**
	 * 짐 및 이사정보 입력 체크
	 * @returns {boolean}
	 */
	infoFinish : function () {

		var count = 0;
		$('.infoGroup').each(function () {

			if($(this).hasClass('on')){
				count ++;
			}
		});

		if(count != $('.infoGroup ').length){

			alert("모든 정보를 입력해주세요");
			return false;
		}

		location.href='/move/apply';

	},


};