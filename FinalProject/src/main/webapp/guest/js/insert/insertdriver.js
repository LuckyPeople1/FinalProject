

var package = {

	/**
	 * 이미지 등록 검사
	 * @param e
	 * @param event
	 * @param type
	 * @returns {boolean}
	 */
	imgSel: function (e, event, type) {
		var ext = $(e).val().split(".").pop().toLowerCase();

		if (ext.length > 0) {
			if ($.inArray(ext, ["gif", "png", "jpg", "jpeg"]) == -1) {
				alert("gif,png,jpg만 가능합니다.");
				var file = $(e);

				var agent = navigator.userAgent.toLowerCase();
				if ((navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) {
					file.replaceWith(file.clone(true));
				} else {
					file.val("");
				}
				return false;
			}
		}
		$(e).closest('div').find('img').remove();
		$(e).closest('div').find('.del_btn').remove();

		var str = '';
		str += '<img src="' + URL.createObjectURL(event.target.files[0]) + '" alt="이미지">';

		if(type == "M"){
			str += '<a href="#none" class="del_btn" onclick="package.delImg(this, \'M\')">삭제</a>';
		}else{
			str += '<a href="#none" class="del_btn" onclick="package.delImg(this)">삭제</a>';

		}
		$(e).closest('div').append(str);


	},

	/**
	 * 이미지 삭제
	 * @param e
	 * @param type
	 */
	delImg: function (e, type) {
		var name = $(e).closest('div').find('input').prop('name');
		if (name) {
			var num = name.substr(name.length - 1);
			$('#isDel_' + num).val(1);
		}

		if(type == "M"){
			var str = "<input type=\"file\" class=\"hide\" accept=\"image/*\" name=\"compFilename\" id=\"fileImg\" onchange=\"package.imgSel(this, event)\" value=\"\">";
			$(e).closest('div').append(str);
		}



		$(e).closest('div').find('input').val('');
		$(e).closest('div').find('img').remove();
		$(e).remove();
	},


	/**
	 * 이미지 등록버튼
	 * @param e
	 */
	imgUpload : function (e) {

		$(e).siblings().trigger('click');

	}
};

