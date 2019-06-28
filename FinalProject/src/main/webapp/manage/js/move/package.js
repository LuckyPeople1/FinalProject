
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


		alert(formData);

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