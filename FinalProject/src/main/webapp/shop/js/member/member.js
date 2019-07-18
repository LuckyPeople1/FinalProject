var member = {

	/**
	 * 직원등록 로직
	 * @returns {boolean}
	 */
	reg: function () {


		if($('#shopMemberName').val() == ''){
			alert("이름을 입력해주세요");
			$('#shopMemberName').focus();
			return false;
		}

		if($('#shopMemberPhone').val() == ''){
			alert("번호를 입력해주세요");
			$('#shopMemberPhone').focus();
			return false;
		}

		var formData = new FormData($('#regFrm')[0]);

		$.ajax({
			type: "post",
			url: "/shop/member/memberRegProc",
			data: formData,
			enctype: 'multipart/form-data',
			processData: false,
			contentType: false,
			success: function (data) {

				if(data.trim() == "Y"){
					alert("직원 등록이 완료되었습니다.");
					location.href = '/shop/member/';
				}else{
					alert("등록 실패");
				}

			},
			error:function () {

				alert("에러 발생");
			}

		})


	},


	/**
	 * 직원 삭제로직
	 * @param shopMemberIdx
	 */
	remove : function (shopMemberIdx) {

		if(confirm("직원을 삭제하시겠습니까?")){

			$.ajax({
				url: "/shop/member/memberRemoveProc",
				data: {
					shopMemberIdx	:	shopMemberIdx
				},
				success: function (data) {

					if(data.trim() == "Y"){
						alert("직원이 삭제되었습니다.");
						location.reload();
					}else{
						alert("등록 실패");
					}

				},
				error:function () {

					alert("에러 발생");
				}

			})
		}




	}

};