<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
html, body {
	width: 100%;
	height: 100%;
	margin: 0;
	padding: 0;
}

.map_wrap {
	position: relative;
	overflow: hidden;
	width: 100%;
	height: 350px;
}

.radius_border {
	border: 1px solid #919191;
	border-radius: 5px;
}

.custom_typecontrol {
	position: absolute;
	top: 10px;
	right: 10px;
	overflow: hidden;
	width: 130px;
	height: 30px;
	margin: 0;
	padding: 0;
	z-index: 1;
	font-size: 12px;
	font-family: 'Malgun Gothic', '맑은 고딕', sans-serif;
}

.custom_typecontrol span {
	display: block;
	width: 65px;
	height: 30px;
	float: left;
	text-align: center;
	line-height: 30px;
	cursor: pointer;
}

.custom_typecontrol .btn {
	background: #fff;
	background: linear-gradient(#fff, #e6e6e6);
}

.custom_typecontrol .btn:hover {
	background: #f5f5f5;
	background: linear-gradient(#f5f5f5, #e3e3e3);
}

.custom_typecontrol .btn:active {
	background: #e6e6e6;
	background: linear-gradient(#e6e6e6, #fff);
}

.custom_typecontrol .selected_btn {
	color: #fff;
	background: #425470;
	background: linear-gradient(#425470, #5b6d8a);
}

.custom_typecontrol .selected_btn:hover {
	color: #fff;
}

.custom_zoomcontrol {
	position: absolute;
	top: 50px;
	right: 10px;
	width: 36px;
	height: 80px;
	overflow: hidden;
	z-index: 1;
	background-color: #f5f5f5;
}

.custom_zoomcontrol span {
	display: block;
	width: 36px;
	height: 40px;
	text-align: center;
	cursor: pointer;
}

.custom_zoomcontrol span img {
	width: 15px;
	height: 15px;
	padding: 12px 0;
	border: none;
}

.custom_zoomcontrol span:first-child {
	border-bottom: 1px solid #bfbfbf;
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p style="text-align: center;">[주소로 위도, 경도 좌표값 얻기]</p>
	<input type="text" id="address" value="" size="70">
	<input type="button" value="좌표값 검색" onclick="addressChk()">
	<div class="map_wrap">
		<div id="map"
			style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
		<!-- 지도 확대, 축소 컨트롤 div 입니다 -->
		<div class="custom_zoomcontrol radius_border">
			<span onclick="zoomIn()"><img
				src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_plus.png"
				alt="확대"></span> <span onclick="zoomOut()"><img
				src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/ico_minus.png"
				alt="축소"></span>
		</div>
	</div>
	<div id="coordXY"></div>
	<p>
		<a href="https://map.kakao.com/link/search/kh 정보교육원">kh 정보교육원 바로	이동</a>
	</p>
	<p>
    <button onclick="hideMarkers()">마커 감추기</button>
    <button onclick="showMarkers()">마커 보이기</button>
</p> 
	<%@include file="/WEB-INF/views/guest/common/footer.jsp"%>

</body>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=172ed9cf73c3423204ded79275b828ba&libraries=services,clusterer,drawing"></script>
<script>

	//주소 입력 후 x,y 좌표로 받는 코드
	var address = document.getElementById("address");
	var coordXY = document.getElementById("coordXY");
	var x, y = "";
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(37.566826005485716, 126.9786567859313),
		level : 9
	//지도 4km 기준 , 서울 특별시
	};

	var map = new kakao.maps.Map(container, options);
	

	// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomIn() {
		map.setLevel(map.getLevel() - 1);
		console.log(map.getLevel());
		
	}

	// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
	function zoomOut() {
		map.setLevel(map.getLevel() + 1);
		console.log(map.getLevel());
			
	}
	function addressChk() {
		var gap = address.value; // 주소검색어
		if (gap == "") {
			alert("주소 검색어를 입력해 주십시오.");
			address.focus();
			return;
		}
		// 주소-좌표 변환 객체를 생성
		var geocoder = new daum.maps.services.Geocoder();
		// 주소로 좌표를 검색
		geocoder.addressSearch(gap, function(result, status) {
			// 정상적으로 검색이 완료됐으면,
			if (status == daum.maps.services.Status.OK) {
				map.setLevel(3);
				var coords = new daum.maps.LatLng(result[0].y, result[0].x);
				y = result[0].x;
				x = result[0].y;
				coordXY.innerHTML = "<br>X좌표 : " + x + "<br><br>Y좌표 : " + y;
				// 이동할 위도 경도 위치를 생성합니다 
				var moveLatLon = new kakao.maps.LatLng(x, y);
				// 지도 중심을 부드럽게 이동시킵니다
				// 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
				map.panTo(moveLatLon);
			}
		});
	}
	// 지도를 클릭했을때 클릭한 위치에 마커를 추가하도록 지도에 클릭이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
	    // 클릭한 위치에 마커를 표시합니다 
	    addMarker(mouseEvent.latLng);             
	});

	// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
	var markers = [];
	// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
	var seaoulMarkers = [];

	// "마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
	function showMarkers() {
	    setMarkers(map)    
	}
	
	// "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
	function hideMarkers() {
	    setMarkers(null);    
	}
	
	var iwContent = '<div style="padding:5px;">Hello World!</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
    
	$(document).ready(function(){
		$.get("/guest/js/bigcity.json", function(data) {
			// 데이터에서 좌표 값을 가지고 마커를 표시합니다
			// 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
			var bigCityMarkers = $(data.positions).map(function(i, position) {				
				return new kakao.maps.Marker({
					position : new kakao.maps.LatLng(position.lat, position.lng)
				});							
			})
			console.log(bigCityMarkers);
		$(document).on("mousewheel",function(e){
            if(map.getLevel()>9){
				console.log(map.getLevel());
				setMarkers(null);
				for(var i=0;i<bigCityMarkers.length;i++){
					bigCityMarkers[i].setMap(map);					  
					
				};			
            }else{
            	setMarkers(map);
            	for(var i=0;i<bigCityMarkers.length;i++){
        			bigCityMarkers[i].setMap(null);
        			
        		};            	
            }           
        });
	});
	
		
	});
	// 마커를 생성하고 지도위에 표시하는 함수입니다
	function addMarker(position) {
	    
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({
	        position: position
	    });

	    // 마커가 지도 위에 표시되도록 설정합니다
	    marker.setMap(map);
	    
	    // 생성된 마커를 배열에 추가합니다
	    markers.push(marker);
	}

	// 배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
	function setMarkers(map) {
	    for (var i = 0; i < markers.length; i++) {
	        markers[i].setMap(map);
	    }            
	}
	
	
</script>
</html>