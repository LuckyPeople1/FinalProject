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
				for(var i=0;i<data.list.length;i++){
					mapView;
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
						str+="<span>"+data.list[i].shopItemDealType+" "+data.list[i].shopItemDeposit+"/"+data.list[i].shopItemDealPrice+"</span>";
						str+="</p><p class='styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemFloor1+","+data.list[i].shopItemSize2+", 관리비 "+data.list[i].shopItemManagePrice+" </p>";
						str+="<p class='styled__Text-fi3k4t-7 jBkVAv'>"+data.list[i].shopItemContent+"</p></a></div></li>";
					}
				mapView.append(str);
				}else if(data.list==""){
					str = "";
					str += "<tr>";
					str += "<td colspan=9>일치하는 정보가 없습니다.</td>";
					str += "</tr>";
					mapView.append(str);
				}		
			}
		 }); 
	
	
});