<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>

.customoverlay {
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

.customoverlay:hover {
	background-color: white;
	color: rgb(35, 128, 255);
}

.customoverlay2:hover {
	background-color: white;
	color: rgb(35, 128, 255);
}

.customoverlay2 {
	display: inline-block;
	min-width: 10px;
	height: 10px;
	color: rgb(255, 255, 255);
	font-size: 17px;
	line-height: 24px;
	text-align: center;
	white-space: nowrap;
	background-color: rgb(35, 128, 255);
	position: relative;
	left: 3px;
	z-index: 1;
	padding: 6px 13px 8px;
	border-width: 1px;
	border-style: solid;
	border-color: rgb(25, 119, 247);
	border-image: initial;
	border-radius: 40px;
}

.customoverlay .title {
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
	var markers = [];	
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
	var positions2 = [{
			latlng : new kakao.maps.LatLng(37.27943075229118, 127.01763998406159)
			,name:"가"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(37.55915668706214, 126.92536526611102)
	      ,name:"나"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(35.13854258261161, 129.1014781294671)
	      ,name:"다"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(37.55518388656961, 126.92926237742505)
	      ,name:"라"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(35.20618517638034, 129.07944301057026)
	      ,name:"마"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(37.561110808242056, 126.9831268386891)
	      ,name:"바"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(37.86187129655063, 127.7410250820423)
	      ,name:"사"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(37.47160156778542, 126.62818064142286)
	      ,name:"아"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(35.10233410927457, 129.02611815856181)
	      ,name:"자"
	      },
	      {
	    	  latlng : new kakao.maps.LatLng(35.10215562270429, 129.02579793018205)
	      ,name:"1"
	       
	        },
	        {
	        	latlng : new kakao.maps.LatLng(35.475423012251106, 128.76666923366042)
		      ,name:"2"
	          
	        },
	        {
	        	latlng : new kakao.maps.LatLng(35.93282824693927, 126.95307628834287)
	        ,name:"3"
	        },
	        {
	        	latlng : new kakao.maps.LatLng(36.33884892276137, 127.393666019664)
		      ,name:"4"
	         
	        },
	        {
	        	latlng : new kakao.maps.LatLng(37.520412849636, 126.9742764161581)
		      ,name:"5"
	         
	        },
	        {
	        	latlng : new kakao.maps.LatLng(35.155139675209675, 129.06154773758374)
		      ,name:"6"
	          
	        }]    
	
	
	var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
	var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
        minLevel: 8, // 클러스터 할 최소 지도 레벨
        disableClickZoom: true, // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
        styles: [{ // calculator 각 사이 값 마다 적용될 스타일을 지정한다
            width : '30px', height : '30px',
            background: 'rgb(35, 128, 255)',
            borderRadius: '40px',
            color: 'white',
            textAlign: 'center',
            fontWeight: 'bold',
            lineHeight: '31px'
        },
        {
            width : '40px', height : '40px',
            background: 'rgba(255, 153, 0, .8)',
            borderRadius: '20px',
            color: '#000',
            textAlign: 'center',
            fontWeight: 'bold',
            lineHeight: '41px'
        },
        {
            width : '50px', height : '50px',
            background: 'rgba(255, 51, 204, .8)',
            borderRadius: '25px',
            color: '#000',
            textAlign: 'center',
            fontWeight: 'bold',
            lineHeight: '51px'
        },
        {
            width : '60px', height : '60px',
            background: 'rgba(255, 80, 80, .8)',
            borderRadius: '30px',
            color: '#000',
            textAlign: 'center',
            fontWeight: 'bold',
            lineHeight: '61px'
        }
    ]
    });
	
	
	
	for (var i = 0; i < positions.length; i++){						
 		 var content = '<div class="customoverlay"><input type="hidden" class="btn-why" value="'+positions[i].latlng+'"><span class="title">'+positions[i].name+'</span></div>';	
	    var customOverlay = new kakao.maps.CustomOverlay({
	        map: map,
	        position: positions[i].latlng,
	        content: content	       
	    });
	    
	}	
	
	
	 $(document).ready(function(){
		 
		 for(var i =0;i<positions2.length;i++){
				var content2 = '<div class="customoverlay2"><input class="tt" type="hidden" value="'+positions2[i].latlng+'"<span class="title">'+positions2[i].name+'</span></div>';
				 var customOverlay2= new kakao.maps.CustomOverlay({
				    	map: map,
				    	position: positions2[i].latlng,
				    	content : content2,
				    	image:null
				    })
				 var marker = new kakao.maps.Marker({
					    position: positions2[i].latlng,
					    
					});
				
				
				 clusterer.addMarker(marker);
				 
		 };
		 if(map.getLevel()>8){
			$(".customoverlay").css("display","none");
			$(".customoverlay2").css("display","none");
		 }
		$(".customoverlay").click(function(){
			var strArray=$(this).children().val().split(',');
			var string = strArray[0];
			var string2 = strArray[1];
			var strArray2 = string.split('(');
			var strArray3 = string2.split(')');
			map.panTo(new kakao.maps.LatLng(strArray2[1], strArray3[0]));
			map.setCenter(new kakao.maps.LatLng(strArray2[1], strArray3[0]));							
			map.setLevel(10);
		});
		$(".customoverlay2").click(function(){
			var strArray=$(this).children().val().split(',');
			var string = strArray[0];
			var string2 = strArray[1];
			var strArray2 = string.split('(');
			var strArray3 = string2.split(')');
			map.panTo(new kakao.maps.LatLng(strArray2[1], strArray3[0]));
			map.setCenter(new kakao.maps.LatLng(strArray2[1], strArray3[0]));				
			map.setLevel(map.getLevel()-1);
		});
		kakao.maps.event.addListener(map, 'zoom_changed', function() {		
			console.log(map.getLevel());
			if (map.getLevel() >10) {
				clusterer.clear();
				$(".customoverlay").css("display","block");
				$(".customoverlay2").css("display","none");
			}else {
				$(".customoverlay2").css("display","none");
				$(".customoverlay").css("display","none");
				for(var i =0;i<positions2.length;i++){				 
					 var marker = new kakao.maps.Marker({
						    position: positions2[i].latlng
						});					
					 clusterer.addMarker(marker);
			 };
			}
					
		});	
	});	
	kakao.maps.event.addListener(map,'center_changed',function(){
		
		/* $('.tt').each(function(index) { console.log(index + ': ' + $(this).val()); }); */ 
		if (map.getLevel() >10) {
			clusterer.clear();
				$(".customoverlay").css("display","block");
				$(".customoverlay2").css("display","none");
			}else {
				$(".customoverlay2").css("display","none");
				$(".customoverlay").css("display","none");			
			clusterer.clear();				
			for(var i =0;i<positions2.length;i++){				 
				 var marker = new kakao.maps.Marker({
					    position: positions2[i].latlng
					});				
				 clusterer.addMarker(marker);
		 };
		 marker.setMap(null);
		}		
	});
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