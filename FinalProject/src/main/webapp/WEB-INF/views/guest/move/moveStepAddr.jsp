<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/guest/common/head.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<%@include file="/WEB-INF/views/guest/common/header.jsp"%>
	<div class="contents">
		<section class="moveStep inner">
			<form id="addrInputFrm">
				<input type="hidden" name="addr1">
				<input type="hidden" name="addr2">
				<input type="hidden" name="latitude">
				<input type="hidden" name="longitude">
				<div class="sectionTitle">주소 입력</div>
				<div class="moveGroup">
					<div class="moveAddrInput">
						<div id="post"></div>
					</div>
					
					<div class="packageBtnBox">
						<a href="/move/step3" class="btn col_darkGrey f_w big">뒤로가기</a>
						<a href="javascript:package.packageSelect()" class="btn col_main f_w big">다음</a>
					</div>
				</div>
			</form>
		</section>
	</div>
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>


</div>
<script src="/guest/js/move/package.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js?autoload=false"></script>
<script src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=yjj9a3ennn"></script>
<script src="https://openapi.map.naver.com/openapi/v3/maps-geocoder.js?ncpClientId=yjj9a3ennn&submodules=geocoder"></script>

<script>

	/**
	 * 우편 API 호출
	 */
	daum.postcode.load(function(){
		new daum.Postcode({
			oncomplete: function(data) {

				$('input[name=addr1]').val(data.address);
				$('input[name=addr2]').val(data.jibunAddress);
				
				// 위도경도 메서드 호출
				getXY(data.jibunAddress);
				
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
				// 예제를 참고하여 다양한 활용법을 확인해 보세요.
			},
			width: "100%"
		}).embed(document.getElementById("post"), {q: ""})
	});

	
	/**
	 *  위도경도 API 및 서버전송 메서드 호출
	 */
	function getXY(address) {
		naver.maps.Service.geocode({address: address}, function (status, response) {

			if (status !== naver.maps.Service.Status.OK) {
				return alert("someThing wrong");
			}

			var result = response.result, // 검색 결과의 컨테이너
				items = result.items; // 검색 결과의 배열

			$('input[name=longitude]').val(items[0].point.x);
			$('input[name=latitude]').val(items[0].point.y);

			
			selectAddr();
		});


	}


	/**
	 * 주소 및 위도경도 서버로 전달
	 */
	function selectAddr() {
		
		var formData	=	$('#addrInputFrm').serialize();
		formData	=	formData + "&addrType=${addrType}";
		
		$.ajax({
			url : "/move/addrSelect",
			data : formData,
			success : function (data) {
				location.href='/move/detail?addrType='+data;
			},error:function () {
				alert("에러 발생")
			}
		})
		
	}
</script>
</body>
</html>