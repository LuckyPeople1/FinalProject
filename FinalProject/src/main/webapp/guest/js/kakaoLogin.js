src="//developers.kakao.com/sdk/js/kakao.min.js";
//<![CDATA[
// 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('a44556c982b2f8c93ffc9c39eef6c4bb');  //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
// 카카오 로그인 버튼을 생성합니다.
Kakao.Auth.createLoginButton({
	container: '#kakao-login-btn',
	success: function(authObj) {
		Kakao.API.request({
			url:'/v1/user/me',
			success: function(res){
				location.href="/kakaoLogin.do?userId="+res.id; 
        	},
        	fail: function(error){
        		alert(JSON.stringify(error));
        	}
        })
    },
    fail: function(err) {
    	alert(JSON.stringify(err));
    }
});
//]]>