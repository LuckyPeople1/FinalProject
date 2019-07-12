$(document).ready(function(){
	$("#guest_login_btn").click(function(){
		var id = $("#id_input").val();
		var pw = $("#pw_input").val();
		console.log($("#id_input").val());
		if(id == ""){
			alert("아이디를 입력해주세요");
			return false;
		}
		if(pw == ""){
			alert("비밀번호를 입력해주세요");
			return false;
		}
	});
	
});