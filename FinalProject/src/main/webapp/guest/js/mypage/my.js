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
	
	/*modiInfo : function (userIdx){
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
	}*/
	
	
}

$("#mypage_btn").click(function(){
	var userName = $("#userName").val();
	var userPw = $("#userPw").val();
	var userPwChk = $("#userPwChk").val();
	var proFilename =$("#fileImg").val();
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
	
	/*$.ajax({
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

	});*/
});

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

//이미지 삽입
function img_up(e) {
	console.log("이미지삽입");
	var id = $(e).attr('id');
	console.log(id);
	var order = id.split("_")[1];
	console.log(order);
	$('input[id="img_'+order+'"]').trigger('click');


}


// 이미지 보이기
function img_change(e) {
	readURL(e);
}

function readURL(input) {
	console.log("readURL");
	var id = $(input).attr('id');
	var order = id.split("_")[1];

	if (input.files && input.files[0]) {
		var reader = new FileReader();

		reader.onload = function (e) {
			/*$('.imgShow_'+ order +'').attr('src', e.target.result);*/
			
			$('#my_img').attr('src', e.target.result);
			
		};
		reader.readAsDataURL(input.files[0]);
	}
}


// 이미지 삭제
function img_del(e) {

	console.log("이미지삭제");
	var id = $(e).attr('id');
	var order = id.split("_")[1];

	var str = '<a href="#none" class="imgUp" id="imgUp_'+ order +'" onclick="img_up(this)"></a>';

	$('input[id="img_'+order+'"]').val(''); // 이미지값 초기화

	$(e).parent().append(str); // 이미지 업로드버튼 생성

	$(e).siblings('img').remove(); // 이미지 삭제
	$(e).remove(); // 이미지 삭제버튼 삭제

}

function loadImg(f){
	if(f.files.length !=0 && f.files[0] !=0){//배열형태로 가지고 옴 //파일이 업로드 되면 이라는 조건 배열길이가 0이 아니거나 0번에 크기가 0이아니면
		//JS의 FileReader객체 -> 객체 내부의 result 속성에 파일 컨텐츠가 있음
		var reader = new FileReader();
		reader.readAsDataURL(f.files[0]); //선택한 파일 경로를 읽어옴
		reader.onload=function(e){ //다 읽어 왔으면 실행
			$("#img-view").attr('src', e.target.result);
		}
	}else{
		$("#img-view").attr('src','');
	}
}