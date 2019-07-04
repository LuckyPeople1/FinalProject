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

	packagePop : function (idx , order) {


		console.log(idx)
		console.log(order)

		$.ajax({
			type: "POST",
			url: "/move/packageOptionPop",
			data: {
				idx : idx
			},
			success:function (data) {

			},
			error:function () {
				alert("에러 발생");
			}
		})


	}


};
