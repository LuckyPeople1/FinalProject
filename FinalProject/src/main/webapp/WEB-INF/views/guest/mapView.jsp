<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
.customoverlay{
	top: -17px;
    box-shadow: rgba(0, 0, 0, 0.2) 0px 3px 10px 0px;
    background-color: rgb(35, 128, 255);
  	cursor: pointer;
    position: relative;
    left: -40%;
    padding: 5px 16px;
    border-width: 2px;
    border-style: solid;
    border-color: rgb(35, 128, 255);
    border-image: initial;
    border-radius: 34px;
}
.customoverlay .title{
	color: rgb(255, 255, 255);
    font-size: 13px;
    font-weight: 500;
    line-height: 20px;
    white-space: nowrap;
    pointer-events: none;
    margin: 0px;
    padding: 0px;
}
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
		<a href="https://map.kakao.com/link/search/kh 정보교육원">kh 정보교육원 바로
			이동</a>
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
	/* kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
		// 클릭한 위치에 마커를 표시합니다 
		addMarker(mouseEvent.latLng);
	});
	 */
	// 지도에 표시된 마커 객체를 가지고 있을 배열입니다
	var markers = [];

	// "마커 보이기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에 표시하는 함수입니다
	function showMarkers() {
		setMarkers(map)
	}

	// "마커 감추기" 버튼을 클릭하면 호출되어 배열에 추가된 마커를 지도에서 삭제하는 함수입니다
	function hideMarkers() {
		setMarkers(null);
	}

	var clusterer = new kakao.maps.MarkerClusterer({
		map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
		averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
		minLevel : 10, // 클러스터 할 최소 지도 레벨
		disableClickZoom : true
	// 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
	});
	
	
	
	var positions = [ {
		latlng : new kakao.maps.LatLng(37.566826005485716, 126.9786567859313),
		name : "서울특별시"
	}, {
		latlng : new kakao.maps.LatLng(37.455925200122365, 126.70526742296053),

		name : "인천광역시"
	}, {
		latlng : new kakao.maps.LatLng(36.35053889930785, 127.38483484675275),

		name : "대전광역시"
	}, {
		latlng : new kakao.maps.LatLng(35.160082060243084, 126.8515729213636),

		name : "광주광역시"
	}, {
		latlng : new kakao.maps.LatLng(37.2749769872529, 127.00892996953034),

		name : "경기도"
	},

	{
		latlng : new kakao.maps.LatLng(36.63535819601533, 127.49145732650358),

		name : "충청북도"
	}, {
		latlng : new kakao.maps.LatLng(36.65882925330591, 126.67277619381971),

		name : "충청남도"
	}, {
		latlng : new kakao.maps.LatLng(36.480068515997694, 127.28919533809494),

		name : "세종특별자치시"
	}, {
		latlng : new kakao.maps.LatLng(36.57599982894105, 128.50579932539114),

		name : "경상북도"
	}, {
		latlng : new kakao.maps.LatLng(35.23777421049519, 128.69189688916975),

		name : "경상남도"
	}, {
		latlng : new kakao.maps.LatLng(35.53948278776425, 129.31146791909438),

		name : "울산광역시"
	}, {
		latlng : new kakao.maps.LatLng(35.179820052333426, 129.07508749216157),

		name : "부산광역시"
	}, {
		latlng : new kakao.maps.LatLng(35.871380264652295, 128.6018054910818),

		name : "대구광역시"
	}, {
		latlng : new kakao.maps.LatLng(35.82019636395981, 127.10897671201185),

		name : "전라북도"
	}, {
		latlng : new kakao.maps.LatLng(35.82019636395981, 127.10897671201185),

		name : "전라북도"
	}, {
		latlng : new kakao.maps.LatLng(34.811823882052146, 126.39226600466537),

		name : "전라남도"
	}, {
		latlng : new kakao.maps.LatLng(37.88532578582254, 127.72982901035823),
		name : "강원도"
	}

	];
	    
	
	// 마커 이미지의 이미지 주소입니다
	var bounds= new kakao.maps.LatLngBounds()
	var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
	for (var i = 0; i < positions.length; i++){
			
		/*  // 마커 이미지의 이미지 크기 입니다
		var imageSize = new kakao.maps.Size(24, 35);

		// 마커 이미지를 생성합니다    
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
		
		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			 // 마커를 표시할 지도
			map: map,
			position : positions[i].latlng, // 마커를 표시할 위치
			title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
			image : markerImage
		// 마커 이미지 
		});  */ 
		
 		 var content = '<div class="customoverlay"><input type="hidden" class="btn-why" value="'+positions[i].latlng+'"><span class="title">'+positions[i].name+'</span></div>'; 
		
	    // 커스텀 오버레이를 생성합니다
	    var customOverlay = new kakao.maps.CustomOverlay({
	        map: map,
	        position: positions[i].latlng,
	        content: content
	       
	    });
	    
	  	/* document.getElementById('btn-greet').addEventListener('click',function(e){
	    	map.setLevel(9);
			map.panTo($(this).children().html());
		});  */
		
		/* kakao.maps.event.addListener(marker, 'click', function(mouseEvent) {
			map.setLevel(9);		   		    
			map.panTo(this.getPosition());		  
		});	 */	
		
		
	}
	$(document).ready(function(){	
		
		map.setLevel(20);
		$(".customoverlay").css("display","none");
		$(".customoverlay").click(function(){
			var strArray=$(this).children().val().split(',');
			var string = strArray[0];
			var string2 = strArray[1];
			var strArray2 = string.split('(');
			var strArray3 = string2.split(')');
			map.panTo(new kakao.maps.LatLng(strArray2[1], strArray3[0]));
			map.setCenter(new kakao.maps.LatLng(strArray2[1], strArray3[0]));
			$(".customoverlay").css("display","none");		
			
			map.setLevel(10);
		});		
		kakao.maps.event.addListener(map, 'zoom_changed', function() {
			
			if (map.getLevel() >10) {
				clusterer.clear();
				$(".customoverlay").css("display","block");
			} else{
				$(".customoverlay").css("display","none");
				clusterer.clear();
				$.get("/guest/js/chicken.json", function(data) {
					// 데이터에서 좌표 값을 가지고 마커를 표시합니다
					// 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
					var chickenmarker = $(data.positions).map(
							function(i, position) {
								return new kakao.maps.Marker({
									position : new kakao.maps.LatLng(position.lat,
											position.lng)
								});
							})
					clusterer.addMarkers(chickenmarker);
				});
				
			}
		});
		map.setLevel(9);
		
		
	});	
	
	/* kakao.maps.event.addListener(map, 'zoom_changed', function() {

		
		$.get("/guest/js/chicken.json", function(data) {
						
			// 데이터에서 좌표 값을 가지고 마커를 표시합니다
			// 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
			var chickenmarker = $(data.positions).map(
					function(i, position) {
						// 커스텀 오버레이를 생성합니다
						for(var i=0;i<$(data.positions).length;i++){
							var content = '<input type="hidden" class="ww" value="'+i+'"><span>'+i+'</span>'; 
							
					    var customOverlay = new kakao.maps.CustomOverlay({
					        map: map,
					        position : new kakao.maps.LatLng(position.lat,
									position.lng),
					        content: content
					       
					    });
						}
			
		});
			
		});   
    	console.log("테스트중");
   
	}); */

	kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {

		// 현재 지도 레벨에서 1레벨 확대한 레벨
		var level = map.getLevel() - 1;

		// 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
		map.setLevel(level, {
			anchor : cluster.getCenter()
		});
	});
</script>
</html>