
var package = {


	/**
	 * 기타옵션 사용 체크박스 이벤트
	 */
	optionToggle: function (e) {

		$(e).parents('.etcCheckBox').find('input[type=checkbox]').prop('checked',false);
		$(e).prop('checked',true);
	},

	/**
	 * 옵션 벨류 추가
	 * @param e
	 */
	optionValueAdd : function(e) {

		var str = "";

		str += "<div class='color_set'>";
		str += "<input class='tbox' name='packageOptionValue'>";
		str += "   <span class='color_preview'></span>";
		str += "   <a href='#none' class='removeBtn' onclick='package.optionValueDelete(this)'>X</a>";
		str += "   </div>";

		$(e).before(str);
	},


	/**
	 * 옵션 벨류 삭제
	 * @param e
	 * @returns {boolean}
	 */
	optionValueDelete : function(e) {

		if($(e).parents('.color_list').find('.color_set').length === 1){
			alert('최소 한개는 입력해야 합니다.');
			return false;
		}

		$(e).parents('.color_set').remove();
	},


	/**
	 * 옵션필드 삭제
	 * @param e
	 */
	optionFieldDelete: function (e) {
		$(e).parents('table').remove();
	},


	/**
	 * 옵션필드 추가
	 * @returns {boolean}
	 */
	optionFieldAdd : function(){

		var count			=	$('.packageOption').length; // 옵션필드 개수
		var addOptionBtn	=	$('.addOptionBtn');			// 옵션버튼

		if(count >= 5){
			alert("5개까지 등록이 가능합니다");
			return false;
		}

		var str	=	"";
		str	+=	"<table class='set_table packageOption'>";
		str	+=	"	<colgroup>";
		str	+=	"		<col width='200'>";
		str	+=	"		<col width='*'>";
		str	+=	"	</colgroup>";
		str	+=	"	<tr>";
		str	+=	"		<th>옵션명</th>";
		str	+=	"		<td>";
		str	+=	"			<input type='text' class='tbox normal' name='packageOptionName'>";
		str +=	"		<a href='#none' class='opDelBtn btn col_darkGrey f_w small' onclick='package.optionFieldDelete(this)'>옵션 삭제</a>";
		str	+=	"		</td>";
		str	+=	"	</tr>";
		str	+=	"	<tr>";
		str	+=	"		<th>옵션값</th>";
		str	+=	"		<td>";
		str	+=	"			<div class='color_list optionValueList'>";
		str	+=	"				<div class='color_set'>";
		str	+=	"					<input class='tbox' name='packageOptionValue'>";
		str	+=	"					<span class='color_preview'></span>";
		str	+=	"					<a href='#none' class='removeBtn' onclick='package.optionValueDelete(this)'>X</a>";
		str	+=	"				</div>";
		str	+=	"				<a href='#none' class='addBtn col_main f_w' onclick='package.optionValueAdd(this)'>추가</a>";
		str	+=	"			</div>";
		str	+=	"		</td>";
		str	+=	"	</tr>";
		str	+=	"	<tr>";
		str	+=	"		<th>기타옵션 사용</th>";
		str	+=	"		<td>";
		str	+=	"			<div class='etcCheckBox'>";
		str	+=	"				<label class='chk'>";
		str	+=	"					<input type='checkbox' name='etcUse' value='1' onchange='package.optionToggle(this)'>";
		str	+=	"					<span>사용</span>";
		str	+=	"				</label>";
		str	+=	"				<label class='chk ml10'>";
		str	+=	"					<input type='checkbox' name='etcUse' value='0' onchange='package.optionToggle(this)' checked>";
		str	+=	"					<span>미사용</span>";
		str	+=	"				</label>";
		str	+=	"			</div>";
		str	+=	"		</td>";
		str	+=	"	</tr>";
		str	+=	"</table>";

		addOptionBtn.before(str);
	},


	/**
	 * 상품 등록
	 */

	packageReg: function () {

		var formData = new FormData($('#regFrm')[0]);
		var count	=	$('.packageOption').length;
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
				packageOptionName	: $('input[name=packageOptionName]').eq(i).val(),
				packageOptionValue : optionValue,
				packageOptionEtc : $('.etcCheckBox').eq(i).find('input[type=checkbox]:checked').val()
			};

			optionList.push(option);
		}

		formData.append('data', JSON.stringify(optionList));

		$.ajax({
			type : "post",
			url : "/manage/move/packageRegProc",
			data : formData,
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			// dataType : "json",
			success : function (data) {

				if(data.trim() === 1){
					alert("등록 완료");
					location.href='/manage/move/packageList';
				}else{
					alert("등록 실패");
				}

			}, error : function () {

				console.log("에러")

			}
		})
	},


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
			var str = "<input type=\"file\" class=\"hide\" accept=\"image/*\" name=\"fileImg\" id=\"fileImg\" onchange=\"goodsReg.imgSel(this, event)\" value=\"\">";
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