var my	= {

	pwChk	:	function () {

		var pw	=	$('#pwChk');

		if(pw.val() == ""){
			alert("비밀번호를 입력해주세요.");
			return false;
			pw.focus();
		}


		$.ajax({
			type : "post",
			url	: "/my/pwChkProc",
			data : {
				pw : pw.val()
			},
			success : function (data) {

				if(data.trim() == "Y"){
					location.href = '/my/info';
				}else{
					alert("비밀번호를 확인해주세요.")
				}
			},
			error : function () {
				alert("에러")
			}

		});


	}
}