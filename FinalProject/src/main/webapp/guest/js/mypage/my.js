var my	= {

	pwChk	:	function (userIdx) {

		var userPw	=	$('#pwChk').val();
		if(userPw == ""){
			alert("비밀번호를 입력해주세요.");
			return false;
			userPw.focus();
		}

		$.ajax({
			type : "post",
			url	: "/my/pwChkProc",
			data : {
				userPw : userPw,
				userIdx : userIdx
			},
			success : function (data) {

				if(data.trim() == "Y"){
					location.href = '/my/info';
				}else{
					alert("비밀번호를 확인해주세요.");
				}
			},
			error : function () {
				alert("에러")
			}

		});
	}

	/*info : function(){
		var userName = $("#userName").val();
		var userPw = $("#userPw").val();
		var userPwChk = $("#userPwChk").val();
		var compFilename =$("#fileImg").val();
		
		
		
		if(userName == ""){
			alert("이름을 입력해주세요.");
			return false;
		}else if(userPw == ""){
			alert("비밀번호를 입력해주세요. ");
			return false;
		} else if(userPw.equals(userPwChk)){
			alert("비밀번호가 다릅니다.");
			return false;
		}
	}*/
}