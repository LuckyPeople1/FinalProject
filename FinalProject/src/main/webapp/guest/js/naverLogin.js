var naverLogin = new naver.LoginWithNaverId({
	clientId: "HOdI40s9RG4Gd_snwCbU",
	callbackUrl: "http://localhost/login/callBack",
	isPopup: false, /* 팝업을 통한 연동처리 여부 */
	loginButton: {color: "green", type: 1, height: 40} /* 로그인 버튼의 타입을 지정 */
});	
/* 설정정보를 초기화하고 연동을 준비 */
naverLogin.init();