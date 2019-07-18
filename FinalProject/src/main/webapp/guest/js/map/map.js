//아이디, 이름 검색
$("#search_btn").click(function(){
	var searchType = $("#searchType").val();
	var userId = $("#searchWord").val();
	$(".list_table").children().eq(2).html("");
	var listV = $(".list_table").children().eq(2);
	var str= "";
	$.ajax({
		type: "post",
		url: "/userManage/search",
		data: {searchType:searchType, userId:userId, userType:3},
		success: function(data){
			if(data.list != ""){
				for(var i=0; i<data.list.length; i++){
					str += "<tr>";
					str += "<td>"+data.list[i].userIdx+"</td>";
					str += "<td>"+data.list[i].userId+"</td>";
					str += "<td>"+data.list[i].userName+"</td>";
					str += "<td>"+data.list[i].userAddr+"</td>";
					str += "<td>"+data.list[i].userPhone+"</td>";
					str += "<td>"+data.list[i].userEmail+"</td>";
					str += "<td>"+data.list[i].userType+"</td>";
					str += "<td>"+data.list[i].enrollDate+"</td>";
					str += "<td><a href='/userManage/deleteUser?userIdx='"+data.list[i].userIdx+" "+"class='tag col_blue f_w'";
					str += ">회원탈퇴</a></td>";
					str += "</tr>";
					
				}
				listV.append(str);
			}else if(data.list == "") {
				str = "";
				str += "<tr>";
				str += "<td colspan=9>일치하는 정보가 없습니다.</td>";
				str += "</tr>";
				listV.append(str);
			}
		}
	});
});

$("#mapSelect").click(function(){		
	var shopItemAddr1=$("#mapName").val();
	var mapView=$(".fxRDHg");
	mapView.html("");
	var str="";
	var geocoder = new daum.maps.services.Geocoder();
	geocoder.addressSearch(shopItemAddr1, function(result, status) {
		// 정상적으로 검색이 완료됐으면,
		if (status == daum.maps.services.Status.OK) {
			map.setLevel(3);
			var coords = new daum.maps.LatLng(result[0].y, result[0].x);
			y = result[0].x;
			x = result[0].y;
			var moveLatLon = new kakao.maps.LatLng(x, y);				
			map.panTo(moveLatLon);
		}
	});
	 $.ajax({		
			url:"/mapAView",			
			data:{shopItemAddr1:shopItemAddr1},			
			success : function(data){
				console.log("성공");				
			if(data.list!=""){
				var msg="";				
								
				for(var i=0;i<data.list.length;i++){
					console.log(data.list[i].shopItemDealType);
					var hi=data.list[i].shopItemDealType;
					if(hi=="월세"){
						msg=data.list[i].shopItemDeposit+"/"+data.list[i].shopItemDealPrice;
					}else{
						msg=data.list[i].shopItemDealPrice;
					}
					
						str+="<li class='Mmhsh'>";
						str+="<div class='styled__Card-fi3k4t-0 OUJOU'>";
						str+="<div class='styled__BtnWrap-sc-3yrk4m-0 gYMri'>";
						str+="</div>";
						str+="<a target='_blank' rel='noopener noreferrer' class='styled__A-fi3k4t-1 kpKjGs' href='/shop/itemView?shopItemIdx="+data.list[i].shopItemIdx+"'>";								
						str+="<div class='styled__RoomImg-fi3k4t-2 RoomImg bnManG'></div>";
						str+="<div class='styled__BadgeWrap-fi3k4t-3 gAdXIp'>";
						str+="<svg class='styled__Svg-sc-1t9oqsb-0 hhLAzQ' viewBox='0 0 46 18' fill='none'>";
						str+="<rect width='46' height='18' rx='2' fill='#CDAF84'></rect>";
						str+="<path d='M14.1586 9.39199V8.35799H5.30362V9.39199H14.1586ZM13.3336 13.825V12.769H7.67962V12.318H13.0366V9.94199H6.37062V10.954H11.7606V11.416H6.39262V13.825H13.3336ZM13.2456 7.89599V6.88399H11.8816L12.1346 5.75099L10.8916 5.57499L10.6826 6.88399H8.75762L8.60362 5.57499L7.34962 5.75099L7.54762 6.88399H6.18362V7.89599H13.2456ZM13.2676 5.29999V4.28799H6.15062V5.29999H13.2676Z' fill='white'></path>"
						str+="<path d='M19.8212 11.361L19.6892 10.327C18.4132 10.569 16.8732 10.613 15.9602 10.613V8.57799H19.0072V4.90399H14.6622V5.92699H17.6982V7.55499H14.6732V11.669H15.7072C17.3682 11.669 18.7872 11.559 19.8212 11.361ZM22.4172 13.869V4.06799H21.1412V7.69799H19.6562V8.77599H21.1412V13.869H22.4172Z' fill='white'></path>"
						str+="<path d='M32.1938 12.593V11.57H23.3388V12.593H32.1938ZM32.0068 8.57799C30.5108 8.32499 28.4428 7.03799 28.4428 5.31099V4.66199H27.1008V5.31099C27.1008 7.04899 25.1538 8.34699 23.5478 8.57799L24.1528 9.62299C25.5058 9.32599 27.2548 8.28099 27.7608 6.96099C28.3218 8.24799 30.0158 9.27099 31.3578 9.57899L32.0068 8.57799Z' fill='white'></path>"
						str+="<path d='M38.5 5.5V12.5M35 9H42' stroke='white' stroke-width='1.2'></path>";
						str+="</svg>";
						str+="<div class='styled__ConfirmBadge-fi3k4t-4 gekGFB' type='confirm'>";
						str+="<span>확인매물</span>";
						str+="<font>"+data.list[i].shopItemRegDate+"</font></div></div>";
						str+="<p class='styled__RoomType-fi3k4t-8 kCTBqT styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemType1+"</p>";
						str+="<p class='styled__Price-fi3k4t-9 glovZ styled__Text-fi3k4t-7 jBkVAv'>";
						str+="<span>"+data.list[i].shopItemDealType+" "+msg+"</span>";
						str+="</p><p class='styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemFloor1+","+data.list[i].shopItemSize2+", 관리비 "+data.list[i].shopItemManagePrice+" </p>";
						str+="<p class='styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemContent+"</p></a></div></li>";
					}
				mapView.append(str);
				}else if(data.list==""){
					str = "";
					str+="<div class='styled__NoRoom-ityzo6-2 kkLYaw'>";
					str+="<div><svg width='46' height='43' viewBox='0 0 46 43'>";
					str+="<g fill='none' fill-rule='evenodd'>";
					str+="<path stroke='#B3B3B3' stroke-dasharray='1,3'";
					str+="stroke-linecap='round' d='M5.497 16.505V42.5H40.52V16.048'></path>";
					str+="<path fill='#FFF' fill-rule='nonzero' d='M36 20h7.796v16.892H36z'></path>";
					str+="<path stroke='#B3B3B3' stroke-dasharray='1,3'";
					str+="stroke-linecap='round' d='M17.503 42.497v-15h11.019v15'></path>";
					str+="<path fill-rule='nonzero' stroke='#B3B3B3' stroke-dasharray='1,3'"
					str+="stroke-linecap='round' d='M0 20L23 0l23 20M10 15.478L19.855 7'></path>"
					str+="<g fill='#B3B3B3' fill-rule='nonzero'>";
					str+="<path d='M36.11 24.904l8.486 8.485-.707.707-8.485-8.485z'></path>";
					str+="<path d='M35.404 33.39l8.485-8.486.707.707-8.485 8.485z'></path></g></g></svg>";
					str+="<div class='styled__Dots-ityzo6-3 esEURt'>";
					str+="<p></p></div><p>조건에 맞는 방이 없습니다.</p><p>맞춤필터를 해제해보세요.</p></div></div>" ;													
					mapView.append(str);
				}		
			}
		 }); 
	
	
});




// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'idle', function() {
	var geocoder = new kakao.maps.services.Geocoder();
	//현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
	searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	
	function searchAddrFromCoords(coords, callback) {
	    // 좌표로 행정동 주소 정보를 요청합니다
	    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
	}
	function displayCenterInfo(result, status) {
	    if (status === kakao.maps.services.Status.OK) {
	        var infoDiv = document.getElementById('centerAddr');
	        for(var i = 0; i < result.length; i++) {          
	            if (result[i].region_type === 'H') {
	            	infoDiv.innerHTML = result[i].address_name;
	                console.log(result[i].address_name);
	                break;
	            }
	        }
	    }    
	}	
    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
    
});


kakao.maps.event.addListener(map,'mousedown',function(){
		if (map.getLevel() >10) {
		clusterer.clear();
			$(".customoverlay").css("display","block");				
		}else {				
			$(".customoverlay").css("display","none");			
	
	}
		 var infoDiv = document.getElementById('centerAddr');
		    var infoDiv1 = infoDiv.innerHTML.split(' ');
		    var shopItemAddr1 = infoDiv1[0].substring(0,2);
			var mapView=$(".fxRDHg");
			mapView.html("");
			var str="";
			 $.ajax({		
					url:"/mapAView",			
					data:{shopItemAddr1:shopItemAddr1},			
					success : function(data){
						console.log("성공");				
					if(data.list!=""){
						var msg="";				
						
						for(var i=0;i<data.list.length;i++){
							console.log(data.list[i].shopItemDealType);
							var hi=data.list[i].shopItemDealType;
							if(hi=="월세"){
								msg=data.list[i].shopItemDeposit+"/"+data.list[i].shopItemDealPrice;
							}else{
								msg=data.list[i].shopItemDealPrice;
							}							
							
								str+="<li class='Mmhsh'>";
								str+="<div class='styled__Card-fi3k4t-0 OUJOU'>";
								str+="<div class='styled__BtnWrap-sc-3yrk4m-0 gYMri'>";
								str+="</div>";
								str+="<a target='_blank' rel='noopener noreferrer' class='styled__A-fi3k4t-1 kpKjGs' href='/shop/itemView?shopItemIdx="+data.list[i].shopItemIdx+"'>";								
								str+="<div class='styled__RoomImg-fi3k4t-2 RoomImg bnManG'></div>";
								str+="<div class='styled__BadgeWrap-fi3k4t-3 gAdXIp'>";
								str+="<svg class='styled__Svg-sc-1t9oqsb-0 hhLAzQ' viewBox='0 0 46 18' fill='none'>";
								str+="<rect width='46' height='18' rx='2' fill='#CDAF84'></rect>";
								str+="<path d='M14.1586 9.39199V8.35799H5.30362V9.39199H14.1586ZM13.3336 13.825V12.769H7.67962V12.318H13.0366V9.94199H6.37062V10.954H11.7606V11.416H6.39262V13.825H13.3336ZM13.2456 7.89599V6.88399H11.8816L12.1346 5.75099L10.8916 5.57499L10.6826 6.88399H8.75762L8.60362 5.57499L7.34962 5.75099L7.54762 6.88399H6.18362V7.89599H13.2456ZM13.2676 5.29999V4.28799H6.15062V5.29999H13.2676Z' fill='white'></path>"
								str+="<path d='M19.8212 11.361L19.6892 10.327C18.4132 10.569 16.8732 10.613 15.9602 10.613V8.57799H19.0072V4.90399H14.6622V5.92699H17.6982V7.55499H14.6732V11.669H15.7072C17.3682 11.669 18.7872 11.559 19.8212 11.361ZM22.4172 13.869V4.06799H21.1412V7.69799H19.6562V8.77599H21.1412V13.869H22.4172Z' fill='white'></path>"
								str+="<path d='M32.1938 12.593V11.57H23.3388V12.593H32.1938ZM32.0068 8.57799C30.5108 8.32499 28.4428 7.03799 28.4428 5.31099V4.66199H27.1008V5.31099C27.1008 7.04899 25.1538 8.34699 23.5478 8.57799L24.1528 9.62299C25.5058 9.32599 27.2548 8.28099 27.7608 6.96099C28.3218 8.24799 30.0158 9.27099 31.3578 9.57899L32.0068 8.57799Z' fill='white'></path>"
								str+="<path d='M38.5 5.5V12.5M35 9H42' stroke='white' stroke-width='1.2'></path>";
								str+="</svg>";
								str+="<div class='styled__ConfirmBadge-fi3k4t-4 gekGFB' type='confirm'>";
								str+="<span>확인매물</span>";
								str+="<font>"+data.list[i].shopItemRegDate+"</font></div></div>";
								str+="<p class='styled__RoomType-fi3k4t-8 kCTBqT styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemType1+"</p>";
								str+="<p class='styled__Price-fi3k4t-9 glovZ styled__Text-fi3k4t-7 jBkVAv'>";
								str+="<span>"+data.list[i].shopItemDealType+" "+msg+"</span>";
								str+="</p><p class='styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemFloor1+","+data.list[i].shopItemSize2+", 관리비 "+data.list[i].shopItemManagePrice+" </p>";
								str+="<p class='styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemContent+"</p></a></div></li>";
							}
						mapView.append(str);
						}else if(data.list==""){
							str = "";
							str+="<div class='styled__NoRoom-ityzo6-2 kkLYaw'>";
							str+="<div><svg width='46' height='43' viewBox='0 0 46 43'>";
							str+="<g fill='none' fill-rule='evenodd'>";
							str+="<path stroke='#B3B3B3' stroke-dasharray='1,3'";
							str+="stroke-linecap='round' d='M5.497 16.505V42.5H40.52V16.048'></path>";
							str+="<path fill='#FFF' fill-rule='nonzero' d='M36 20h7.796v16.892H36z'></path>";
							str+="<path stroke='#B3B3B3' stroke-dasharray='1,3'";
							str+="stroke-linecap='round' d='M17.503 42.497v-15h11.019v15'></path>";
							str+="<path fill-rule='nonzero' stroke='#B3B3B3' stroke-dasharray='1,3'"
							str+="stroke-linecap='round' d='M0 20L23 0l23 20M10 15.478L19.855 7'></path>"
							str+="<g fill='#B3B3B3' fill-rule='nonzero'>";
							str+="<path d='M36.11 24.904l8.486 8.485-.707.707-8.485-8.485z'></path>";
							str+="<path d='M35.404 33.39l8.485-8.486.707.707-8.485 8.485z'></path></g></g></svg>";
							str+="<div class='styled__Dots-ityzo6-3 esEURt'>";
							str+="<p></p></div><p>조건에 맞는 방이 없습니다.</p><p>맞춤필터를 해제해보세요.</p></div></div>" ;													
							mapView.append(str);
						}		
					}
				 });
});