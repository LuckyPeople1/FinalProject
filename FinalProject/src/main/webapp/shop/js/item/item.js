var item = {
	// 사진첨부
	/**
	 * 이미지 등록버튼
	 * @param e
	 */
	imgUpload : function (e) {

		$(e).siblings().trigger('click');

	},
	/**
	 * 이미지 선택
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
			str += '<a href="#none" class="del_btn" onclick="item.delImg(this, \'M\')">삭제</a>';
		}else{
			str += '<a href="#none" class="del_btn" onclick="item.delImg(this)">삭제</a>';

		}
		$(e).closest('div').append(str);

		// 이미지 추가
		if($('.imgBox').length < 10){
			item.imgAdd();
		}

		// package.imgNumbering();



	},

	/**
	 * 이미지 등록 자동 생성
	 */
	imgAdd : function () {

		var str = "";
		str += "<div class='imgBox'>";
		str += "<input type='file' class='hide' accept='image/*' name='fileImg' id='fileImg' onchange='item.imgSel(this, event)'>";
		str += "<a href='#none' class='upload_btn' onclick='item.imgUpload(this)'></a>";
		str += "</div>";

		// $('.imgList').hide().append(str).fadeIn(1000);
		$(str).appendTo('.imgList').hide().fadeIn(1000)
		
	},

};
