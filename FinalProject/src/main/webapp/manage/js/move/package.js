
console.log("asdf")

var package	= {


	/**
	 * 옵션등록 시 토글
	 */
	optionToggle	:	function (e) {


		if ($(e).parents('.opUse').find('label').eq(0).find('input').prop("checked")) {
			$(e).parents('.packageOption').find('tbody').show();
		} else {
			$(e).parents('.packageOption').find('tbody').hide();
		}



	},

	packageReg : function () {





		$.ajax({
			enctype: 'multipart/form-data',
			url:"/manage/move/packageRegProc",
		})
	}
};