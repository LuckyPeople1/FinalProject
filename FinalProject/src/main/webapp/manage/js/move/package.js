
var package = {


	/**
	 * 옵션등록 시 토글
	 */
	optionToggle: function (e) {


		if ($(e).parents('.opUse').find('label').eq(0).find('input').prop("checked")) {
			$(e).parents('.packageOption').find('tbody').show();
		} else {
			$(e).parents('.packageOption').find('tbody').hide();
		}


	},

	packageReg: function () {


		var formData = new FormData($('#regFrm')[0]);

		var optionList	=	new Array();


		for(var i = 0 ; i < 5 ; i ++){

			// 옵션명 담기
			var optionValue	=	"";

			$('.optionValueList').eq(i).find('input[name=packageOptionValue]').each(function (index) {

				if(index >= 1){
					optionValue += ",";
				}

				optionValue += $(this).val()

			});

			var option	=	{
				optionName	: $('input[name=packageOptionName]').eq(i).val(),
				optionValue : optionValue,
				optionEtcUse : $('input[name=etcUse'+(i+1)+']').val()
			};

			optionList.push(option);
		}



		var json	=	new Object();
		json.option	=	optionList;

		formData.append('data', JSON.stringify(json));

		// var jsonString = new Object(JSON.stringify())


		$.ajax({
			type : "post",
			url : "/manage/move/packageRegProc",
			data : formData,
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			// dataType : "json",
			success : function (data) {

				alert(data);

			}, error : function () {

				console.log("에러")

			}
		})
	}
};