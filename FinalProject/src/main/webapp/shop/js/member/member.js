var member = {

	reg: function () {

		console.log("asdf")

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


	}

};