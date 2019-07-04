
function DriverupdateClick(){
	console.log("펑션확인");
	if($('#userName').val()==""){
		alert("이름은 필수 항목입니다. 반드시 입력해 주세요");
		return false;
	}
	if($('#userEmail').val()==""){
		alert("이메일은 필수 항목입니다. 반드시 입력해 주세요");
		return false;
	}
	if($('#userIntroduce').val()==""){
		alert("자기소개는 필수 항목입니다. 반드시 입력해 주세요");
		return false;
	}
	if($('#userCar').val()==""){
		alert("이름은 필수 항목입니다. 반드시 입력해 주세요");
		return false;
	}
	if($('#userPhone').val()==""){
		alert("핸드폰은 필수 항목입니다. 반드시 입력해 주세요");
		return false;
	}
	

		
		if($('#mypage').attr('src')==""){
			alert("사진은 필수 항목입니다. 반드시 입력해 주세요");
			return false;
		
	}
	
	var formData= new FormData($('#driverMypageUpdate')[0]);
  	$.ajax({
      url : "/driver/mypageUpdate",
      data : formData,
      type : "post",
      enctype: 'multipart/form-data',
      processData: false,
      contentType: false,
      success : function(data){
        alert("수정 성공");
        location.href="/driver/";
      },
      error : function(){
          alert("수정 실패");
          location.href="/driver/";
      }
  });
	
}