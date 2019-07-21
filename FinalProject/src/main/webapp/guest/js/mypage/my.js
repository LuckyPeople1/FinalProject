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
					return false;
				}
			},
			error : function () {
				alert("에러")
			}

		});
	},
	
	modiInfo : function (userIdx){
		var userName = $("#userName").val();
		var userPw = $("#userPw").val();
		var userPwChk = $("#userPwChk").val();
		var proFilename =$("#fileImg").val();
		console.log(userIdx);
		console.log(userPw);
		console.log(userPwChk);
		console.log(proFilename);
		
		
		
		if(userName == ""){
			alert("이름을 입력해주세요.");
			return false;
		}else if(userPw == ""){
			alert("비밀번호를 입력해주세요. ");
			return false;
		} else if(userPw != userPwChk){
			alert("비밀번호가 다릅니다.");
			return false;
		}
		
		$.ajax({
			type : "post",
			url	: "/my/modiUser",
			data : {
				userIdx : userIdx,
				userPw : userPw,
				userName : userName,
				proFilename : proFilename
			},
			success : function (data) {

				if(data.trim() == "Y"){
					alert("변경이 완료 되었습니다.");
					location.href = '/my/';
				}else{
					alert("잘못 입력하였습니다.");
					return false;
				}
			},
			error : function () {
				alert("에러");
			}

		});
	}
}

$("#userPw").keyup(function(){
	var pw = $("#userPw").val();
	var reg = /^[A-Za-z0-9_-]{6,18}$/;
	if(reg.test(pw)){
		$("#pwCheck").html("");
	}else{
		$("#pwCheck").html("비밀번호는 영어+숫자 조합 6~18자리");
	}
});

$("#userPwChk").keyup(function(){
	var pwCk = $("#userPwChk").val();
	var pw = $("#userPw").val();
	var reg = /^[A-Za-z0-9_-]{6,18}$/;
	if(pwCk == pw){
		$("#pwChk").html("");
	}else{
		$("#pwChk").html("비밀번호가 일치하지 않습니다.");
	}
});