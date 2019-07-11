  $(".regCheckBtn").click(function(){
	 var userId = $("#userId").val();
	 $.ajax({
		 url : "/regCheck/idChk",
		 data : {userId:userId},
		 success:function(res){
			 $("#idCheck").html(res);
		 }
	 });
});
	
$("#userPw").keyup(function(){
	var pw = $("#userPw").val();
	console.log(pw);
	var reg = /^[A-Za-z0-9_-]{6,18}$/;
	if(reg.test(pw)){
		$("#pwCheck").html("사용 가능합니다.");
	}else{
		$("#pwCheck").html("비밀번호는 영어+숫자 조합 6~18자리");
	}
});

$("#userEmail").keyup(function(){
	var userEmail = $("#userEmail").val();
	console.log(userEmail)
	var reg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	if(reg.test(userEmail)){
		$("#emailCheck").html("사용 가능합니다.");
	}else{
		$("#emailCheck").html("이메일은 영어+숫자+@");
		return;
	}
});
	
$(document).ready(function(){	
	$("#insertUser").click(function(){
		var id = $("#userId").val();
		var pw = $("#userPw").val();
		var name = $("#userName").val();
		var phone =$("#userPhone").val();
		var email = $("#userEmail").val();
		var addr = $("#insert_detail_addr").val();
		var addr2 = $("#insert_post_code").val(); 
		var idCheck = ($("#idCheck").html() != "");
		
		if(id == "" || (idCheck == false)){
			alert("아이디를 입력해주세요.");
			return false;
		} else if(pw == ""){
			alert("비밀번호를 입력해주세요. ");
			return false;
		} else if(name == ""){
			alert("이름을 입력해주세요. ");
			return false;
		} else if(phone == ""){
			alert("전화번호를 입력해주세요. ");
			return false;
		} else if(email == ""){
			alert("이메일을 입력해주세요");
			return false;
		} else if(addr == ""){
			alert("주소를 입력해주세요");
			return false;
		} else if(addr2 == ""){
			alert("주소를 입력해주세요");
			return false;
		}
	});
}); 